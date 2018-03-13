/**
 ****************************************************************************************
 *
 * @file csi.c
 *
 * @brief CSI module.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2171 $
 *
 ****************************************************************************************
 */


/**
 ****************************************************************************************
 * @addtogroup CSI
 * @{
 ****************************************************************************************
 */
#if defined(_USE_REL_RL78)
#pragma interrupt INTP3    sdir_isr
#pragma interrupt INTDMA2  dma2_isr
#pragma interrupt INTDMA3  dma3_isr
#pragma interrupt INTCSI20 csi20_isr
#elif defined(_USE_CCRL_RL78)
#include "iodefine.h"
#pragma interrupt sdir_isr  (vect=INTP3)
#pragma interrupt dma2_isr  (vect=INTDMA2)
#pragma interrupt dma3_isr  (vect=INTDMA3)
#pragma interrupt csi20_isr (vect=INTCSI20)
#endif

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "arch.h"
#include "port.h"
#include "serial.h"
#include "csi.h"
#include "timer.h"
#include "rscip_uart.h"

#if ((!SERIAL_C_4WIRE && !SERIAL_C_5WIRE) || \
     ( SERIAL_C_4WIRE &&  SERIAL_C_5WIRE) || \
     SERIAL_U_2WIRE || SERIAL_U_3WIRE || SERIAL_U_DIV_2WIRE)
 #error "Serial setting in serial.h is wrong."
#endif

/*
 * DEFINES
 ****************************************************************************************
 */
///serial direction port operation
#define CSI_SDIR_EI()   write1_sfrbit(PMK3, IRQ_ENABLE)
#define CSI_SDIR_DI()   write1_sfrbit(PMK3, IRQ_DISABLE)
#define CSI_SDIR_CLR()  write1_sfrbit(PIF3, IRQ_CLEAR)
#define CSI_SDIR_VAL()  read1_sfr(P3, 0)
#define CSI_SDIR_INIT()                         \
{                                               \
    write1_sfr(PM3, 0, PORT_INPUT);             \
    write1_sfr(PU3, 0, PORT_PULLUP);            \
}
#define CSI_SDIR_DETECT_FALL()                  \
{                                               \
    write1_sfr(EGP0, 3, 0);                     \
    write1_sfr(EGN0, 3, 1);                     \
}
#define CSI_SDIR_DETECT_RISE()                  \
{                                               \
    write1_sfr(EGP0, 3, 1);                     \
    write1_sfr(EGN0, 3, 0);                     \
}

#if SERIAL_C_5WIRE
 #define CSI_WAKEUP_INIT()                      \
 {                                              \
    write1_sfr(PM2, 3, PORT_OUTPUT);            \
 }
 #define CSI_WAKEUP_LOW()   write1_sfr(P2, 3, 0)
 #define CSI_WAKEUP_HIGH()  write1_sfr(P2, 3, 1)
#endif

///transmit acknowledge code from Master
#define CSI_ACK_BYTE  (0x88)

/// dma max transferring size
#define DMA_MAX_SIZE    (1024U)

/// SDR00 SFR address , only last byte of the address is needed for DMA transfer
#define CSI20_SIO20 0x48

///DMA start sources - IFC[3:0]
#define DMA_SRC_INTCSI20 (0xA)

#define IRQ_SET     1

#define MAX_TX_TO_COUNT (4)

enum
{
    T_IDLE      = 0,
    T_SUSPENDED = 1,
    T_WAKEUP    = 2,
    T_ACTIVE    = 3
};

enum
{
    R_IDLE      = 0,
    R_ACK       = 1,
    R_ACTIVE    = 2
};

/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */
static uint8_t  tx_stat, rx_stat;
static uint16_t tx_addr, rx_addr;
static uint16_t tx_size, rx_size;
#if SERIAL_C_4WIRE
static uint8_t *tx_ptr;
#endif
static uint8_t to_cnt;

/*
 * FUNCTION DEFINITIONS
 ****************************************************************************************
 */
/**
 *****************************************************************************************
 * @brief Static function for setting port pin modes for the CSI20 pins.
 *****************************************************************************************
 */
static void csi_port_init(void)
{
    /* SCK(Serial Clock Output) pin */
    write1_sfr(PM1 , 5, PORT_OUTPUT);
    write1_sfr(POM1, 5, PORT_OUTPUT_NORMAL);
    write1_sfr(P1  , 5, PORT_LATCH);

    /* SI(Serial Data Input) Pin */
    write1_sfr(PM1 , 4, PORT_INPUT);
    write1_sfr(PIM1, 4, PORT_INPUT_NORMAL);

    /* SO(Serial Data Output) pin */
    write1_sfr(PM1 , 3, PORT_OUTPUT);
    write1_sfr(POM1, 3, PORT_OUTPUT_NORMAL);
    write1_sfr(P1  , 3, PORT_LATCH);

    /* SDIR(Serial Direction) pin */
    CSI_SDIR_INIT();

    #if SERIAL_C_5WIRE
    /* WAKEUP pin */
    CSI_WAKEUP_INIT();
    CSI_WAKEUP_HIGH();
    #endif
}

/**
 ****************************************************************************************
 * @brief Initialize a serial direction port.
 *****************************************************************************************
 */
static void sdir_init(void)
{
    /* detect falling edge */
    CSI_SDIR_DETECT_FALL();

    /* clear flag and unmask the interrupt */
    CSI_SDIR_CLR();
    CSI_SDIR_EI();
}

/**
 ****************************************************************************************
 * @brief Initialize a DMA2 channel for transmission from CSI data register to RAM.
 *****************************************************************************************
 */
static void dma2_init(void)
{
    /* enable DMA2 */
    write1_sfrbit(DEN2, 1);

    /* set SFR address */
    write_sfr(DSA2, CSI20_SIO20);

    /* Transfer mode */
    write1_sfrbit(DRS2, DMA_SFR_TO_RAM);
    write1_sfrbit(DS2, DMA_UNIT_8B);
    write1_sfrbit(DWAIT2, DMA_TF_NO_PEND);

    /* Trigger setting */
    write_sfr(DMC2, (uint8_t)(read_sfr(DMC2) | (DMA_SRC_INTCSI20 & 0x0FU)));

    /* mask the interrupt */
    write1_sfrbit(DMAMK2, IRQ_DISABLE);
}

/**
 ****************************************************************************************
 * @brief Initialize a DMA3 channel for transmission from RAM to CSI data register.
 *****************************************************************************************
 */
static void dma3_init(void)
{
    /* enable DMA3 */
    write1_sfrbit(DEN3, 1);

    /* set SFR address */
    write_sfr(DSA3, CSI20_SIO20);

    /* Transfer mode */
    write1_sfrbit(DRS3, DMA_RAM_TO_SFR);
    write1_sfrbit(DS3, DMA_UNIT_8B);
    write1_sfrbit(DWAIT3, DMA_TF_NO_PEND);

    /* Trigger setting */
    write_sfr(DMC3, (uint8_t)(read_sfr(DMC3) | (DMA_SRC_INTCSI20 & 0x0FU)));

    /* clear flag and unmask the interrupt */
    write1_sfrbit(DMAIF3, IRQ_CLEAR);
    write1_sfrbit(DMAMK3, IRQ_ENABLE);
}

/**
 ****************************************************************************************
 * @brief Initialize CSI communication.(including initializing DMA and interrupt)
 *****************************************************************************************
 */
BOOL serial_init(void)
{
    /* stop csi */
    write1_sfr(ST1L, 0, 1);

    /* PER0 peripheral enable register - release SAU0 from reset and start clock supply */
    write1_sfr2bit(SAU1EN, 1);

    /* must wait 4 clocks after PER0 setting */
    __no_operation();
    __no_operation();
    __no_operation();
    __no_operation();

    #if (1)
    /* MCK = fclk/8 = 1MHz */
    write_sfr(SPS1L, (uint8_t)((read_sfr(SPS1L) | 0x30)));

    /* baudrate 4800bps(when MCK = 1MHz) */
    write_sfrp(SDR10, (uint16_t)0xCE00U);
    #else
    /* MCK = fclk/4 = 2MHz */
    write_sfr(SPS1L, (uint8_t)((read_sfr(SPS1L) | 0x20)));

    /* baudrate 38400bps(when MCK = 2MHz) */
    write_sfrp(SDR10, (uint16_t)0x3200U);
    #endif

    /* set operation mode : Master CSI */
    write_sfrp(SMR10, 0x8020U);

    /* Serial communication operation settings: Initialize to Tx */
    write_sfrp(SCR10, 0x8007U);


    /* Serial output */
    write_sfrp(SO1, read_sfrp(SO1) & (~0x0001U));
    write_sfrp(SO1, read_sfrp(SO1) | 0x0100U);

    /* enables output by serial communication operation */
    write_sfr(SOE1L, (uint8_t)(read_sfr(SOE1L) | 0x01));

    /* set port and port mode */
    csi_port_init();

    /* mask CSI20 interrupt */
    write1_sfrbit(CSIMK20, IRQ_DISABLE);

    /* initialize DMA2, and set DMA transfer setting */
    dma2_init();

    /* initialize DMA3, and set DMA transfer setting */
    dma3_init();

    /* initialize SDIR */
    sdir_init();

    /* initialize transmit/receive status */
    tx_stat = T_IDLE;
    rx_stat = R_IDLE;

    /* initialize target address */
    tx_addr = 0;
    rx_addr = 0;

    /* start csi */
    write1_sfr(SS1L, 0, 1);

    return( TRUE );
}

void serial_exit( void )
{
}

/**
 *****************************************************************************************
 * @brief Set CSI to RX only mode.
 *****************************************************************************************
 */
#define csi_set_rx()                            \
{                                               \
    /* stop csi */                              \
    write1_sfr(ST1L, 0, 1);                     \
                                                \
    /* change to rx only */                     \
    write_sfrp(SCR10, 0x4007);                  \
                                                \
    /* enable dma2_isr only */                  \
    write1_sfrbit(DMAMK3, IRQ_DISABLE);         \
    write1_sfrbit(DMAIF2, IRQ_CLEAR);           \
    write1_sfrbit(DMAMK2, IRQ_ENABLE);          \
                                                \
    /* start csi */                             \
    write1_sfr(SS1L, 0, 1);                     \
}


/**
 *****************************************************************************************
 * @brief Set CSI to TX only mode.
 *****************************************************************************************
 */
#define csi_set_tx()                            \
{                                               \
    /* stop csi */                              \
    write1_sfr(ST1L, 0, 1);                     \
                                                \
    /* change to tx only */                     \
    write_sfrp(SCR10, 0x8007);                  \
                                                \
    /* enable dma3_isr only */                  \
    write1_sfrbit(DMAMK2, IRQ_DISABLE);         \
    write1_sfrbit(DMAIF3, IRQ_CLEAR);           \
    write1_sfrbit(DMAMK3, IRQ_ENABLE);          \
                                                \
    /* start csi */                             \
    write1_sfr(SS1L, 0, 1);                     \
}

/**
 *****************************************************************************************
 * @brief Set DMA2,DMA3 for receiving csi.
 *****************************************************************************************
 */
#define csi_dma_rx(dest_addr, size)             \
{                                               \
    /* stop DMA2,DMA3 */                        \
    write1_sfrbit(DST2, 0);                     \
    write1_sfrbit(DST3, 0);                     \
                                                \
    /* set RAM address (destination) */         \
    write_sfrp(DRA2, (dest_addr));              \
    write_sfrp(DRA3, (dest_addr));              \
                                                \
    /* set transfer size */                     \
    write_sfrp(DBC2, (size));                   \
    write_sfrp(DBC3, (size));                   \
                                                \
    /* start DMA2,DMA3 */                       \
    write1_sfrbit(DST2, 1);                     \
    write1_sfrbit(DST3, 1);                     \
}

/**
 *****************************************************************************************
 * @brief Set DMA3 for transferring csi.
 *****************************************************************************************
 */
#define csi_dma_tx(src_addr, size)              \
{                                               \
    /* stop DMA3 */                             \
    write1_sfrbit(DST3, 0);                     \
                                                \
    /* set RAM address (source) */              \
    write_sfrp(DRA3, (src_addr));               \
                                                \
    /* set transfer size */                     \
    write_sfrp(DBC3, (size));                   \
                                                \
    /* start DMA3 transfer */                   \
    write1_sfrbit(DST3, 1);                     \
}

/**
 *****************************************************************************************
 * @brief Request to Transmit
 *****************************************************************************************
 */
static void csi_tx_request(void)
{
    #if SERIAL_C_5WIRE
    /* wait pulse time */
    CSI_WAKEUP_HIGH();
    __no_operation();
    __no_operation();

    /* wakeup the slave */
    CSI_WAKEUP_LOW();

    /* start to check timeout */
    RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)csi_tx_timeout, 0x0002);
    #else /* SERIAL_C_4WIRE */
    /* transmit first byte to the slave */
    write_sfr(SIO20, *tx_ptr);

    CSI_SDIR_DI();
    write1_sfrbit(CSIMK20, IRQ_ENABLE);
    #endif
}

/**
 *****************************************************************************************
 * @brief Start to Transmit
 *****************************************************************************************
 */
static void csi_tx_active(void)
{
    #if SERIAL_C_5WIRE
    CSI_WAKEUP_HIGH();
    #endif

    /* start DMA3 transfer */
    #if SERIAL_C_5WIRE
    csi_dma_tx(tx_addr, tx_size);
    #else /* SERIAL_C_4WIRE */
    csi_dma_tx(tx_addr + 1, tx_size - 1);
    #endif
    write1_sfrbit(STG3, 1);
}

/**
 ****************************************************************************************
 * @brief re-request to tx after timeout timer was expired
 *****************************************************************************************
 */
static void csi_tx_timeout(void)
{
    /* stop to check timeout */
    RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);

    if(tx_stat == T_WAKEUP)
    {
        to_cnt++;
        if(to_cnt < MAX_TX_TO_COUNT)
        {
            csi_tx_request();

            /* restart to check timeout */
            RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)csi_tx_timeout, 0x0002);
        }
        /* timeout discontinued */
        else
        {
            tx_stat = T_IDLE;

            /* Inform the end of transmission */
            RSCIP_Uart_Tx_Done();
        }
    }
}

/**
 ****************************************************************************************
 * @brief Start CSI receiving data.
 *        When finished receiving data, calls callback function.
 *
 * @param[in,out] bufptr  destination pointer, start of the space where data is transfered to.
 * @param[in] size        Transfer size, received data size byte by CSI.
 *****************************************************************************************
 */
void serial_read(uint8_t *bufptr, const uint16_t size)
{
    /* store the argument parameter */
    rx_addr = (uint16_t)bufptr;
    rx_size = (size == DMA_MAX_SIZE) ? (0) : (size);
}

/**
 ****************************************************************************************
 * @brief Start CSI transferring data.
 *        When finished transferring data, calls callback function.
 *
 * @param[in] bufptr  source pointer, start of the space where data is transfered from.
 * @param[in] size    Transfer size, transferred data size byte by CSI.
 *****************************************************************************************
 */
void serial_write(const uint8_t *bufptr, const uint16_t size)
{
    /* store the argument */
    #if SERIAL_C_4WIRE
    tx_ptr  = (uint8_t *)bufptr;
    #endif
    tx_addr = (uint16_t)bufptr;
    #if SERIAL_C_5WIRE
    tx_size = (size == DMA_MAX_SIZE) ? (0) : (size);
    #else /* SERIAL_C_4WIRE */
    tx_size = size;
    #endif

    GLOBAL_INT_DISABLE();

    to_cnt = 0;

    if(tx_stat == T_IDLE)
    {
        if(rx_stat == R_IDLE)
        {
            tx_stat = T_WAKEUP;

            /* request to transmit */
            csi_tx_request();

            /* start to check timeout */
            RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)csi_tx_timeout, 0x0002);

            /* <when snooze, expect for csi20_isr> */
            /* <when wakeup, expect for sdir_isr> */
        }
        else
        {
            /* transmitting is suspended */
            tx_stat = T_SUSPENDED;
        }
    }

    GLOBAL_INT_RESTORE();
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for Serial Direction Signal.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTP3_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for sdir_isr"
#endif
__IRQ void sdir_isr(void)
{
    /* wait pulse time */
    __no_operation();
    __no_operation();
    __no_operation();
    __no_operation();

    if((rx_stat == R_IDLE) && (CSI_SDIR_VAL() != 0))
    {
        /* informed "request_to_transmit" from slave */
        if(tx_stat == T_IDLE)
        {
            rx_stat = R_ACK;

            /* transmit ACK byte to the slave */
            write_sfr(SIO20, CSI_ACK_BYTE);
            CSI_SDIR_DI();
            write1_sfrbit(CSIMK20, IRQ_ENABLE);

            /* <expect for csi20_isr> */
        }
        /* informed "ready_to_receive" from slave */
        else if(tx_stat == T_WAKEUP)
        {
            tx_stat = T_ACTIVE;

            /* start to transmit */
            csi_tx_active();
            CSI_SDIR_DI();

            RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);

            /* <expect for dma3_isr> */
        }
    }
    else if(rx_stat == R_ACK)
    {
        /* informed "ready_to_transmit" from slave */
        if(CSI_SDIR_VAL() == 0)
        {
            rx_stat = R_ACTIVE;

            /* start DMA3 for CSI20 receiving trigger */
            write1_sfrbit(STG3, 1);

            /* switch to detect rising edge */
            CSI_SDIR_DETECT_RISE();
            CSI_SDIR_DI();

            /* <expect for dma2_isr> */
        }
    }
    /* informed "finish_to_transmit" from slave */
    else if((rx_stat == R_ACTIVE) && (CSI_SDIR_VAL() != 0))
    {
        rx_stat = R_IDLE;

        /* switch to detect falling edge */
        CSI_SDIR_DETECT_FALL();

        if(tx_stat == T_SUSPENDED)
        {
            tx_stat = T_WAKEUP;

            /* request to transmit */
            csi_tx_request();

            /* start to check timeout */
            RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)csi_tx_timeout, 0x0002);

            /* <expect for sdir_isr> */
        }
    }
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for when finished DMA2 tranfer.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTDMA2_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for dma2_isr"
#endif
__IRQ void dma2_isr(void)
{
    /* clear INTCSI20 interrupt flag */
    write1_sfrbit(CSIIF20, IRQ_CLEAR);

    /* inform that CSI20 finished to receive */
    RSCIP_Uart_Rx_Done();

    /* continue to receive following byte(s) */
    if(RSCIP_Uart_Rx_Complete() == false)
    {
        /* ready DMA2 for Rx */
        csi_dma_rx(rx_addr, rx_size);

        /* start DMA3 for CSI20 receiving trigger */
        write1_sfrbit(STG3, 1);

        /* <expect for dma2_isr> */
    }
    /* finish to receive */
    else
    {
        /* change Rx->Tx */
        csi_set_tx();
        CSI_SDIR_EI();

        /* <expect for sdir_isr> */
    }
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for when finished DMA3 tranfer.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTDMA3_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for dma3_isr"
#endif
__IRQ void dma3_isr(void)
{
    /* check if CSI20 is still going or waiting to start */
    if((read_sfrp(SSR10L) & 0x60) != 0)
    {
        /* clear INTCSI20 interrupt flag */
        write1_sfrbit(CSIIF20, IRQ_CLEAR);

        /* check if CSI20 just finished */
        if((read_sfrp(SSR10L) & 0x60) == 0)
        {
            /* set INTCSI02 interrupt flag */
            write1_sfrbit(CSIIF20, IRQ_SET);
        }
    }

    write1_sfrbit(CSIMK20, IRQ_ENABLE);

    /* <expect for csi20_isr> */
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for finished to transmit.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTCSI20_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for csi20_isr"
#endif
__IRQ void csi20_isr(void)
{
    /* transmit_First_byte is finished */
    if(tx_stat == T_WAKEUP)
    {
        write1_sfrbit(CSIMK20, IRQ_DISABLE);
        CSI_SDIR_EI();

        /* start to check timeout */
        RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)csi_tx_timeout, 0x0002);

        /* <expect for sdir_isr> */
    }
    /* transmit_Data is finished */
    else if(tx_stat == T_ACTIVE)
    {
        tx_stat = T_IDLE;

        /* inform that UART0 finished to transmit */
        RSCIP_Uart_Tx_Done();

        write1_sfrbit(CSIMK20, IRQ_DISABLE);
        CSI_SDIR_EI();
    }
    /* transimit_ACK_byte is finished */
    else
    {
        if(rx_stat == R_ACK)
        {
            /* change Tx->Rx */
            csi_set_rx();

            /* ready DMA2 for Rx */
            csi_dma_rx(rx_addr, rx_size);

            write1_sfrbit(CSIMK20, IRQ_DISABLE);
            CSI_SDIR_EI();

            /* <expect for sdir_isr> */
        }
    }
}

/// @} module

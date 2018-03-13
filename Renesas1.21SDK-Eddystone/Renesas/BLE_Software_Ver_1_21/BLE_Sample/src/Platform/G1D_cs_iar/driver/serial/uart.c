/**
 ****************************************************************************************
 *
 * @file		uart.c
 *
 * @brief UART Driver - UART0 of RL78 RENESAS 16b MCU.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2153 $
 *
 ****************************************************************************************
 */

/**
 ****************************************************************************************
 * @addtogroup UART
 *
 * @{
 ****************************************************************************************
 */
#if defined(_USE_REL_RL78)
#pragma interrupt INTDMA2 dma2_isr NOBANK
#pragma interrupt INTDMA3 dma3_isr NOBANK
#pragma interrupt INTST1  st1_isr
#pragma interrupt INTSRE1 sre1_isr
#elif defined(_USE_CCRL_RL78)
#include "iodefine.h"
#pragma interrupt dma2_isr (vect=INTDMA2)
#pragma interrupt dma3_isr (vect=INTDMA3)
#pragma interrupt st1_isr  (vect=INTST1)
#pragma interrupt sre1_isr (vect=INTSRE1)
#endif

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "arch.h"
#include "port.h"
#include "serial.h"
#include "uart.h"
#include "timer.h"
#include "rscip_uart.h"

#if ((!SERIAL_U_2WIRE && !SERIAL_U_3WIRE && !SERIAL_U_DIV_2WIRE) || \
     (SERIAL_U_2WIRE && SERIAL_U_3WIRE    )                      || \
     (SERIAL_U_2WIRE && SERIAL_U_DIV_2WIRE)                      || \
     (SERIAL_U_3WIRE && SERIAL_U_DIV_2WIRE)                      || \
      SERIAL_C_4WIRE                                             || \
      SERIAL_C_5WIRE                                              )
 #error "Serial setting in serial.h is wrong."
#endif

/*
 * DEFINES
 ****************************************************************************************
 */
///transmit request code
#define UART_REQ_BYTE  (0xC0)

///transmit acknowledge code
#define UART_ACK_BYTE  (0x88)

/* SDR02 SFR address , only last byte of the address is needed for DMA transfer */
#define UART_TXD1 0x44

/* SDR03 SFR address , only last byte of the address is needed for DMA transfer */
#define UART_RXD1 0x46

#define IRQ_SET     1

#define MAX_TX_TO_COUNT (4)

enum
{
    T_IDLE       = 0,
    T_REQUESTING = 1,
    T_RCV_BF_REQUESTED  = 2,
    T_REQUESTED  = 3,
    T_ACTIVE     = 4
};

#if SERIAL_U_3WIRE
 #define UART_WAKEUP_INIT()                     \
 {                                              \
    write1_sfr(PM2, 3, PORT_OUTPUT);            \
 }
 #define UART_WAKEUP_LOW()   write1_sfr(P2, 3, 0)
 #define UART_WAKEUP_HIGH()  write1_sfr(P2, 3, 1)
#endif

/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */
static uint8_t tx_stat;
#if (SERIAL_U_3WIRE || SERIAL_U_DIV_2WIRE)
static uint16_t rx_addr;
static uint16_t rx_size;
static uint8_t *rx_ptr;
static uint8_t to_cnt;
#endif

/*
 * FUNCTION DEFINITIONS
 ****************************************************************************************
 */

/**
 ****************************************************************************************
 * @brief Initializes the port bits, port mode register and pull-ups or latches for UART
 *        pins.
 *****************************************************************************************
 */
static void uart_port_init(void)
{
    /* TX pin */
    /* set digital in/out mode */
    write1_sfr(PMC0, 2, 0);
    /* set pin as output */
    write1_sfr(PM0, 2, PORT_OUTPUT);
    /* set output mode */
    write1_sfr(POM0, 2, PORT_OUTPUT_NORMAL);
    /* latch necessary for output pin */
    write1_sfr(P0, 2, PORT_LATCH);

    /* RX pin */
    /* set digital in/out mode */
    write1_sfr(PMC0, 3, 0);
    /* Use of noise filter of RXD1 pin */
    write_sfr(NFEN0, (uint8_t)0x04);
    /* set pin as input */
    write1_sfr(PM0, 3, PORT_INPUT);
    /* set input mode */
    write1_sfr(PIM0, 3, PORT_INPUT_NORMAL);
    /* set pull-up */
    write1_sfr(PU0, 3, PORT_PULLUP);

    #if SERIAL_U_3WIRE
    /* WAKEUP pin */
    UART_WAKEUP_INIT();
    UART_WAKEUP_HIGH();
    #endif
}

/**
 ****************************************************************************************
 * @brief Initialize a DMA2 channel for transmission from UART1 data register to RAM.
 *****************************************************************************************
 */
static void dma2_init(void)
{
    /* enable DMA2 */
    write1_sfrbit(DEN2, 1);

    /* set SFR address (UART data registers) */
    write_sfr(DSA2, UART_RXD1);

    /* Transfer mode */
    write1_sfrbit(DRS2, DMA_SFR_TO_RAM);
    write1_sfrbit(DS2, DMA_UNIT_8B);
    write1_sfrbit(DWAIT2, DMA_TF_NO_PEND);

    /* Trigger setting- set to UART1 RX interrupt */
    write_sfr(DMC2, (uint8_t)(read_sfr(DMC2) | (DMA_SRC_INTSR1 & 0x0FU)));

    /* clear flag and unmask the interrupt */
    write1_sfrbit(DMAIF2, IRQ_CLEAR);
    write1_sfrbit(DMAMK2, IRQ_ENABLE);
}

/**
 ****************************************************************************************
 * @brief Initialize a DMA3 channel for transmission from RAM to UART1 data register.
 *****************************************************************************************
 */
static void dma3_init(void)
{
    /* enable DMA3 */
    write1_sfrbit(DEN3, 1);

    /* set SFR address (UART data register) */
    write_sfr(DSA3, UART_TXD1);

    /* Transfer mode */
    write1_sfrbit(DRS3, DMA_RAM_TO_SFR);
    write1_sfrbit(DS3, DMA_UNIT_8B);
    write1_sfrbit(DWAIT3, DMA_TF_NO_PEND);

    /* Trigger setting - UART1 TX transfer end interrupt */
    write_sfr(DMC3, (uint8_t)(read_sfr(DMC3) | (DMA_SRC_INTST1 & 0x0FU)));

    /* clear flag and unmask the interrupt */
    write1_sfrbit(DMAIF3, IRQ_CLEAR);
    write1_sfrbit(DMAMK3, IRQ_ENABLE);
}

/**
 ****************************************************************************************
 * @brief Initialize UART communication.(including initializing DMA and interrupt) 
 *        If argument value is wrong, this function does nothing.
 *****************************************************************************************
 */
BOOL serial_init(void)
{
    /* stop Serial Array Unit 0 channel 2 and 3 operation */
    write_sfr(ST0L, (uint8_t)((read_sfr(ST0L) | 0x0C)));

    /* PER0 peripheral enable register - release SAU0 from reset and start clock supply */
    write1_sfr2bit(SAU0EN, 1);

    /* must wait 4 clocks after PER0 setting */
    __no_operation();
    __no_operation();
    __no_operation();
    __no_operation();

    #if (1)
    /* MCK = fclk/8 = 1MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x30)));

    /* baudrate 4800bps(when MCK = 1MHz) */
    write_sfrp(SDR02, (uint16_t)0xCE00U);
    write_sfrp(SDR03, (uint16_t)0xCE00U);
    #else

	#if defined(CLK_HOCO_8MHZ)
    /* MCK = fclk/4 = 2MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x20)));
	#elif defined(CLK_HOCO_16MHZ)
    /* MCK = fclk/8 = 2MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x30)));
	#elif defined(CLK_HOCO_32MHZ)
    /* MCK = fclk/16 = 2MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x40)));
    #endif

    /* baudrate 250000bps(when MCK = 2MHz) */
    write_sfrp(SDR02, (uint16_t)0x0600U);
    write_sfrp(SDR03, (uint16_t)0x0600U);

    #endif

    /* set operation mode for TX channel 2 of SAU0 */
    write_sfrp(SMR02, (uint16_t)0x8022U);

    /* set operation mode for RX channel 3 of SAU0 */
    write_sfrp(SMR03, (uint16_t)0x8122U);

    /* Serial communication operation settings */
    write_sfrp(SCR02, (uint16_t)0x8097U);
    write_sfrp(SCR03, (uint16_t)0x4497U);

    /* Serial output level */
    write_sfr(SOL0L, 0x00);

    /* Serial output - initial value to be output */
    write_sfrp(SO0, (uint16_t)0x0f0fU);

    /* Serial output enable for the targeted channel */
    write_sfr(SOE0L, (uint8_t)((read_sfr(SOE0L) | 0x04)));

    /* set port and port mode */
    uart_port_init();

    /* clear all error */
    write_sfr(SIR03L, 0x07);

    /* clear interrupt request flags */
    write1_sfrbit(SREIF1, IRQ_CLEAR);

    /* mask interrupts */
    write1_sfrbit(STMK1, IRQ_DISABLE);
    write1_sfrbit(SRMK1, IRQ_DISABLE);
    write1_sfrbit(SREMK1, IRQ_ENABLE);

    /* initialize DMA2, and set DMA transfer setting */
    dma2_init();

    /* initialize DMA3, and set DMA transfer setting */
    dma3_init();

    tx_stat = T_IDLE;

    /* start Serial Array Unit 0 channel 2 and 3 operation */
    write_sfr(SS0L, (uint8_t)((read_sfr(SS0L) | 0x0C)));

    return( TRUE );
}

void serial_exit( void )
{
}

/**
 ****************************************************************************************
 * @brief Program a DMA transfer about destination address and size.
 *
 * @param[in] dest_addr 16b RAM address, start of the space where data is transfered to.
 * @param[in] size      Transfer size, to set to DMA Byte Count register which counts down.
 *****************************************************************************************
 */
#define uart_dma_rx(dest_addr, size)    \
{                                       \
    /* stop DMA2 */                     \
    write1_sfrbit(DST2, 0);             \
                                        \
    /* set RAM address */               \
    write_sfrp(DRA2, (dest_addr));      \
                                        \
    /* set transfer size */             \
    write_sfrp(DBC2, (size));           \
                                        \
    /* start DMA2 */                    \
    write1_sfrbit(DST2, 1);             \
}

/**
 ****************************************************************************************
 * @brief Program a DMA transfer about source address and size.
 *
 * @param[in] src_addr  16b RAM address, start of the space where data is transfered from.
 * @param[in] size      Transfer size, to set to DMA Byte Count register which counts down.
 *****************************************************************************************
 */
#define uart_dma_tx(src_addr, size)     \
{                                       \
    /* stop DMA3 */                     \
    write1_sfrbit(DST3, 0);             \
                                        \
    /* set RAM address */               \
    write_sfrp(DRA3, (src_addr));       \
                                        \
    /* set transfer size */             \
    write_sfrp(DBC3, (size));           \
}

/**
 ****************************************************************************************
 * @brief Start UART receiving data.
 * When finished receiving data, calls callback function.
 *
 * @param[in,out] bufptr  destination pointer, start of the space where data is transfered to.
 * @param[in] size        Transfer size, receive data size byte by UART.
 *****************************************************************************************
 */
void serial_read(uint8_t *bufptr, const uint16_t size)
{
    #if (SERIAL_U_3WIRE || SERIAL_U_DIV_2WIRE)
    /* store the argument parameter */
    rx_addr = (uint16_t)bufptr;
    rx_size = size;
    rx_ptr = bufptr;
    #endif

    /* start DMA2 */
    uart_dma_rx((uint16_t)bufptr, size);
}

#if (SERIAL_U_3WIRE || SERIAL_U_DIV_2WIRE)
/**
 ****************************************************************************************
 * @brief re-request to tx after timeout timer was expired
 *****************************************************************************************
 */
static void uart_tx_timeout(void)
{
    /* stop to check timeout */
    RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);

    if(tx_stat == T_REQUESTED)
    {
        to_cnt++;
        if(to_cnt < MAX_TX_TO_COUNT)
        {
            #if SERIAL_U_3WIRE
            /* wait pulse time */
            UART_WAKEUP_HIGH();
            __no_operation();
            __no_operation();
        
            /* wakeup the slave */
            UART_WAKEUP_LOW();

            /* restart to check timeout */
            RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)uart_tx_timeout, 0x0002);
            #elif SERIAL_U_DIV_2WIRE
            tx_stat = T_REQUESTING;

            /* clear and enable INTST0 interrupt */
            write1_sfrbit(STIF1, IRQ_CLEAR);
            write1_sfrbit(STMK1, IRQ_ENABLE);
        
            /* transmit the request byte */
            write_sfr(TXD1, UART_REQ_BYTE);
            #endif
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
#endif // #if (SERIAL_U_3WIRE || SERIAL_U_DIV_2WIRE)

/**
 ****************************************************************************************
 * @brief Start UART transferring data.
 *        When finished receiving data, calls callback function.
 *
 * @param[in] bufptr  destination pointer, start of the space where data is transfered to.
 * @param[in] size    Transfer size, transferred data size byte by UART.
 *****************************************************************************************
 */
void serial_write(const uint8_t *bufptr, const uint16_t size)
{
    /* start DMA3 */
    uart_dma_tx((uint16_t)bufptr, size);

    GLOBAL_INT_DISABLE();

    #if SERIAL_U_3WIRE
    tx_stat = T_REQUESTED;

    /* wait pulse time */
    UART_WAKEUP_HIGH();
    __no_operation();
    __no_operation();

    /* wakeup the slave */
    UART_WAKEUP_LOW();

    /* start to check timeout */
    to_cnt = 0;
    RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)uart_tx_timeout, 0x0002);
    #elif SERIAL_U_DIV_2WIRE
    tx_stat = T_REQUESTING;

    /* clear and enable INTST0 interrupt */
    write1_sfrbit(STIF1, IRQ_CLEAR);
    write1_sfrbit(STMK1, IRQ_ENABLE);

    /* transmit the request byte */
    to_cnt = 0;
    write_sfr(TXD1, UART_REQ_BYTE);
    #else /* SERIAL_U_2WIRE */
    tx_stat = T_ACTIVE;

    /* start DMA3 */
    write1_sfrbit(DST3, 1);

    /* start transfer */
    write1_sfrbit(STG3, DMA_SW_DEN_TRIG);
    #endif

    GLOBAL_INT_RESTORE();
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
    #if defined(_USE_REL_RL78)
    /* backup memory value */
    #asm
    push    ax
    push    bc
    push    de
    push    hl
    movw    de,#_@SEGAX
    movw    ax,[de+0AH]
    push    ax
    movw    ax,[de+08H]
    push    ax
    movw    ax,[de+06H]
    push    ax
    movw    ax,[de+04H]
    push    ax
    movw    ax,[de+02H]
    push    ax
    movw    ax,[de+00H]
    push    ax
    mov     a,ES
    mov     x,a
    mov     a,CS
    push    ax
    #endasm
    #endif

    #if (SERIAL_U_3WIRE || SERIAL_U_DIV_2WIRE)

    if((RSCIP_Uart_Rx_Complete() == false) || (*rx_ptr != UART_ACK_BYTE))
    {
        /* Inform HCI about the end of transmission */
        RSCIP_Uart_Rx_Done();
    }
    else
    {
        uart_dma_rx(rx_addr, rx_size);
    }
    if(tx_stat == T_REQUESTED)
    {
        tx_stat = T_ACTIVE;

        #if SERIAL_U_3WIRE
        UART_WAKEUP_HIGH();
        #endif

        /* stop to check timeout */
        RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);

        /* start DMA3 */
        write1_sfrbit(DST3, 1);

        /* start transfer */
        write1_sfrbit(STG3, DMA_SW_DEN_TRIG);
    }
    #if SERIAL_U_DIV_2WIRE
    else if (tx_stat == T_REQUESTING)
    {
        tx_stat = T_RCV_BF_REQUESTED;
    }
    else
    {
    }
    #endif
    #else /* SERIAL_U_2WIRE */
    /* Inform HCI about the end of transmission */
    RSCIP_Uart_Rx_Done();
    #endif

    #if defined(_USE_REL_RL78)
    /* restore memory value */
    #asm
    pop     ax
    mov     CS,a
    mov     a,x
    mov     ES,a
    movw    de,#_@SEGAX
    pop     ax
    movw    [de],ax
    pop     ax
    movw    [de+02H],ax
    pop     ax
    movw    [de+04H],ax
    pop     ax
    movw    [de+06H],ax
    pop     ax
    movw    [de+08H],ax
    pop     ax
    movw    [de+0AH],ax
    pop     hl
    pop     de
    pop     bc
    pop     ax
    #endasm
    #endif
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
    #if defined(_USE_REL_RL78)
    /* backup memory value */
    #asm
    push    ax
    push    bc
    push    de
    push    hl
    movw    de,#_@SEGAX
    movw    ax,[de+0AH]
    push    ax
    movw    ax,[de+08H]
    push    ax
    movw    ax,[de+06H]
    push    ax
    movw    ax,[de+04H]
    push    ax
    movw    ax,[de+02H]
    push    ax
    movw    ax,[de+00H]
    push    ax
    mov     a,ES
    mov     x,a
    mov     a,CS
    push    ax
    #endasm
    #endif

    /* check if UART1 transmission is still going */
    if((read_sfr(SSR02L) & 0x60) != 0)
    {
        /* clear INTST1 interrupt flag */
        write1_sfrbit(STIF1, IRQ_CLEAR);

        /* check if UART1 transmision just finished */
        if((read_sfr(SSR02L) & 0x60) == 0)
        {
            /* set INTST1 interrupt flag */
            write1_sfrbit(STIF1, IRQ_SET);
        }
    }

    write1_sfrbit(STMK1, IRQ_ENABLE);

    /* <expect for st0_isr> */

    #if defined(_USE_REL_RL78)
    /* restore memory value */
    #asm
    pop     ax
    mov     CS,a
    mov     a,x
    mov     ES,a
    movw    de,#_@SEGAX
    pop     ax
    movw    [de],ax
    pop     ax
    movw    [de+02H],ax
    pop     ax
    movw    [de+04H],ax
    pop     ax
    movw    [de+06H],ax
    pop     ax
    movw    [de+08H],ax
    pop     ax
    movw    [de+0AH],ax
    pop     hl
    pop     de
    pop     bc
    pop     ax
    #endasm
    #endif
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for when finished UART transmission.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTST1_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for st1_isr"
#endif
__IRQ void st1_isr(void)
{
    #if SERIAL_U_DIV_2WIRE
    if(tx_stat == T_REQUESTING)
    {
        tx_stat = T_REQUESTED;

        /* start to check timeout */
        RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)uart_tx_timeout, 0x0002);
    }
    else if (tx_stat == T_RCV_BF_REQUESTED)
    {
        tx_stat = T_ACTIVE;

        /* start DMA3 */
        write1_sfrbit(DST3, 1);

        /* start transfer */
        write1_sfrbit(STG3, DMA_SW_DEN_TRIG);
    }
    else
    #endif
    if(tx_stat == T_ACTIVE)
    {
        tx_stat = T_IDLE;

        /* Inform the end of transmission */
        RSCIP_Uart_Tx_Done();
    }

    /* mask interrupts */
    write1_sfrbit(STMK1, IRQ_DISABLE);
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for when occurred UART receiving error.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTSRE1_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for sre0_isr"
#endif
__IRQ void sre1_isr(void)
{
    volatile uint8_t trash_data;

    /* stop DMA2 */
    write1_sfrbit(DST2, 0);

    /* inform HCI that uart rx_error was occured */
    RSCIP_Uart_Rx_Error();

    /*  clear DMA2 interrupt flag */
    write1_sfrbit(DMAIF2, IRQ_CLEAR);

    /* to avoid uart_overrun error */
    trash_data = read_sfr(RXD1);

    /* clear all error flags */
    write_sfr(SIR03L, 0x07);
}

/// @} UART


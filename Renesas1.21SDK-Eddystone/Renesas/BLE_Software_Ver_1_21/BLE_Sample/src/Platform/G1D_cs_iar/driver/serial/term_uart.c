/**
 ****************************************************************************************
 *
 * @file		term_uart.c
 *
 * @brief terminal UART Driver - UART1 of RL78 RENESAS 16b MCU.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2012-2014 Renesas Electronics Corporation
 *
 * $Rev: 2297 $
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
#pragma interrupt INTDMA0 dma0_isr NOBANK
#pragma interrupt INTDMA1 dma1_isr NOBANK
#pragma interrupt INTST0  st0_isr
#pragma interrupt INTSRE0 sre0_isr
#elif defined(_USE_CCRL_RL78)
#include "iodefine.h"
#pragma interrupt dma0_isr (vect=INTDMA0)
#pragma interrupt dma1_isr (vect=INTDMA1)
#pragma interrupt st0_isr  (vect=INTST0)
#pragma interrupt sre0_isr (vect=INTSRE0)
#endif

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "arch.h"
#include "port.h"
#include "term_uart.h"
#include "console.h"

/*
 * DEFINES
 ****************************************************************************************
 */
///transmit request code
#define UART_REQ_BYTE  (0x00)

///transmit acknowledge code
#define UART_ACK_BYTE  (0x88)

/* SDR00 SFR address , only last byte of the address is needed for DMA transfer */
#define UART_TXD0 0x10

/* SDR01 SFR address , only last byte of the address is needed for DMA transfer */
#define UART_RXD0 0x12

#define IRQ_SET     1

/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */

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
static void term_uart_port_init(void)
{
    /* TX pin */
    /* set pin as output */
    write1_sfr(PM1, 2, PORT_OUTPUT);
    /* set output mode */
    write1_sfr(POM1, 2, PORT_OUTPUT_NORMAL);
    /* latch necessary for output pin */
    write1_sfr(P1, 2, PORT_LATCH);

    /* RX pin */
    /* Use of noise filter of RXD0 pin */
    write_sfr(NFEN0, (uint8_t)0x01U);
    /* set pin as input */
    write1_sfr(PM1, 1, PORT_INPUT);
    /* set input mode */
    write1_sfr(PIM1, 1, PORT_INPUT_NORMAL);
}

/**
 ****************************************************************************************
 * @brief Initialize a DMA0 channel for transmission from UART0 data register to RAM.
 *****************************************************************************************
 */
static void dma0_init(void)
{
    /* enable DMA0 */
    write1_sfrbit(DEN0, 1);

    /* set SFR address (UART data registers) */
    write_sfr(DSA0, UART_RXD0);

    /* Transfer mode */
    write1_sfrbit(DRS0, DMA_SFR_TO_RAM);
    write1_sfrbit(DS0, DMA_UNIT_8B);
    write1_sfrbit(DWAIT0, DMA_TF_NO_PEND);

    /* Trigger setting- set to UART0 RX interrupt */
    write_sfr(DMC0, (uint8_t)(read_sfr(DMC0) | (DMA_SRC_INTSR0 & 0x0FU)));

    /* clear flag and unmask the interrupt */
    write1_sfrbit(DMAIF0, IRQ_CLEAR);
    write1_sfrbit(DMAMK0, IRQ_ENABLE);
}

/**
 ****************************************************************************************
 * @brief Initialize a DMA1 channel for transmission from RAM to UART0 data register.
 *****************************************************************************************
 */
static void dma1_init(void)
{
    /* enable DMA1 */
    write1_sfrbit(DEN1, 1);

    /* set SFR address (UART data register) */
    write_sfr(DSA1, UART_TXD0);

    /* Transfer mode */
    write1_sfrbit(DRS1, DMA_RAM_TO_SFR);
    write1_sfrbit(DS1, DMA_UNIT_8B);
    write1_sfrbit(DWAIT1, DMA_TF_NO_PEND);

    /* Trigger setting - UART0 TX transfer end interrupt */
    write_sfr(DMC1, (uint8_t)(read_sfr(DMC1) | (DMA_SRC_INTST0 & 0x0FU)));

    /* clear flag and unmask the interrupt */
    write1_sfrbit(DMAIF1, IRQ_CLEAR);
    write1_sfrbit(DMAMK1, IRQ_ENABLE);
}

/**
 ****************************************************************************************
 * @brief Initialize UART communication.(including initializing DMA and interrupt) 
 *        If argument value is wrong, this function does nothing.
 *****************************************************************************************
 */
void term_uart_init(void)
{
    /* stop UART */
    write_sfr(ST0L, (uint8_t)((read_sfr(ST0L) | 0x03)));

    /* PER0 peripheral enable register - release SAU0 from reset and start clock supply */
    write1_sfr2bit(SAU0EN, 1);

    /* must wait 4 clocks after PER0 setting */
    __no_operation();
    __no_operation();
    __no_operation();
    __no_operation();

    #if (0)
    /* MCK = fclk/8 = 1MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x03)));

    /* baudrate 4800bps(when MCK = 1MHz) */
    write_sfrp(SDR00, (uint16_t)0xCE00U);
    write_sfrp(SDR01, (uint16_t)0xCE00U);
    #else

	#if defined(CLK_HOCO_8MHZ)
    /* MCK = fclk/4 = 2MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x02)));
	#elif defined(CLK_HOCO_16MHZ)
    /* MCK = fclk/4 = 2MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x03)));
	#elif defined(CLK_HOCO_32MHZ)
    /* MCK = fclk/16 = 2MHz */
    write_sfr(SPS0L, (uint8_t)((read_sfr(SPS0L) | 0x04)));
	#endif
    /* baudrate 250000bps(when MCK = 2MHz) */
    write_sfrp(SDR00, (uint16_t)0x0600U);
    write_sfrp(SDR01, (uint16_t)0x0600U);

    #endif

    /* set operation mode for TX channel 0 of SAU0 */
    write_sfrp(SMR00, (uint16_t)0x0022U);

    /* set operation mode for RX channel 1 of SAU0 */
    write_sfrp(SMR01, (uint16_t)0x0122U);

    /* Serial communication operation settings */
    write_sfrp(SCR00, (uint16_t)0x8097U);
    write_sfrp(SCR01, (uint16_t)0x4497U);

    /* Serial output level */
    write_sfr(SOL0L, 0x00);

    /* Serial output - initial value to be output */
    write_sfrp(SO0, (uint16_t)0x0f0fU);

    /* Serial output enable for the targeted channel */
    write_sfr(SOE0L, (uint8_t)((read_sfr(SOE0L) | 0x01)));

    /* set port and port mode */
    term_uart_port_init();

    /* clear all error */
    write_sfr(SIR01L, 0x07);

    /* clear interrupt request flags */
    write1_sfrbit(SRIF0, IRQ_CLEAR);
    write1_sfrbit(SREIF0, IRQ_CLEAR);

    /* mask interrupts */
    write1_sfrbit(STMK0, IRQ_DISABLE);
    write1_sfrbit(SRMK0, IRQ_DISABLE);
    write1_sfrbit(SREMK0, IRQ_ENABLE);

    /* initialize DMA0, and set DMA transfer setting */
    dma0_init();

    /* initialize DMA1, and set DMA transfer setting */
    dma1_init();

    /* start Serial Array Unit 0 channel 0 and 1 operation */
    write_sfr(SS0L, (uint8_t)((read_sfr(SS0L) | 0x03)));

    return;
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
    /* stop DMA0 */                     \
    write1_sfrbit(DST0, 0);             \
                                        \
    /* set RAM address */               \
    write_sfrp(DRA0, (dest_addr));      \
                                        \
    /* set transfer size */             \
    write_sfrp(DBC0, (size));           \
                                        \
    /* start DMA0 */                    \
    write1_sfrbit(DST0, 1);             \
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
    /* stop DMA1 */                     \
    write1_sfrbit(DST1, 0);             \
                                        \
    /* set RAM address */               \
    write_sfrp(DRA1, (src_addr));       \
                                        \
    /* set transfer size */             \
    write_sfrp(DBC1, (size));           \
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
void term_uart_read(uint8_t *bufptr, const uint16_t size)
{
    /* start DMA0 */
    uart_dma_rx((uint16_t)bufptr, size);
}

/**
 ****************************************************************************************
 * @brief Start UART transferring data.
 *        When finished receiving data, calls callback function.
 *
 * @param[in] bufptr  destination pointer, start of the space where data is transfered to.
 * @param[in] size    Transfer size, transferred data size byte by UART.
 *****************************************************************************************
 */
void term_uart_write(const uint8_t *bufptr, const uint16_t size)
{
    /* start DMA1 */
    uart_dma_tx((uint16_t)bufptr, size);

    GLOBAL_INT_DISABLE();

    /* start DMA1 */
    write1_sfrbit(DST1, 1);

    /* start transfer */
    write1_sfrbit(STG1, DMA_SW_DEN_TRIG);

    GLOBAL_INT_RESTORE();
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for when finished DMA0 tranfer.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTDMA0_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for dma0_isr"
#endif
__IRQ void dma0_isr(void)
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

    console_rx_done();
    /* clear interrupt flag */
    write1_sfrbit(SRIF0, IRQ_CLEAR);

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
 * @brief Interrupt Service Routine, for when finished DMA1 tranfer.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTDMA1_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for dma1_isr"
#endif
__IRQ void dma1_isr(void)
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

    /* check if UART0 transmission is still going */
    if((read_sfr(SSR00L) & 0x60) != 0)
    {
        /* clear INTST0 interrupt flag */
        write1_sfrbit(STIF0, IRQ_CLEAR);

        /* check if UART0 transmision just finished */
        if((read_sfr(SSR00L) & 0x60) == 0)
        {
            /* set INTST0 interrupt flag */
            write1_sfrbit(STIF0, IRQ_SET);
        }
    }

    write1_sfrbit(STMK0, IRQ_ENABLE);

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
#pragma vector = INTST0_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for st0_isr"
#endif
__IRQ void st0_isr(void)
{
    console_tx_done();

    /* mask interrupts */
    write1_sfrbit(STMK0, IRQ_DISABLE);
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for when occurred UART receiving error.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTSRE0_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for sre0_isr"
#endif
__IRQ void sre0_isr(void)
{
    volatile uint8_t trash_data;

    /* stop DMA0 */
    write1_sfrbit(DST0, 0);

    console_rx_error();

    /*  clear DMA0 and SRIF0 interrupt flag */
    write1_sfrbit(DMAIF0, IRQ_CLEAR);
    write1_sfrbit(SRIF0 , IRQ_CLEAR);

    /* to avoid uart_overrun error */
    trash_data = read_sfr(RXD0);

    /* clear all error flags */
    write_sfr(SIR01L, 0x07);
}

/// @} UART


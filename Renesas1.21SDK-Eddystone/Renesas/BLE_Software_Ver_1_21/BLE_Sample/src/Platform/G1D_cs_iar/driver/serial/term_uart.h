/**
 ****************************************************************************************
 *
 * @file		term_uart.h
 *
 * @brief terminal UART Driver - UART1 of RL78 RENESAS 16b MCU.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2297 $
 *
 ****************************************************************************************
 */

#ifndef _TERM_UART_H_
#define _TERM_UART_H_

/**
 ****************************************************************************************
 * @defgroup UART
 * @ingroup DRIVERS
 * @brief UART MCU RL78 driver.
 *
 * This is actually a UART + DMA driver.
 *
 * The driver will use DMA channels to transfer data between UART registers and MCU thus
 * avoiding interrupts directly from UART pins at every byte reception/transmission and
 * replacing them with one end of transfer interrupt only.
 *
 * The driver improves transfer of data from UART to internal RAM to avoid atomic copy
 * of UART received data byte per byte.
 *
 * The only UART MCU modules it can interact with are numbers 0,1 and 3 - chosen 0.
 *
 * There are only two DMA channels in the MCU and they are both used with UART0:
 * DMA0 for RX and DMA1 for TX transfers.
 *
 * @{
 ****************************************************************************************
 */

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
 #include <stdint.h>
 #include <stdbool.h>
#endif //_USE_STD_C99
#include "serial.h"
#include "uart.h"

/*
 * FUNCTION DECLARATIONS
 ****************************************************************************************
 */
/**
 ****************************************************************************************
 * @brief Initializes the port bits, port mode register and pull-ups or latches for UART
 *        pins.
 *****************************************************************************************
 */
static void term_uart_port_init(void);

/**
 ****************************************************************************************
 * @brief Initialize a DMA0 channel for transmission from UART data register to RAM.
 *****************************************************************************************
 */
static void dma0_init(void);

/**
 ****************************************************************************************
 * @brief Initialize a DMA1 channel for transmission from RAM to UART data register.
 *****************************************************************************************
 */
static void dma1_init(void);

/**
 ****************************************************************************************
 * @brief DMA channel 0 transfer done Interrupt Service Routine.
 *
 * DMA0 is used for RX on UART, so this routine lets the upper stack know that
 * the receiving is done
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void dma0_isr(void);
#else
void dma0_isr(void);
#endif //_USE_STD_C99

/**
 ****************************************************************************************
 * @brief DMA channel 1 transfer done Interrupt Service Routine.
 *
 * DMA1 is used for TX on UART, so this routine lets the upper stack know that
 * the transfer is done
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void dma1_isr(void);
#else
void dma1_isr(void);
#endif //_USE_STD_C99

/**
 ****************************************************************************************
 * @brief UART receiving error Interrupt Service Routine.
 *
 * UART0 channel 1 is used for RX, so this routine lets the upper stack know that
 * UART receiving error occurred
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void sre0_isr(void);
#else
void sre0_isr(void);
#endif //_USE_STD_C99

/// @}

#endif /* _TERM_UART_H_ */

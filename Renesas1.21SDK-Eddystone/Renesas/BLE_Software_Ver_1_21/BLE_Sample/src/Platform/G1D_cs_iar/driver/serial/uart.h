/**
 ****************************************************************************************
 *
 * @file		uart.h
 *
 * @brief UART Driver - UART0 of RL78 RENESAS 16b MCU.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2297 $
 *
 ****************************************************************************************
 */

#ifndef _UART_H_
#define _UART_H_

/**
 ****************************************************************************************
 * @defgroup UART
 * @ingroup DRIVERS
 * @brief UART MCU RL78 driver.
 *
 * This is actually a UART+DMA driver.
 *
 * The driver will use DMA channels to transfer data between UART registers and MCU thus
 * avoiding interrupts directly from UART pins at every byte reception/transmission and
 * replacing them with one end of transfer interrupt only.
 *
 * The driver improves transfer of data from UART to internal RAM to avoid atomic copy
 * of UART received data byte per byte.
 *
 * The only UART MCU modules it can interact with are numbers 0,1 and 3 - chosen 1.
 *
 * There are only two DMA channels in the MCU and they are both used with UART1:
 * DMA2 for RX and DMA3 for TX transfers.
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

/*
 * ENUMERATION DEFINITIONS
 *****************************************************************************************
 */
/// status values
enum
{
    UART_STATUS_OK,
    UART_STATUS_ERROR
};


///DMA transfer mode flag - DSTn
enum
{
    DMA_TF_COMPLETE = 0,
    DMA_TF_ONGOING
};

///DMA Transfer start SW trigger - STGn
enum
{
    DMA_SW_NO_TRIG = 0,
    DMA_SW_DEN_TRIG
};


///DMA Transfer direction  - DRSn
enum
{
    DMA_SFR_TO_RAM = 0,
    DMA_RAM_TO_SFR,
    DMA_TF_MAX
};


///DMA transfer data unit size - DSn
enum
{
    DMA_UNIT_8B = 0,
    DMA_UNIT_16B
};


///DMA pending transfer - DWAIT
enum
{
    DMA_TF_NO_PEND = 0,
    DMA_TF_HOLD
};


///DMA start sources - IFC[3:0]
enum
{
    DMA_SRC_INT_SW  = 0x0,
    DMA_SRC_INTTM00 = 0x2,
    DMA_SRC_INTTM01 = 0x3,
    DMA_SRC_INTTM04 = 0x4,
    DMA_SRC_INTTM05 = 0x5,
    DMA_SRC_INTST0  = 0x6,
    DMA_SRC_INTSR0  = 0x7,
    DMA_SRC_INTST1  = 0x8,
    DMA_SRC_INTSR1  = 0x9,
    DMA_SRC_INTST3  = 0xA,
    DMA_SRC_INTSR3  = 0xB,
    DMA_SRC_INTAD   = 0xC,
    DMA_SRC_PROHIB
};


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
static void uart_port_init(void);

/**
 ****************************************************************************************
 * @brief Initialize a DMA2 channel for transmission from UART data register to RAM.
 *****************************************************************************************
 */
static void dma2_init(void);

/**
 ****************************************************************************************
 * @brief Initialize a DMA3 channel for transmission from RAM to UART data register.
 *****************************************************************************************
 */
static void dma3_init(void);

/**
 ****************************************************************************************
 * @brief DMA channel 2 transfer done Interrupt Service Routine.
 *
 * DMA2 is used for RX on UART, so this routine lets the upper stack know that
 * the receiving is done
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void dma2_isr(void);
#else
void dma2_isr(void);
#endif //_USE_STD_C99

/**
 ****************************************************************************************
 * @brief DMA channel 3 transfer done Interrupt Service Routine.
 *
 * DMA3 is used for TX on UART, so this routine lets the upper stack know that
 * the transfer is done
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void dma3_isr(void);
#else
void dma3_isr(void);
#endif //_USE_STD_C99

/**
 ****************************************************************************************
 * @brief UART receiving error Interrupt Service Routine.
 *
 * UART0 channel 3 is used for RX, so this routine lets the upper stack know that
 * UART receiving error occurred
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void sre1_isr(void);
#else
void sre1_isr(void);
#endif //_USE_STD_C99

/// @}

#endif /* _UART_H_ */

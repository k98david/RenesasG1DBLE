/**
 ****************************************************************************************
 *
 * @file serial.h
 *
 * @brief SERIAL Driver - for use UART0 or CSI00 of RL78 RENESAS 16bit MCU.
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2158 $
 *
 ****************************************************************************************
 */

#ifndef _SERIAL_H_
#define _SERIAL_H_

/**
 ****************************************************************************************
 * @defgroup SERIAL
 * @ingroup DRIVERS
 * @brief Serial Communication MCU RL78 driver.
 *
 * This is actually a Wrapper Functions For UART or CSI driver.
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
 * DEFINES
 ****************************************************************************************
 */
#define SERIAL_U_2WIRE      (1)
#define SERIAL_U_3WIRE      (0)
#define SERIAL_U_DIV_2WIRE  (0)
#define SERIAL_C_4WIRE      (0)
#define SERIAL_C_5WIRE      (0)
#define SERIAL_I_3WIRE      (0)

/*
 * STUCTURE DEFINITIONS
 *****************************************************************************************
 */

typedef void (* SERIAL_EVENT_VOID_HANDLER)( void );
typedef bool (* SERIAL_EVENT_BOOL_HANDLER)( void );
typedef struct {
    SERIAL_EVENT_VOID_HANDLER rx_callback;
    SERIAL_EVENT_VOID_HANDLER tx_callback;
    SERIAL_EVENT_VOID_HANDLER err_callback; 
    SERIAL_EVENT_BOOL_HANDLER rx_first_byte_callback;
    SERIAL_EVENT_BOOL_HANDLER rx_cmp_callback;
}SERIAL_EVENT_PARAM;

/*
 * MACRO DECLARATIONS
 ****************************************************************************************
 */
#define SERIAL_CALLBACK_VOID(cb)   if((cb) != NULL) ((SERIAL_EVENT_VOID_HANDLER)(cb))()
#define SERIAL_CALLBACK_BOOL(cb)   ((cb)!=NULL)?(((SERIAL_EVENT_BOOL_HANDLER)(cb))()):(true)

/*
 * FUNCTION DECLARATIONS
 ****************************************************************************************
 */
/**
 ****************************************************************************************
 * @brief Initialize Serial communication.(including initializing DMA and interrupt)
 *****************************************************************************************
 */
//extern bool serial_init(void);
extern void term_uart_init(void);

/**
 ****************************************************************************************
 * @brief Start Serial receiving data.
 *        When finished receiving data, calls callback function.
 *
 * @param[in,out] bufptr  destination pointer, start of the space where data is transfered to.
 * @param[in] size        Transfer size, received data size byte by Serial.
 *****************************************************************************************
 */
//extern void serial_read(uint8_t *bufptr, const uint16_t size);
extern void term_uart_read(uint8_t *bufptr, const uint16_t size);

/**
 ****************************************************************************************
 * @brief Start Serial transferring data.
 *        When finished transferring data, calls callback function.
 *
 * @param[in] bufptr  source pointer, start of the space where data is transfered from.
 * @param[in] size    Transfer size, transferred data size byte by Serial.
 *****************************************************************************************
 */
//extern void serial_write(const uint8_t *bufptr, const uint16_t size);
extern void term_uart_write(const uint8_t *bufptr, const uint16_t size);

/// @} module

#endif /* _SERIAL_H_ */

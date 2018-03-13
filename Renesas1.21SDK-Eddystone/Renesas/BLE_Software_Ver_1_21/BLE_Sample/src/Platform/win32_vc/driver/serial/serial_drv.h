/**
 ****************************************************************************************
 *
 * @file		serial_drv.h
 *
 * @brief	Serial Driver Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2297 $
 *
 ****************************************************************************************
 */

#ifndef __SERIAL_DRV_H
#define __SERIAL_DRV_H

#include	"rscip_ext.h"

BOOL set_uart_parameter( char_t *argv[] );

#ifdef __cplusplus
extern "C" {
#endif
BOOL Serial_SetCommBreak( void );
BOOL Serial_ClearCommBreak( void );

#ifdef __cplusplus
}
#endif

#endif

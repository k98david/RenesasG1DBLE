/**
 ****************************************************************************************
 *
 * @file		console.h
 *
 * @brief	console Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2144 $
 *
 ****************************************************************************************
 */
#ifndef _CONSOLE_H
#define _CONSOLE_H

#include	"types.h"

#ifndef char_t
#define char_t char
#endif

#define	COLOR_LIGHT				0x80
#define	COLOR_BLACK				0x00
#define	COLOR_DARK_GRAY			(COLOR_LIGHT|COLOR_BLACK)
#define	COLOR_BLUE				0x01
#define	COLOR_LIGHT_BLUE		(COLOR_LIGHT|COLOR_BLUE)
#define	COLOR_GREEN				0x02
#define	COLOR_LIGHT_GREEN		(COLOR_LIGHT|COLOR_GREEN)
#define	COLOR_CYAN				(COLOR_GREEN|COLOR_BLUE)
#define	COLOR_LIGHT_CYAN		(COLOR_LIGHT|COLOR_CYAN)
#define	COLOR_RED				0x04
#define	COLOR_LIGHT_RED			(COLOR_LIGHT|COLOR_RED)
#define	COLOR_MAGENTA			(COLOR_RED|COLOR_BLUE)
#define	COLOR_LIGHT_MAGENTA		(COLOR_LIGHT|COLOR_MAGENTA)
#define	COLOR_YELLOW			(COLOR_RED|COLOR_GREEN)
#define	COLOR_LIGHT_YELLOW		(COLOR_LIGHT|COLOR_YELLOW)
#define	COLOR_LIGHT_GRAY		(COLOR_BLUE|COLOR_GREEN|COLOR_RED)
#define	COLOR_WHITE				(COLOR_LIGHT|COLOR_LIGHT_GRAY)


#define	TITLE_COLOR				COLOR_WHITE
#define	CONSOLE_COLOR			COLOR_WHITE
#define	EVENT_COLOR				COLOR_LIGHT_YELLOW
#define	COMMAND_COLOR			COLOR_LIGHT_CYAN
#define	MESSAGE_COLOR			COLOR_WHITE

#ifdef __cplusplus
extern "C" {
#endif
int32_t Console_GetInput( void );
BOOL Console_Init(void);
void Console_SetTextAttribute( uint32_t Set_Attribute );

#ifdef __cplusplus
}
#endif

#define	printf		Printf
void Printf( char_t *Format, ... );

void console_rx_done( void );
void console_tx_done( void );
void console_rx_error( void );

#endif /* _CONSOLE_H */

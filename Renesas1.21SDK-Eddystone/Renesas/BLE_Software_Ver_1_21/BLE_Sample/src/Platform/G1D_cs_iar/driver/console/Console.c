/**
 ****************************************************************************************
 *
 * @file		console.c
 *
 * @brief	console Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2157 $
 *
 ****************************************************************************************
 */

#include "arch.h"

#include <stdio.h>
#include <stdarg.h>
#include	"rble.h"
#include	"console.h"
#include	"menu_sel.h"
#include	"rble_app.h"
#include	"term_uart.h"

/**************************** Define Declaration **************************************/
#define	CR_KEY_CODE				0x0d
#define	LF_KEY_CODE				0x0a
#define	ESC_KEY_CODE			0x1b
#define	BS_KEY_CODE				0x08

#define KEY_BUF_MAX			100

#define		STREAM_MEMORY_MAX_LINE_SIZE	80
#define		__USER_BASE16__

/**************************** PRIVATE PROTOTYPE Declaration ***************************/
void Control_Menu_Disp( SELECT_MENU *Menu_Arg_p );

/**************************** PRIVATE Memory Declaration ******************************/

char_t			Key_Buf[ KEY_BUF_MAX ];
int_t			Key_Cnt;
char_t			Stream_Buffer[ STREAM_MEMORY_MAX_LINE_SIZE ];
bool			Send_Flg, Receive_Flg;

/******************************* Program Area *************************************************/
/**********************************************************************************************/
/**
 *  @brief Console input function
 *
 *  Input console for rBLE sample program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Input Console
 *
 *  @param[in]
 *
 *  @retval
 */
/**********************************************************************************************/
int32_t Console_GetInput( void )
{
	int16_t			Key_Data;
	int32_t			Ret_Key;
	char_t			*Result_p;
	char_t			*Result_Tmp_p;
	int32_t			Ret_Temp;
#ifdef	__USER_BASE16__
	int_t			Base;
#endif

	if ( true == Receive_Flg ){
		Receive_Flg = false;
		Key_Data = Key_Buf[ Key_Cnt ];
		if ( BS_KEY_CODE == Key_Data ) {
			if ( 0 != Key_Cnt ) {
				printf( "%c %c", BS_KEY_CODE, BS_KEY_CODE );
				Key_Cnt--;
				Key_Buf[ Key_Cnt ] = '\0';
			}
		} else if ( ESC_KEY_CODE == Key_Data ) {
			Ret_Key = ESC_KEY;
			Key_Cnt = 0;
			Menu_Key_Select( Ret_Key );
		} else {
			printf( "%c", Key_Data );
			if ( ( CR_KEY_CODE == Key_Data )
				|| ( LF_KEY_CODE == Key_Data ) ) {
				if ( 0 != Key_Cnt ) {
					RBLE_Parameter_Cnt = 0;
					Ret_Key = strtol( Key_Buf, &Result_p, 10 );
					if ( Key_Buf == Result_p ) {
						Ret_Key = CR_KEY;
					} else if ( &Key_Buf[ Key_Cnt ] != Result_p ) {
						for ( ; ( ( ' ' == ( *Result_p ) ) && ( RBLE_Parameter_Cnt < RBLE_PARAMETER_MAX ) ); ) {
#ifdef	__USER_BASE16__
							if ( ( '0' == Result_p[ 1 ] ) && ( 'x' == Result_p[ 2 ] ) ) {
								Base = 16;
							} else {
								Base = 10;
							}
							Ret_Temp = strtol( Result_p, &Result_Tmp_p, Base );
#else
							Ret_Temp = strtol( Result_p, &Result_Tmp_p, 10 );
#endif
							if ( Result_p != Result_Tmp_p ) {
								RBLE_Parameter_Arg[ RBLE_Parameter_Cnt ] = Ret_Temp;
								RBLE_Parameter_Cnt++;
								Result_p = Result_Tmp_p;
							} else {
								break;
							}
						}
					}
					memset( Key_Buf, 0, Key_Cnt );
					Key_Cnt = 0;
				} else {
					Ret_Key = CR_KEY;
				}
				Menu_Key_Select( Ret_Key );
			} else {
				Key_Cnt++;
				Key_Buf[ Key_Cnt ] = '\0';
			}
		}
		term_uart_read( ( uint8_t * )&Key_Buf[ Key_Cnt ], 1 );
	}
	return (1);
}

/**********************************************************************************************/
/**
 *  @brief Initialize Console Program
 *
 *  Initialize Console Program for rBLE sample program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Parameter Check
 *    -# Create Event
 *
 *  @param[in]
 *
 *  @retval		TRUE				Success
 *  @retval		FALSE				Error
 */
/**********************************************************************************************/
BOOL Console_Init( void )
{
	uint16_t		Ret = TRUE;

	term_uart_init();  // TERMINAL UART

	Key_Cnt = 0;
	Receive_Flg = false;
	term_uart_read( ( uint8_t * )&Key_Buf[ 0 ], 1 );

    return( Ret );
}

/**********************************************************************************************/
/**
 *  @brief Terminate Console Program
 *
 *  Terminate Console Program for rBLE sample program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Terminate Thread
 *    -# Close Handle
 *
 *  @param[in]
 *
 *  @retval
 */
/**********************************************************************************************/
void Console_SetTextAttribute( uint32_t Set_Attribute )
{
	switch ( Set_Attribute ) {
		case EVENT_COLOR:
			printf("\x1b[33m");
			break;
		case COMMAND_COLOR:
			printf("\x1b[36m");
			break;
		case MESSAGE_COLOR:
		default:
			printf("\x1b[39;49m");
			break;
	}
}

void Printf( char_t *Format, ... )
{
	va_list 	Args;
#ifndef _USE_IAR_RL78
	Args = NULL;
#endif//_USE_IAR_RL78

	for ( ;; ) {
		if ( false == Send_Flg ) {
	            break;
		}
	}

#ifdef _USE_REL_RL78
	va_starttop( Args, Format );
#else
	va_start( Args, Format );
//	va_arg( Args, int8_t* );
#endif
	vsprintf( &Stream_Buffer[ 0 ], Format, Args );
	Send_Flg = true;
	term_uart_write( ( uint8_t * )&Stream_Buffer[ 0 ], strlen( &Stream_Buffer[ 0 ] ) );
#ifndef _USE_REL_RL78
	va_end( Args );
#endif
}

void console_rx_done( void )
{
	Receive_Flg = true;
}

void console_tx_done( void )
{
	Send_Flg = false;
}

void console_rx_error( void )
{
	Receive_Flg = false;
	term_uart_read( ( uint8_t * )&Key_Buf[ Key_Cnt ], 1 );
}


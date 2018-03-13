/**
 ****************************************************************************************
 *
 * @file		rBLE_Sample.cpp
 *
 * @brief	rBLE Sample Source
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2156 $
 *
 ****************************************************************************************
 */

#include	"stdafx.h"
#include	<windows.h>
#include	<stdio.h>
#include	<stdlib.h>
#include	<time.h>

#include	"SerialIF.h"
#include	"serial_drv.h"

#include	"rble.h"
#include	"rble_Host.h"
#include	"rble_app.h"
#include	"console.h"
#include	"menu_sel.h"
#include	"timer.h"

/**************************** PROTOTYPE Declaration ***********************************/
int_t main( int_t argc, char_t *argv[] );
void CALLBACK AppDummyFunc( HWND hwnd, UINT uMsg, UINT idEvent, DWORD dwTime );;
const void rBLE_Dummy_Task( void );

/**************************** PRIVATE Memory Declaration ******************************/
static char_t *Default_Map[] = {
	"", "COM1",	"9600", "ca:fe:fa:de:00:a0", ""
};
#ifdef __cplusplus
extern "C" {
#endif
extern BOOL				Exit_Flg;
extern RBLE_BD_ADDR		Remote_Device;
#ifdef __cplusplus
}
#endif

/******************************* Program Area *************************************************/
/**********************************************************************************************/
/**
 *  @brief Start Program
 *
 *  main program of rBLE sample program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Serial Parameter Set
 *    -# Serial & rBLE Initialize
 *
 *  @param[in] argc			argument count
 *  @param[in] argv			argument pointor
 *
 *  @retval		TRUE				Success
 *  @retval		FALSE				Error
 */
/**********************************************************************************************/
int_t main( int_t argc, char_t *argv[] )
{
	BOOL		Ret;
	char_t		*RemoteBdAddr_Str_p;
	UINT		TimerID = 0;				/* rBLE Timer ID */
	int32_t		i;
	char_t		Temp[ 5 ];
	char_t		*Result_p;
	uint32_t	Data;

	Ret = TRUE;

	if ( 4 > argc ) {
		Ret = set_uart_parameter( Default_Map );
		RemoteBdAddr_Str_p = Default_Map[ 3 ];
	} else {
		/* SET UART Port Parameter */
		Ret = set_uart_parameter( argv );
		RemoteBdAddr_Str_p = argv[ 3 ];
	}
	if ( TRUE == Ret ) {
		/* Set Remote Device Address ? */
		memset( Temp, 0, sizeof( Temp ) );
		for ( i = sizeof( Remote_Device ) - 1;i >= 0;i-- ) {
			memcpy( Temp, RemoteBdAddr_Str_p, 2 );
			/* xx:(3byte) A pointer is updated. */
			RemoteBdAddr_Str_p = RemoteBdAddr_Str_p + 3;
			Data = strtol( Temp, &Result_p, 16 );
			if ( Temp != Result_p ) {
				Remote_Device.addr[ i ] = ( uint8_t )Data;
			}
		}

		if ( RBLE_OK == RBLE_Init_Timer() ) {
			/* rBLE Application Intialize */
			if ( TRUE == RBLE_App_Init() ) {
				/* A timer is started. */
				TimerID = SetTimer( NULL, 0, 1, AppDummyFunc );
				if ( 0 == TimerID ) {
					/** Error **/
					Ret = RBLE_ERR;
				}
			} else {
				/** Error **/
				Ret = RBLE_ERR;
			}

			rBLE_Dummy_Task();
		}
		rBLE_Exit();
		if ( 0 != TimerID ) {
			KillTimer( NULL, TimerID );
			TimerID = 0;
		}

	} else {
		fprintf( stderr, "Usage:%s COMPort(1-20) BaudRate(BaudRateValue) Bluetooth Address of Remote Device(xx:xx:xx:xx:xx:xx)\n", argv[ 0 ] );
		/* ERROR */
		Ret = FALSE;
	}
	return( Ret );
}

void CALLBACK AppDummyFunc( HWND hwnd, UINT uMsg, UINT idEvent, DWORD dwTime )
{
	rBLE_Run();
	Console_GetInput();
}

const void rBLE_Dummy_Task( void )
{
	MSG					winMsg = {0};
	RBLE_STATUS			Result;

	Result = RBLE_ERR;
	Exit_Flg = FALSE;
	while( FALSE == Exit_Flg ) {
		if ( 0 != ( PeekMessage( &winMsg, NULL, 0, 0, PM_REMOVE ) ) ) {
			switch( winMsg.message ){
				case WMUS_THREAD_TERMINATE:
					break;
				default:
					TranslateMessage (&winMsg) ;
					DispatchMessage (&winMsg) ;
					break;
			}
		} else {
			WaitMessage();
		}
	}
}


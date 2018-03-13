/**
 ****************************************************************************************
 *
 * @file		Serial_drv_sample.cpp
 *
 * @brief	Serial Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2016 Renesas Electronics Corporation
 *
 * $Rev: 2156 $
 *
 ****************************************************************************************
 */

/**
 * INCLUDE FILES
 ****************************************************************************************
 */
#include	"stdafx.h"
#include	<windows.h>
#include	<stdlib.h>
#include	<process.h>

#include	"SerialIF.h"
#include	"serial_drv.h"
#include	"rscip_uart.h"
#include	"timer.h"

/**
 * DEFINES
 ****************************************************************************************
 */
///transmit request code
#define UART_REQ_BYTE  (0xC0)

///transmit acknowledge code
#define UART_ACK_BYTE  (0x88)

#define MAX_TX_TO_COUNT (4)

enum
{
	T_IDLE       = 0,
	T_REQUESTING = 1,
	T_RCV_BF_REQUESTED  = 2,
	T_REQUESTED  = 3,
	T_ACTIVE     = 4
};

/*
 * FUNCTION DECLARATIONS
 ****************************************************************************************
 */
UINT Send_Task( void * Arg );
UINT Receive_Task( void * Arg );
BOOL EndSerialThread( HANDLE hThread, UINT dwThreadID );
void APIENTRY Serial_Stop_APC( DWORD Data );

static void uart_tx_timeout(void);

/**
 * GLOBAL VARIABLE DECLARATIONS
 ****************************************************************************************
 */
TTYINFO		stSerial = { 0 };				/* Serial Setup */
UINT		dwSndThreadID = 0;				/* Send Thread Id */
HANDLE		hSndThread = 0;					/* Send Thread Handle */

UINT		dwRcvThreadID = 0;				/* Receive Thread Id */
HANDLE		hRcvThread = 0;					/* Receive Thread Handle */

/**
 * PRIVATE VARIABLE DECLARATIONS
 ****************************************************************************************
 */
static volatile uint8_t tx_stat;
static uint16_t	rx_size;
static uint16_t	tx_size;
static uint8_t	*rx_addr;
static uint8_t	*rx_ptr;
static uint8_t	*tx_ptr;
static uint8_t	to_cnt;
static uint8_t	req_byte = UART_REQ_BYTE;
static bool		use_div_2wire = FALSE;

static CRITICAL_SECTION serial_drv_cs;

/******************************* Program Area *************************************************/
/**********************************************************************************************/
/**
 *  @brief Serial Driver Parameter Set
 *
 *  Parameter set of configurataion for Serial Driver@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Serial Parameter Set
 *
 *  @param[in] argv			argument pointor
 *
 *  @retval		TRUE				Success
 *  @retval		FALSE				Error
 */
/**********************************************************************************************/
BOOL set_uart_parameter( char_t *argv[] )
{
	static char_t	COM_Port_Str[ 20 ];

	BOOL		Ret;
	DWORD		Data_Temp;
	char_t		*Result_p;
	char_t		*Start_p;

	Ret = TRUE;

	Start_p = argv[ 1 ] + strlen( "COM" );
	Data_Temp = strtol( Start_p, &Result_p, 10 );
	if ( Start_p != Result_p ) {
		wsprintf( COM_Port_Str, "\\\\.\\COM%d", Data_Temp );
		stSerial.lpszPort = COM_Port_Str;
	} else {
		Ret = 0;
	}
	/* BaudRate */
	Data_Temp = strtol( argv[ 2 ], &Result_p, 10 );
	if ( argv[ 2 ] != Result_p ) {
		stSerial.dwBaudRate = Data_Temp;
	} else {
		Ret = 0;
	}
	/* Data Length */
	stSerial.bByteSize = DATA8;
	/* Parity */
	stSerial.bParity = PARITY0;
	/* StopBit */
	Data_Temp = STOPBIT1;
	/* Flow control */
	stSerial.bFlowCtrl = FC_NON;

	if ((NULL != argv[ 4 ]) && (0 == strcmp(argv[ 4 ], "-div2wire")))
	{
		use_div_2wire = TRUE;
	}
	else
	{
		use_div_2wire = FALSE;
	}

	return( Ret );
}

/**********************************************************************************************/
/**
 *  @brief Serial Driver Initialize
 *
 *  Intialize Serial Driver for rBLE Sample Program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Create Serial Rx Thread
 *    -# Create Serial Tx Thread
 *    -# Serial Driver Initialize
 *
 *  @param[in]
 *
 *  @retval		TRUE				Success
 *  @retval		FALSE				Error
 */
/**********************************************************************************************/
BOOL serial_init( void )
{
	BOOL		Ret = FALSE;

	InitializeCriticalSection(&serial_drv_cs);

	hSndThread = (HANDLE)_beginthreadex( NULL, 0, ( UINT (__stdcall*)(void *))Send_Task, NULL, 0, &dwSndThreadID );
	if ( NULL != hSndThread ) {
		SetThreadPriority( hSndThread, THREAD_PRIORITY_HIGHEST );
	}
	hRcvThread = (HANDLE)_beginthreadex( NULL, 0, ( UINT (__stdcall*)(void *))Receive_Task, NULL, 0, &dwRcvThreadID );
	if ( NULL != hRcvThread ) {
		SetThreadPriority( hRcvThread, THREAD_PRIORITY_HIGHEST );
	}

	/* Serial Open */
	if ( COMS32_RESULT_OK == comS32_Open( &stSerial ) ) {
		Ret = TRUE;
		EnterCriticalSection(&serial_drv_cs);
		tx_stat = T_IDLE;
		LeaveCriticalSection(&serial_drv_cs);
	} else {
		if ( TRUE == EndSerialThread( hSndThread, dwSndThreadID ) ) {
			hSndThread = NULL;
		} else {
			hSndThread = NULL;
		}
		if ( TRUE == EndSerialThread( hRcvThread, dwRcvThreadID ) ) {
			hRcvThread = NULL;
		} else {
			hRcvThread = NULL;
		}
		DeleteCriticalSection(&serial_drv_cs);
	}
	return( Ret );
}

/**********************************************************************************************/
/**
 *  @brief Serial Driver Terminate
 *
 *  Terminate Serial Driver for rBLE Sample Program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Terminate Serial Rx Thread
 *    -# Terminate Serial Tx Thread
 *    -# Serial Driver Close
 *
 *  @param[in]
 *
 *  @retval
 */
/**********************************************************************************************/
void serial_exit( void )
{
	if ( NULL != hSndThread ) {
		if ( TRUE == EndSerialThread( hSndThread, dwSndThreadID ) ) {
			hSndThread = NULL;
		} else {
			hSndThread = NULL;
		}
	}
	if ( NULL != hRcvThread ) {
		comS32_Exit_Periodic( hRcvThread );

		if ( TRUE == EndSerialThread( hRcvThread, dwRcvThreadID ) ) {
			hRcvThread = NULL;
		} else {
			hRcvThread = NULL;
		}
	}
	DeleteCriticalSection(&serial_drv_cs);
	comS32_Close();
}

/**********************************************************************************************/
/**
 *  @brief Serial Data Send
 *
 *  Request of Transmit Data for rBLE Sample Program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Send Message Tx Request
 *
 *  @param[in]
 *
 *  @retval		TRUE				Success
 *  @retval		FALSE				Error
 */
/**********************************************************************************************/
BOOL serial_write(uint8_t *bufptr, uint16_t size)
{

	BOOL		Ret = FALSE;

	if (NULL != hSndThread)
	{
		if (TRUE == use_div_2wire)
		{
			EnterCriticalSection(&serial_drv_cs);
			tx_stat = T_REQUESTING;
			LeaveCriticalSection(&serial_drv_cs);
			to_cnt = 0;
			/* store the argument parameter */
			tx_size = size;
			tx_ptr = bufptr;
		}
		else
		{
			EnterCriticalSection(&serial_drv_cs);
			tx_stat = T_ACTIVE;
			LeaveCriticalSection(&serial_drv_cs);
		}
		if (0 != PostThreadMessage(dwSndThreadID, WMUS_SEND, (WPARAM)bufptr, (LPARAM)size))
		{
			Ret = TRUE;
		}
	}
	return( Ret );
}

/**********************************************************************************************/
/**
 *  @brief Serial Data Receive
 *
 *  Request of Receive Data for rBLE Sample Program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Send Message Rx Request
 *
 *  @param[in]
 *
 *  @retval		TRUE				Success
 *  @retval		FALSE				Error
 */
/**********************************************************************************************/
BOOL serial_read(uint8_t *bufptr, uint16_t size )
{
	BOOL		Ret = FALSE;

	if (NULL != hRcvThread)
	{
		if (TRUE == use_div_2wire)
		{
			/* store the argument parameter */
			rx_addr = bufptr;
			rx_size = size;
			rx_ptr = bufptr;
		}
		if (0 != PostThreadMessage(dwRcvThreadID, WMUS_RECEIVE, (WPARAM)bufptr, (LPARAM)size))
		{
			Ret = TRUE;
		}
	}
	return( Ret );
}

/**********************************************************************************************/
/**
 *  @brief Thread to handle Transmit Data
 *
 *  Transmit Data for rBLE Sample Program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Send Data
 *
 *  @param[in]
 *
 *  @retval
 */
/**********************************************************************************************/
UINT Send_Task( void *arg )
{
	BOOL			exit_flg;
	MSG				msg = {0};
	BOOL			bRet;
	DWORD			dwSendWritten;
	DWORD			dwReqWriteSize = 0;
	DWORD			dwReason;
	uint8_t			*Data_p;

	exit_flg = FALSE;
	while( FALSE == exit_flg ) {
		if ( 0 != ( PeekMessage( &msg, NULL, 0, 0, PM_REMOVE ) ) ) {
			switch( msg.message ){
				case WMUS_SEND:
					EnterCriticalSection(&serial_drv_cs);
					if (tx_stat == T_REQUESTING)
					{
						dwReqWriteSize = 1;
						Data_p = &req_byte;
					}
					else
					{
					dwReqWriteSize = msg.lParam;
					Data_p = ( uint8_t * )msg.wParam;
					}
					LeaveCriticalSection(&serial_drv_cs);

					for ( ; 0 != dwReqWriteSize ; ) {
						bRet = comS32_SendBlock( Data_p, dwReqWriteSize, &dwSendWritten, &dwReason );
						if ( TRUE == bRet ) {
							dwReqWriteSize = dwReqWriteSize - dwSendWritten;
							Data_p = Data_p + dwSendWritten;
						}
					}
#ifdef RSCIP_DEBUG_PRINT_USE
					fprintf( stderr, "TxDone(%d)\n", msg.lParam );
#endif
					EnterCriticalSection(&serial_drv_cs);
					if (tx_stat == T_REQUESTING)
					{
						tx_stat = T_REQUESTED;
						/* start to check timeout */
						RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)uart_tx_timeout, 0x0002);
					}
					else if (tx_stat == T_RCV_BF_REQUESTED)
					{
						tx_stat = T_ACTIVE;
						/* start transfer */
						PostThreadMessage(dwSndThreadID, WMUS_SEND, (WPARAM)tx_ptr, (LPARAM)tx_size);
					}
					else if(tx_stat == T_ACTIVE)
					{
						tx_stat = T_IDLE;
						/* The completion of transmitting is notified to RSCIP. */
						RSCIP_Uart_Tx_Done();
					}
					LeaveCriticalSection(&serial_drv_cs);
					break;
				case WMUS_THREAD_TERMINATE:
					exit_flg = TRUE;
					break;
				default:
					TranslateMessage (&msg) ;
					DispatchMessage (&msg) ;
					break;
			}
		} else {
			WaitMessage();
		}
	}
	_endthreadex(0);
	return( 0 );
}

/**********************************************************************************************/
/**
 *  @brief Thread to handle receive data
 *
 *  Receive Data for rBLE Sample Program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Receive Data
 *
 *  @param[in]
 *
 *  @retval
 */
/**********************************************************************************************/
UINT Receive_Task( void * arg )
{
	BOOL			exit_flg;
	MSG				msg = {0};
	BOOL			bRet;
	DWORD			dwTmpRcvSize = 0;
	DWORD			dwReqRcvSize = 0;
	uint32_t		Error;
	uint8_t			*Data_p;

	exit_flg = FALSE;
	while( FALSE == exit_flg ) {
		if ( 0 != ( PeekMessage( &msg, NULL, 0, 0, PM_REMOVE ) ) ) {
			switch( msg.message ){
				case WMUS_RECEIVE:
					dwReqRcvSize = msg.lParam;
					Data_p = ( uint8_t * )msg.wParam;
					for ( ; 0 != dwReqRcvSize ; ) {
						bRet = comS32_ReceiveBlock(	Data_p, dwReqRcvSize );
						if ( TRUE == bRet ) {
							if ( TRUE == comS32_Read_Periodic( &dwTmpRcvSize, &Error ) ) {
								break;
							}
							dwReqRcvSize = dwReqRcvSize - dwTmpRcvSize;
							Data_p = Data_p + dwTmpRcvSize;
						}
					}
					if (0 == dwReqRcvSize)
					{
						if (TRUE == use_div_2wire)
						{
							if((RSCIP_Uart_Rx_Complete() == FALSE) || (*rx_ptr != UART_ACK_BYTE))
							{
								/* Inform HCI about the end of transmission */
								RSCIP_Uart_Rx_Done();
							}
							else
							{
								PostThreadMessage(dwRcvThreadID, WMUS_RECEIVE, (WPARAM)rx_addr, (LPARAM)rx_size);
							}
							EnterCriticalSection(&serial_drv_cs);
							if (tx_stat == T_REQUESTED)
							{
								tx_stat = T_ACTIVE;
								/* stop to check timeout */
								RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);
								/* start transfer */
								PostThreadMessage(dwSndThreadID, WMUS_SEND, (WPARAM)tx_ptr, (LPARAM)tx_size);
							}
							else if (tx_stat == T_REQUESTING)
							{
								tx_stat = T_RCV_BF_REQUESTED;
							}
							else
							{
							}
							LeaveCriticalSection(&serial_drv_cs);
						}
						else
						{
							/* The completion of receiving is notified to RSCIP. */
							RSCIP_Uart_Rx_Done();
						}
					} else {
						exit_flg = TRUE;
					}
					break;
				case WMUS_THREAD_TERMINATE:
					exit_flg = TRUE;
					break;
				default:
					TranslateMessage(&msg);
					DispatchMessage(&msg);
					break;
			}
		} else {
			WaitMessage();
		}
	}
	_endthreadex(0);
	return( 0 );
}

/**********************************************************************************************/
/**
 *  @brief Serial Thread Terminate
 *
 *  Terminate Serial Therad for rBLE Sample Program@n
 *  
 *  @attention
 *  
 *  @b Contents of management:
 *    -# Terminate Thread
 *    -# Close Handle
 *
 *  @param[in] hThread		Thread Handle
 *  @param[in] dwThreadID	Thread ID
 *
 *  @retval		TRUE				Success
 *  @retval		FALSE				Error
 */
/**********************************************************************************************/
BOOL EndSerialThread( HANDLE hThread, UINT dwThreadID )
{
	DWORD		dwExitCode;
	BOOL		Ret;

	Ret = FALSE;
	if ( NULL != hThread ){

		GetExitCodeThread( hThread, &dwExitCode );
		if ( STILL_ACTIVE == dwExitCode ) {

			PostThreadMessage( dwThreadID, WMUS_THREAD_TERMINATE, 0, 0 );

			for( int_t i = 0; i < 10; i++ ){
				GetExitCodeThread( hThread, &dwExitCode );
				if ( STILL_ACTIVE == dwExitCode ) {
					Sleep( 100 );
				} else {
					break;
				}
			}

			/* Forced termination */
			GetExitCodeThread( hThread, &dwExitCode );
			if ( STILL_ACTIVE == dwExitCode ) {
				// WARNING
				TerminateThread( hThread, 0 );
			} else {
				Ret = TRUE;
			}
		}
		CloseHandle( hThread );
	}
	return( Ret );
}

BOOL Serial_SetCommBreak( void )
{
	BOOL	Ret;

	Ret = comS32_SetCommBreak();
	if ( TRUE == Ret ) {
		Sleep( 500 );
		Ret = Serial_ClearCommBreak();
	}
	return( Ret );
}

BOOL Serial_ClearCommBreak( void )
{
	return( comS32_ClearCommBreak() );
}

static void uart_tx_timeout(void)
{
	/* stop to check timeout */
	RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);

	EnterCriticalSection(&serial_drv_cs);
	if(tx_stat == T_REQUESTED)
	{
		to_cnt++;
		if(to_cnt < MAX_TX_TO_COUNT)
		{
			tx_stat = T_REQUESTING;

			/* transmit the request byte */
			PostThreadMessage(dwSndThreadID, WMUS_SEND, (WPARAM)tx_ptr, (LPARAM)tx_size);
		}
		/* timeout discontinued */
		else
		{
			tx_stat = T_IDLE;

			/* Inform the end of transmission */
			RSCIP_Uart_Tx_Done();
		}
	}
	LeaveCriticalSection(&serial_drv_cs);
}


/**
 ****************************************************************************************
 *
 * @file		SerialIF.cpp
 *
 * @brief	Serial Interface Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2156 $
 *
 ****************************************************************************************
 */

#include "StdAfx.h"
#include <windows.h>
#include <malloc.h>

#include "SerialIF.h"

#define RCV_BUFFER_SIZE					65535
#define WRITE_PERIODIC_TIMEOUT			INFINITE	/* WRITE_PERIODIC Sleep Timeout */
#define READ_PERIODIC_TIMEOUT			INFINITE	/* READ_PERIODIC  Sleep Timeout */

	#define RBL_DEBUG( x )
	#define RBL_DEBUG0( x )
	#define RBL_DEBUG1( x, a )
	#define RBL_DEBUG2( x, a, b )
	#define RBL_DEBUG3( x, a, b, c )
	#define RBL_DEBUG4( x, a, b, c, d )
	#define RBL_DEBUG5( x, a, b, c, d, e )
	#define RBL_DEBUG6( x, a, b, c, d, e, f )

typedef enum SLEEPEX_ALERTABLE_t {
	SLEEPEX_ALERTABLE_WAIT_IO_TIMEOUT		= 0,
	SLEEPEX_ALERTABLE_WAIT_IO_APC_INQUE,
	SLEEPEX_ALERTABLE_WAIT_IO_COMPLETION	= WAIT_IO_COMPLETION, 
} SLEEPEX_ALERTABLE;

/* COM port information */
static COMSTAT		ComStat;

/* ReadFile() / WriteFile()  Timeout information */
COMMTIMEOUTS		CommTimeOuts;

/* Communication device information */
TTYINFO				TTYInfo;
PTTYINFO			pTTYInfo = NULL;

uint32_t			dwBytesWritten = 0;				/* transmitted number of bytes */
uint32_t			dwBytesRead = 0;				/* transmitted number of bytes */

uint8_t				Write_Wait_Flag = FALSE;		/* Under transmission ? */
uint8_t				Read_Wait_Flag = FALSE;			/* Under reception ?    */
uint32_t			Write_Error = FALSE;
uint32_t			Read_Error = FALSE;

static uint32_t SetupConnection( void );
VOID WINAPI comS32_Callback( DWORD Error, DWORD Data_Size, LPOVERLAPPED Overlapped_p );

/*******************************************************************************
 *
 *   Opening of a NT serial communication device
 *
 ******************************************************************************/

/* Empty reading buffer in an early stage */
#define INIT_READBUF_SIZE		1024
uint8_t InitReadBuf[INIT_READBUF_SIZE];

/*---------------------------------------------------------------------------------------------
 *  Function name	: comS32_Open()
 *  Argument		: PTTYINFO pSetTTY
 *  retval			: uint32_t
 *  function		: Serial Port Open
 *  Comment			: 
 *--------------------------------------------------------------------------------------------*/
COMS32_RESULT comS32_Open( PTTYINFO pSetTTY )
{
	CHAR			*szPort_p;
#ifndef __OVERLAPPED_MODE__
	COMMTIMEOUTS	CommTimeOuts;
#endif
	BOOL			fRetVal;
	DWORD			err;

	if( pSetTTY == NULL ) {
		return( COMS32_RESULT_OPEN_ERROR );
	}

	if( pTTYInfo != NULL ) {
		return( COMS32_RESULT_OPEN_ERROR );
	}

	TTYInfo = *pSetTTY;
	pTTYInfo = &TTYInfo;

	/* Open COMM device */
	szPort_p = PORT( pTTYInfo );

	if ( NULL == szPort_p ) {
		return ( COMS32_RESULT_CTS_ERROR );
	}

	COMDEV( pTTYInfo ) = CreateFile( szPort_p,
									GENERIC_READ | GENERIC_WRITE,
									0,		/* exclusive access	*/
									NULL,	/* no security attrs */
									OPEN_EXISTING,
#ifdef __OVERLAPPED_MODE__
									FILE_ATTRIBUTE_NORMAL | FILE_FLAG_OVERLAPPED, /* overlapped I/O */
#else
									FILE_ATTRIBUTE_NORMAL, /* overlapped I/O */
#endif
									NULL );

	if ( COMDEV( pTTYInfo ) == ( HANDLE ) -1 ) {
		pTTYInfo = NULL;
		err = GetLastError();
 		return ( COMS32_RESULT_OPEN_ERROR );
	}

	/* ( Read ) */
#ifdef __OVERLAPPED_MODE__
	READ_OS( pTTYInfo ).Offset  = 0;
	READ_OS( pTTYInfo ).OffsetHigh  = 0;
	READ_OS( pTTYInfo ).hEvent = NULL;

	/* ( Write ) */
	WRITE_OS( pTTYInfo ).Offset  = 0;
	WRITE_OS( pTTYInfo ).OffsetHigh = 0;
	WRITE_OS( pTTYInfo ).hEvent = NULL;

	/* ( Event ) */
	EVENT_OS( pTTYInfo ).Offset  = 0;
	EVENT_OS( pTTYInfo ).OffsetHigh = 0;
	EVENT_OS( pTTYInfo ).hEvent = NULL;
#endif

	SetupComm( COMDEV( pTTYInfo ), IN_QUEUE, OUT_QUEUE );

	PurgeComm( COMDEV( pTTYInfo ), PURGE_TXABORT | PURGE_RXABORT |
									PURGE_TXCLEAR | PURGE_RXCLEAR );

	GetCommTimeouts( COMDEV( pTTYInfo ), &CommTimeOuts );
	/*	Teraterm
		ReadIntervalTimeout			= MAXWORD
		ReadTotalTimeoutMultiplier	= 0
		ReadTotalTimeoutConstant	= 0
		WriteTotalTimeoutMultiplier	= 0
		WriteTotalTimeoutConstant	= 0
		*/
	
	CommTimeOuts.ReadIntervalTimeout = MAXDWORD;

	CommTimeOuts.ReadTotalTimeoutMultiplier = MAXDWORD;
	CommTimeOuts.ReadTotalTimeoutConstant = MAXDWORD-1;

	CommTimeOuts.WriteTotalTimeoutMultiplier = 0;
	CommTimeOuts.WriteTotalTimeoutConstant = 0;

	SetCommTimeouts( COMDEV( pTTYInfo ), &CommTimeOuts );

	fRetVal = SetupConnection();
	if( fRetVal ) {
		CONNECTED( pTTYInfo ) = TRUE;
	} else {
		CONNECTED( pTTYInfo ) = FALSE;
		CloseHandle( COMDEV( pTTYInfo ) );
		pTTYInfo = NULL;
 		return ( COMS32_RESULT_DCB_ERROR );
	}

	uint32_t	dwErrorFlags;
	ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
	if( ComStat.fCtsHold == TRUE ) {
		CONNECTED( pTTYInfo ) = FALSE;
		CloseHandle( COMDEV( pTTYInfo ) );
		pTTYInfo = NULL;
		return ( COMS32_RESULT_CTS_ERROR );
	}
	return( COMS32_RESULT_OK );

} /* comS32_Open */

/*--------------------------------------------------------------------------------------
 *  Function name	: SetupConnection()
 *  Argument		: non
 *  retval			: TRUE / FALSE
 *  function		: The communication port which opened is established.
 *  Comment			:
 *--------------------------------------------------------------------------------------*/
static uint32_t SetupConnection( void )
{
	BOOL		fRetVal;
	uint8_t		bSet;
	DCB			dcb;

	if( NULL == pTTYInfo ) {
		return ( FALSE );
	}

	dcb.DCBlength = sizeof( DCB );

	GetCommState( COMDEV( pTTYInfo ), &dcb );

	dcb.BaudRate = BAUDRATE( pTTYInfo );
	dcb.ByteSize = BYTESIZE( pTTYInfo );
	dcb.Parity = PARITY( pTTYInfo );
	dcb.StopBits = STOPBITS( pTTYInfo );

	/* setup hardware flow control */
	bSet = ( uint8_t ) ( ( FLOWCTRL( pTTYInfo ) & FC_DTRDSR ) != 0 );

	dcb.fOutxDsrFlow = bSet;
	if ( bSet ) {
		dcb.fDtrControl = DTR_CONTROL_HANDSHAKE;
	} else {
		dcb.fDtrControl = DTR_CONTROL_ENABLE;
	}

	bSet = ( uint8_t ) ( ( FLOWCTRL( pTTYInfo ) & FC_RTSCTS ) != 0 );
	dcb.fOutxCtsFlow = bSet;
	if ( bSet ) {
		dcb.fRtsControl = RTS_CONTROL_HANDSHAKE;
	} else {
		dcb.fRtsControl = RTS_CONTROL_ENABLE;
	}

	/* setup software flow control */
	bSet = ( uint8_t ) ( ( FLOWCTRL( pTTYInfo ) & FC_XONXOFF ) != 0 );
	dcb.fInX = dcb.fOutX = bSet;

	dcb.XonLim = 100;
	dcb.XoffLim = 100;

	/* other various settings */
	dcb.fBinary = TRUE;
	dcb.fParity = TRUE;

	fRetVal = SetCommState( COMDEV( pTTYInfo ), &dcb );
	if( fRetVal == FALSE ) {
		GetLastError();
		return( fRetVal );
	}

	return ( fRetVal );	/* TRUE or FALSE */	

} /* end of SetupConnection() */


/*--------------------------------------------------------------------------------------
 *  Function name	: comS32_Close()
 *  Argument		: non
 *  retval			: TRUE / FALSE
 *  function		: Communication port is closed.
 *  Comment			:
 *--------------------------------------------------------------------------------------*/
COMS32_RESULT comS32_Close( void )
{
	if( NULL == pTTYInfo ) {
		return( COMS32_RESULT_CLOSE_ERROR );
	}

	if( !CONNECTED( pTTYInfo ) ) {
		return ( COMS32_RESULT_CLOSE_ERROR );
	}

	/* set connected flag to FALSE */
	CONNECTED( pTTYInfo ) = FALSE;

	/* drop DTR */
	EscapeCommFunction( COMDEV( pTTYInfo ), CLRDTR );

	PurgeComm( COMDEV( pTTYInfo ), PURGE_TXABORT | PURGE_RXABORT |
									PURGE_TXCLEAR | PURGE_RXCLEAR );

	CloseHandle( COMDEV( pTTYInfo ) );
	COMDEV( pTTYInfo ) = NULL;
	pTTYInfo = NULL;

	free( pTTYInfo );

	/* change the selectable items in the menu */
	return ( COMS32_RESULT_OK );
} /* comS32_Close */

/*--------------------------------------------------------------------------------------
 *  Function name	: comS32_SendBlock_Overlapped()
 *  Argument		: uint8_t  *buf
 *             		  uint32_t  size
 *             		  uint32_t  *reason
 *  retval			: TRUE / FALSE
 *  function		: A cereal transmission is performed.
 *  Comment			:
 *    - Beforehand, SetCommTimeouts(), establish Timeout value by the function.
 *    - FALSE reason
 *      0           : TimeOut
 *      0xFFFFFFFF  : Fatal error
 *      Others      : GetLastError()
 *--------------------------------------------------------------------------------------*/
#define COM_WRITEFILE_RETRY		1

#ifdef __OVERLAPPED_MODE__

int comS32_SendBlock_Overlapped( uint8_t *buf, uint32_t size, uint32_t *reason )
{
	uint32_t		dwErrorFlags;

	if( NULL == pTTYInfo ) {
		return ( FALSE );
	}
	if( !CONNECTED( pTTYInfo ) ) {
		return ( FALSE );
	}

	dwBytesWritten = 0;
	Write_Error = 0;
	Write_Wait_Flag = TRUE;
	
	ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
	if( ComStat.fCtsHold == TRUE ) {
		RBL_DEBUG1( "comS32_SendBlock_Overlapped ERROR! [fCtsHold = %d]\n", ComStat.fCtsHold );
		return ( FALSE );
	}

	if ( WriteFileEx( COMDEV( pTTYInfo ), ( LPSTR )buf, size, &WRITE_OS( pTTYInfo ), comS32_Callback ) == FALSE ) {
		( *reason ) = GetLastError();

		if( ComStat.fCtsHold == TRUE ) {
			RBL_DEBUG1( "comS32_SendBlock_Overlapped ERROR! [fCtsHold = %d]\n", ComStat.fCtsHold );
			return ( FALSE );
		}
		ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
		return( FALSE );
	}

	return( TRUE );
}

/*--------------------------------------------------------------------------------------
 *  Function name.	: comS32_SendBlock()
 *  Argument		: uint8_t  *buf
 *             		  uint32_t  size
 *             		  uint32_t  *written
 *             		  uint32_t  *reason
 *  retval			: TRUE / FALSE
 *  function		: A cereal transmission is performed.
 *  Comment			:
 *    - Beforehand, SetCommTimeouts(), establish Timeout value by the function.
 *    - FALSE reason
 *      0           : TimeOut
 *      0xFFFFFFFF  : Fatal error
 *      Others      : GetLastError()
 *--------------------------------------------------------------------------------------*/
int comS32_SendBlock( uint8_t *buf, uint32_t size, uint32_t *written, uint32_t *reason )
{
	int	Ret = TRUE;
	
#ifdef _RBL_DEBUG_WIN_
	Debug_Window_Send_Packet_Listup( buf, size );
	Check_Send_Packet_Wait();
#endif
#ifndef _RBL_DEBUG_WIN_UART_SEND_STOP_
	Ret = comS32_SendBlock_Overlapped( buf, size, reason );
	if ( Ret == TRUE ) {
		while( comS32_Write_Periodic( written, reason ) ) {
		}
		if ( *reason ) {
			RBL_DEBUG1( "[ERROR]comS32_SendBlock_Overlapped - reason:%ld\n", *reason );
			Ret = FALSE;
		}
		if( *written != size ) {
			RBL_DEBUG2( "[ERROR]comS32_SendBlock_Overlapped - written:%ld, size:%ld\n", *written, size );
			Ret = FALSE;
		}
	}
#endif
	return( Ret );
}

#else	/* #if __OVERLAPPED_MODE__ */

/*--------------------------------------------------------------------------------------
 *  Function name	: comS32_SendBlock()
 *  Argument		: uint8_t  *buf
 *             		  uint32_t  size
 *             		  uint32_t  *written
 *             		  uint32_t  *reason
 *  retval			: TRUE / FALSE
 *  function		: A cereal transmission is performed.
 *  Comment			:
 *    - Beforehand, SetCommTimeouts(), establish Timeout value by the function.
 *    - FALSE reason
 *      0           : TimeOut
 *      0xFFFFFFFF  : Fatal error
 *      Others      : GetLastError()
 *--------------------------------------------------------------------------------------*/
int comS32_SendBlock( uint8_t *buf, uint32_t size, uint32_t *written, uint32_t *reason )
{
	uint8_t		*pBuff;
	BOOL		fWriteStat;
	uint32_t		BytesWritten, *pBytesWritten;
	uint32_t		dwError;
	uint32_t		dwReason, *pReason;

	uint32_t		dwErrorFlags;

	if( written ) {
		( *written ) = 0;
		pBytesWritten = written;
	}
	else{
		BytesWritten = 0;
		pBytesWritten = &BytesWritten;
	}

	if( reason ) {
		( *reason ) = 0;
		pReason = reason;
	}
	else{
		dwReason = 0;
		pReason = &dwReason;
	}

	if( NULL == pTTYInfo ) {
		( *pReason ) = 0xFFFFFFFF;
		return ( FALSE );
	}
	if( !CONNECTED( pTTYInfo ) ) {
		( *pReason ) = 0xFFFFFFFF;
		return ( FALSE );
	}

	pBuff = buf;

	BytesWritten = 0;
	dwBytesWritten = 0;

	for( int_t i = 0; i < COM_WRITEFILE_RETRY; i++ ) {
		fWriteStat = WriteFile( COMDEV( pTTYInfo ), ( LPSTR )pBuff, size, &dwBytesWritten, 
								NULL );
		if( fWriteStat == FALSE ) {
			dwError = GetLastError();
			if( ( dwError == 0 ) || ( dwError == ERROR_COUNTER_TIMEOUT ) ) {
				/* Timeout or TxQueue Max Written */
				( *pReason ) = 0;
			}
			else{
				ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
				( *pReason ) = dwError;
				return( FALSE );
			}
		}
		if( ( *pBytesWritten ) == size ) {
			return( TRUE );
		}
		pBuff = buf + ( *pBytesWritten );
		size -= dwBytesWritten;

	}

	if( ( *pBytesWritten ) != size ) {
		ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
		( *pReason ) = 0;
		return( FALSE );
	}

	return( TRUE );
} /* comS32_SendBlock */
#endif	/* if __OVERLAPPED_MODE__ */

/*--------------------------------------------------------------------------------------
 *  Function name	: comS32_ReceiveBlock()
 *  Argument		: uint8_t   *buf
 *            		  uint32_t  size
 *  retval			: TRUE / FALSE
 *  function		: Cereal reception is performed.
 *  Comment			:
 *--------------------------------------------------------------------------------------*/
int comS32_ReceiveBlock( uint8_t *buf, uint32_t size )
{
	uint32_t		dwErrorFlags;

	if ( ( NULL == pTTYInfo ) || ( NULL == &pTTYInfo ) ) {
		return ( FALSE );
	}
	if( !CONNECTED( pTTYInfo ) ) {
		return ( FALSE );
	}
	if( size == 0 ) {
		return( FALSE );
	}
	
	if( ComStat.fCtsHold == TRUE ) {
		return ( FALSE );
	}
	if( size > 0 ) {
		Read_Wait_Flag = TRUE;
		Read_Error = 0;
		dwBytesRead = 0;
		if( ReadFileEx( COMDEV( pTTYInfo ), ( LPSTR )buf, size, &READ_OS( pTTYInfo ), comS32_Callback ) == FALSE ) {
			if( ComStat.fCtsHold == TRUE ) {
				return ( FALSE );
			}
			ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
		}
	}
	return( TRUE );
}

/*--------------------------------------------------------------------------------------
 *  Function name	: comS32_Callback()
 *  Argument		: DWORD  Error
 *            		  DWORD  Data_Size
 *             		  LPOVERLAPPED  Overlapped_p
 *  function		: The asynchronous communication call back function
 *  Comment			:
 *--------------------------------------------------------------------------------------*/
VOID WINAPI comS32_Callback( DWORD Error, DWORD Data_Size, LPOVERLAPPED Overlapped_p )
{
	if ( &WRITE_OS( pTTYInfo ) == Overlapped_p ) {
		Write_Wait_Flag = FALSE;
		Write_Error = Error;
		dwBytesWritten = Data_Size;
	} else if ( &READ_OS( pTTYInfo ) == Overlapped_p ) {
		Read_Wait_Flag = FALSE;
		Read_Error = Error;
		dwBytesRead = Data_Size;
	}
}

/*---------------------------------------------------------------------------------------------
 *  Function name	: comS32_Write_Periodic()
 *  Argument		: uint32_t	*data_size_p
 *					: uint32_t	*error_p
 *  retval			: int
 *  function		: I make a transmission thread stand by and if I return, transmission part-time work is acquired.
 *  Comment			: 
 *--------------------------------------------------------------------------------------------*/
int comS32_Write_Periodic( uint32_t *data_size_p, uint32_t *error_p )
{
	uint32_t	dwErrorFlags;
	DWORD		slp_result;
	
	slp_result = SleepEx( WRITE_PERIODIC_TIMEOUT, TRUE );
	
	if( WAIT_IO_COMPLETION == slp_result ) {
		if ( Write_Wait_Flag == FALSE ) {
			if ( Write_Error ) {
				ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
			}
			*data_size_p = dwBytesWritten;
			*error_p = Write_Error;
		}
	} else if( 0 == slp_result ) {	
		*data_size_p = 0;
		*error_p = SLEEPEX_ALERTABLE_WAIT_IO_TIMEOUT;

		Write_Wait_Flag = FALSE;
	} else {
		*data_size_p = 0;
		*error_p = SLEEPEX_ALERTABLE_WAIT_IO_APC_INQUE;

		Write_Wait_Flag = FALSE;
	}
	
	return( Write_Wait_Flag );
}

/*---------------------------------------------------------------------------------------------
 *  Function name	: comS32_Read_Periodic()
 *  Argument		: uint32_t	*data_size_p
 *  				: uint32_t	*error_p
 *  retval			: int
 *  function		: I make a reception thread stand by and if I return, transmission part-time work is acquired.
 *  Comment			: 
 *--------------------------------------------------------------------------------------------*/
int comS32_Read_Periodic( uint32_t *data_size_p, uint32_t *error_p )
{
	uint32_t	dwErrorFlags;
	DWORD		slp_result;
	
	slp_result = SleepEx( READ_PERIODIC_TIMEOUT, TRUE );
	
	if( WAIT_IO_COMPLETION == slp_result ) {
		if ( Read_Wait_Flag == FALSE ) {
			if ( Read_Error ) {
				ClearCommError( COMDEV( pTTYInfo ), &dwErrorFlags, &ComStat );
			}
			*data_size_p = dwBytesRead;
			*error_p = Read_Error;
		}
	} else if( 0 == slp_result ) {	
		*data_size_p = 0;
		*error_p = SLEEPEX_ALERTABLE_WAIT_IO_TIMEOUT;

		Read_Wait_Flag = FALSE;
	} else {
		*data_size_p = 0;
		*error_p = SLEEPEX_ALERTABLE_WAIT_IO_APC_INQUE;

		Read_Wait_Flag = FALSE;
	}
	
	return( Read_Wait_Flag );
}

/*---------------------------------------------------------------------------------------------
 *  Function name	: comS32_Purge()
 *  Argument		: non
 *  retval			: BOOL
 *  function		: Flash of COM port (The contents are erased.)
 *  Comment			: 
 *--------------------------------------------------------------------------------------------*/
BOOL comS32_Purge( void )
{
	return PurgeComm ( COMDEV( pTTYInfo ),
				PURGE_TXABORT |
				PURGE_TXCLEAR |
				PURGE_RXABORT |
				PURGE_RXCLEAR |
				0
				);
}

BOOL comS32_Exit_Periodic( HANDLE hThread )
{
	QueueUserAPC( Serial_Stop_APC, hThread, 0 );
	return( TRUE );
}

void APIENTRY Serial_Stop_APC( DWORD Data )
{
}

BOOL comS32_SetCommBreak( void )
{
	BOOL	Ret;

	if ( ( NULL == pTTYInfo ) || ( NULL == &pTTYInfo ) ) {
		Ret = FALSE;
	} else if( !CONNECTED( pTTYInfo ) ) {
		Ret = FALSE;
	} else {
		Ret = SetCommBreak(  COMDEV( pTTYInfo ) );
	}
	return( Ret );
}

BOOL comS32_ClearCommBreak( void )
{
	BOOL	Ret;

	if ( ( NULL == pTTYInfo ) || ( NULL == &pTTYInfo ) ) {
		Ret = FALSE;
	} else if( !CONNECTED( pTTYInfo ) ) {
		Ret = FALSE;
	} else {
		Ret = ClearCommBreak( COMDEV( pTTYInfo ) );
	}
	return( Ret );
}



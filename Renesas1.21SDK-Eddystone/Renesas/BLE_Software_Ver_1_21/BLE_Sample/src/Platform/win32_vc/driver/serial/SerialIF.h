/**
 ****************************************************************************************
 *
 * @file		SerialIF.h
 *
 * @brief	Serial Interface Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2144 $
 *
 ****************************************************************************************
 */

#ifndef	__SERIAL_IF__
#define	__SERIAL_IF__

#include	"types.h"

#define		__OVERLAPPED_MODE__			/* Asynchronous communication mode */

#define		BUFFER_SIZE	0x00010000		/* buffer size */

#define		DATA8		(uint32_t)8		/* Character size of 8 bits */
#define		DATA7		(uint32_t)7		/* Character size of 7 bits */
#define		STOPBIT1 	(uint32_t)0		/* Stop bit 1 */
#define		STOPBIT2	(uint32_t)1		/* Stop bit 2 */
#define		PARITY0		(uint32_t)0		/* parity non */
#define		PARITY1  	(uint32_t)1		/* Odd parity */
#define		PARITY2  	(uint32_t)2		/* Even parity */

// Flow control flags
#define		FC_NON			0x00
#define		FC_DTRDSR		0x01
#define		FC_RTSCTS		0x02
#define		FC_XONXOFF		0x04


#define COMDEV( x )			(x -> idComDev)
#define PORT( x )			(x -> lpszPort)
#define CONNECTED( x )		(x -> fConnected)
#define XONXOFF( x )		(x -> fXonXoff)
#define BYTESIZE( x )		(x -> bByteSize)
#define FLOWCTRL( x )		(x -> bFlowCtrl)
#define PARITY( x )			(x -> bParity)
#define STOPBITS( x )		(x -> bStopBits)
#define BAUDRATE( x )		(x -> dwBaudRate)
#define CURSORSTATE( x )	(x -> wCursorState)

#ifdef __OVERLAPPED_MODE__
	#define WRITE_OS( x )		(x -> osWrite)
	#define READ_OS( x )		(x -> osRead)
	#define EVENT_OS( x )		(x -> osEvent)
#endif

#define IN_QUEUE			BUFFER_SIZE		// Size of device receiving queue
#define OUT_QUEUE			BUFFER_SIZE		// Size of device transmitting queue

typedef enum COMS32_RESULT_enum {
	COMS32_RESULT_OK=				0x00,
	COMS32_RESULT_CANCEL,

	COMS32_RESULT_OPEN_ERROR,
	COMS32_RESULT_CLOSE_ERROR,
	COMS32_RESULT_PORT_SET_ERROR,
	COMS32_RESULT_DCB_ERROR,
	COMS32_RESULT_CTS_ERROR
} COMS32_RESULT;

typedef enum COMS32_OPEN_TYPE_enum {
	COMS32_OPEN_TYPE_OPEN,
	COMS32_OPEN_TYPE_INIFILE_UPDATE
} COMS32_OPEN_TYPE;

// Serial communication information structure
typedef struct tagTTYINFO {
	HANDLE idComDev;
	LPSTR lpszPort;
	BOOL fConnected;
	BOOL fXonXoff; 
	uint8_t bByteSize;
	uint8_t bFlowCtrl;
	uint8_t bParity;
	uint8_t bStopBits;
	uint32_t dwBaudRate;
#ifdef __OVERLAPPED_MODE__
	OVERLAPPED osWrite;
	OVERLAPPED osRead;
	OVERLAPPED osEvent;
#endif
} TTYINFO, *PTTYINFO ;

/**************************** PROTOTYPE Declaration ***********************************/
#ifdef __cplusplus
extern "C" {
#endif
	COMS32_RESULT		Serial_Open_Setting( void );
	COMS32_RESULT		comS32_Open( PTTYINFO pSetTTY );
	COMS32_RESULT		comS32_Close( void );
	int_t				comS32_SendBlock( uint8_t *buf, uint32_t size, uint32_t *written, uint32_t *reason );
	int_t				comS32_ReceiveBlock( uint8_t *buf, uint32_t size );
	void				receiveIdling( void );
	int_t				comS32_Write_Periodic( uint32_t *data_size_p, uint32_t *error_p );
	int_t				comS32_Read_Periodic( uint32_t *data_size_p, uint32_t *error_p );
	COMS32_RESULT		comS32_Reset(uint8_t bByteSize, uint8_t bFlowCtrl, uint8_t bParity, uint8_t bStopBits, uint32_t dwBaudRate );
	BOOL				comS32_Purge( void );
	BOOL comS32_Exit_Periodic( HANDLE hThread );
	void APIENTRY Serial_Stop_APC( DWORD Data );

	BOOL 				comS32_SetCommBreak( void );
	BOOL				comS32_ClearCommBreak( void );

#ifdef __cplusplus
}
#endif

#endif


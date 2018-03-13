/**
 ****************************************************************************************
 *
 * @file		console.c
 *
 * @brief	console Sample Source for rBLE Sample Program
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2156 $
 *
 ****************************************************************************************
 */

#include <windows.h>
#include <stdio.h>
#include <assert.h>
#include <stdarg.h>

#include	"console.h"
#include	"menu_sel.h"
#include	"rble_app.h"

/**************************** Define Declaration **************************************/
#define	CR_KEY_CODE				0x0d
#define	LF_KEY_CODE				0x0a
#define	ESC_KEY_CODE			0x1b
#define	BS_KEY_CODE				0x08

/**************************** PRIVATE PROTOTYPE Declaration ***************************/
void Control_Menu_Disp( SELECT_MENU *Menu_Arg_p );

/**************************** PRIVATE Memory Declaration ******************************/

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
#define KEY_BUF_MAX			100

    static char_t	Key_Buf[ KEY_BUF_MAX ];
	static int32_t			Key_Cnt;

    HANDLE			hStdin;
    HANDLE			hStdout;
	int32_t			Ret_Key = ESC_KEY_CODE;
	DWORD			Ret_Status;
	DWORD			Num;
	INPUT_RECORD	InBuf;
	char_t			*Result_p;
	char_t			*Result_Tmp_p;
	BOOL			Loop;
	int16_t			Key_Data;
	int8_t			BS_Key_Data[ 3 ];
	int_t			Ret_Temp;
	int_t			Base;

	hStdin = GetStdHandle( STD_INPUT_HANDLE );
	hStdout = GetStdHandle( STD_OUTPUT_HANDLE );
	if ( ( INVALID_HANDLE_VALUE != hStdin )
		&& ( INVALID_HANDLE_VALUE != hStdout ) ) {

		for ( Loop = TRUE; TRUE == Loop; ) {
			Ret_Status = WaitForSingleObject( hStdin, 1);
			if ( 0 == ( Ret_Status - WAIT_OBJECT_0 ) ) {
				Num = 0;
				Ret_Status = ReadConsoleInput( hStdin, &InBuf, 1, &Num );
				if ( KEY_EVENT == InBuf.EventType ) {
					Key_Data = InBuf.Event.KeyEvent.uChar.AsciiChar;
					if ( TRUE == InBuf.Event.KeyEvent.bKeyDown ) {
						if ( BS_KEY_CODE == Key_Data ) {
							if ( 0 != Key_Cnt ) {
								BS_Key_Data[ 0 ] = BS_KEY_CODE;
								BS_Key_Data[ 1 ] = ' ';
								BS_Key_Data[ 2 ] = BS_KEY_CODE;
								WriteConsole( hStdout, &BS_Key_Data[ 0 ], 3, &Num, NULL );
								Key_Cnt--;
								Key_Buf[ Key_Cnt ] = '\0';
							}
						} else {
							WriteConsole( hStdout, &Key_Data, 1, &Num, NULL );
							if ( ( CR_KEY_CODE == Key_Data )
								|| ( LF_KEY_CODE == Key_Data ) ) {
								if ( 0 != Key_Cnt ) {
									RBLE_Parameter_Cnt = 0;
									Ret_Key = strtol( Key_Buf, &Result_p, 10 );
									if ( Key_Buf == Result_p ) {
										Ret_Key = CR_KEY;
									} else if ( &Key_Buf[ Key_Cnt ] != Result_p ) {
										for ( ; ( ( ' ' == ( *Result_p ) ) && ( RBLE_Parameter_Cnt < RBLE_PARAMETER_MAX ) ); ) {
											if ( ( '0' == Result_p[ 1 ] ) && ( 'x' == Result_p[ 2 ] ) ) {
												Base = 16;
											} else {
												Base = 10;
											}
											Ret_Temp = strtol( Result_p, &Result_Tmp_p, Base );
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
								Loop = FALSE;
								Menu_Key_Select( Ret_Key );
							} else if ( ESC_KEY_CODE == Key_Data ) {
								Ret_Key = ESC_KEY;
								Loop = FALSE;
								Menu_Key_Select( Ret_Key );
								Key_Buf[ 0 ] = '\0';
								Key_Cnt = 0;
							} else {
								Key_Buf[ Key_Cnt ] = ( char_t )Key_Data;
								Key_Cnt++;
								Key_Buf[ Key_Cnt ] = '\0';
							}
						}
					}
				}
			} else if (1 == ( Ret_Status - WAIT_OBJECT_0)) {
				Loop = FALSE;
			} else if ( WAIT_TIMEOUT == Ret_Status ) {
				Loop = FALSE;
			} else {
				fprintf( stderr,"Console function error\n");
				Loop = FALSE;
			}
		}
	}
	return( Ret_Key );
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
	uint16_t		Ret = FALSE;
	DWORD			Ret_Status;
    HANDLE			hStdin;
    HANDLE			hStdout;
	DWORD			Num;
	INPUT_RECORD	InBuf;
	BOOL			Loop;

	hStdin = GetStdHandle( STD_INPUT_HANDLE );
	hStdout = GetStdHandle( STD_OUTPUT_HANDLE );
	if ( ( INVALID_HANDLE_VALUE != hStdin )
		&& ( INVALID_HANDLE_VALUE != hStdout ) ) {
		Ret = TRUE;
		for ( Loop = TRUE; TRUE == Loop; ) {
			Ret_Status = WaitForSingleObject( hStdin, 10ul );
			if ( 0 == ( Ret_Status - WAIT_OBJECT_0 ) ) {
				Num = 0;
				ReadConsoleInput( hStdin, &InBuf, 1, &Num );
				if ( KEY_EVENT != InBuf.EventType ) {
					Loop = FALSE;
				}
			} else if (1 == ( Ret_Status - WAIT_OBJECT_0)) {
				Loop = FALSE;
			} else if ( WAIT_TIMEOUT == Ret_Status ) {
				Loop = FALSE;
			} else {
				fprintf( stderr,"Console function error(%d)\n", Ret_Status );
				Loop = FALSE;
			}
		}
	}
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
void Console_Terminate( void )
{
}

void Console_SetInput( int16_t KeyNo )
{
	INPUT_RECORD	InBuf;
    HANDLE			hStdin;
	uint32_t		Num;
	int8_t			*Wr_p;
	uint32_t		i;
	int8_t			KeyData[ 10 ];
	uint32_t		Cnt;

	wsprintf( KeyData, "%d\n", KeyNo );
	Cnt = strlen( KeyData );

	hStdin = GetStdHandle( STD_INPUT_HANDLE );
	if ( INVALID_HANDLE_VALUE != hStdin ) {
		InBuf.EventType = KEY_EVENT;
		for ( i = 0, Wr_p = KeyData;i < Cnt;i++, Wr_p++ ) {
			InBuf.Event.KeyEvent.bKeyDown = TRUE;
			InBuf.Event.KeyEvent.uChar.AsciiChar = *Wr_p;
			WriteConsoleInput( hStdin, &InBuf, 1, &Num );
			InBuf.Event.KeyEvent.bKeyDown = FALSE;
			WriteConsoleInput( hStdin, &InBuf, 1, &Num );
		}
	}
}

void Console_SetInput_n( int16_t *KeyNo_p, int_t Key_Cnt )
{
	INPUT_RECORD	InBuf;
    HANDLE			hStdin;
	uint32_t		Num;
	int8_t			*Wr_p;
	int_t			n;
	uint32_t		i;
	int8_t			KeyData[ 10 ];
	uint32_t		Cnt;

	hStdin = GetStdHandle( STD_INPUT_HANDLE );
	for ( n = 0;n < Key_Cnt;n++, KeyNo_p++ ) {
		wsprintf( KeyData, "%d", *KeyNo_p );
		Cnt = strlen( KeyData );

		if ( INVALID_HANDLE_VALUE != hStdin ) {
			InBuf.EventType = KEY_EVENT;
			for ( i = 0, Wr_p = KeyData;i < Cnt;i++, Wr_p++ ) {
				InBuf.Event.KeyEvent.bKeyDown = TRUE;
				InBuf.Event.KeyEvent.uChar.AsciiChar = *Wr_p;
				WriteConsoleInput( hStdin, &InBuf, 1, &Num );
				InBuf.Event.KeyEvent.bKeyDown = FALSE;
				WriteConsoleInput( hStdin, &InBuf, 1, &Num );
			}
		}
	}
	wsprintf( KeyData, "\n" );
	Cnt = strlen( KeyData );

	if ( INVALID_HANDLE_VALUE != hStdin ) {
		InBuf.EventType = KEY_EVENT;
		for ( i = 0, Wr_p = KeyData;i < Cnt;i++, Wr_p++ ) {
			InBuf.Event.KeyEvent.bKeyDown = TRUE;
			InBuf.Event.KeyEvent.uChar.AsciiChar = *Wr_p;
			WriteConsoleInput( hStdin, &InBuf, 1, &Num );
			InBuf.Event.KeyEvent.bKeyDown = FALSE;
			WriteConsoleInput( hStdin, &InBuf, 1, &Num );
		}
	}
}

void Console_SetInput_ESCKEY( void )
{
	INPUT_RECORD	InBuf;
    HANDLE			hStdin;
	uint32_t		Num;

	hStdin = GetStdHandle( STD_INPUT_HANDLE );
	if ( INVALID_HANDLE_VALUE != hStdin ) {
		InBuf.EventType = KEY_EVENT;
		InBuf.Event.KeyEvent.bKeyDown = TRUE;
		InBuf.Event.KeyEvent.uChar.AsciiChar = ESC_KEY_CODE;
		WriteConsoleInput( hStdin, &InBuf, 1, &Num );
		InBuf.Event.KeyEvent.bKeyDown = FALSE;
		WriteConsoleInput( hStdin, &InBuf, 1, &Num );
	}
}

void Console_SetTextAttribute( uint32_t Set_Attribute )
{
    HANDLE			hStdout;
	WORD			Attribute;

	if ( 0 != ( Set_Attribute & COLOR_LIGHT ) ) {
		Attribute = FOREGROUND_INTENSITY;
	} else {
		Attribute = 0;
	}
	if ( 0 != ( Set_Attribute & COLOR_RED ) ) {
		Attribute |= FOREGROUND_RED;
	} else {
	}
	if ( 0 != ( Set_Attribute & COLOR_GREEN ) ) {
		Attribute |= FOREGROUND_GREEN;
	}
	if ( 0 != ( Set_Attribute & COLOR_BLUE ) ) {
		Attribute |= FOREGROUND_BLUE;
	}
	hStdout = GetStdHandle( STD_OUTPUT_HANDLE );
	if ( INVALID_HANDLE_VALUE != hStdout ) {
		SetConsoleTextAttribute( hStdout, Attribute );
	}
}

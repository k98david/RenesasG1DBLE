/**
 ****************************************************************************************
 *
 * @file		timer.cpp
 *
 * @brief	timer control module
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2154 $
 *
 ****************************************************************************************
 */

#include	"stdafx.h"
#include	<windows.h>
#include    <stdlib.h>
#include    <string.h>
#include	<time.h>

#include	"rble.h"
#include	"timer.h"


/**************************** define Declaration **************************************/
/**************************** structure Declaration ***********************************/
typedef struct {
	uint16_t		Timer_Cnt;
	BOOL			Timer_Flg;					/* Timeup Flg */
	RBLE_FUNC		Timer_Func;
} TIMER_MEM;

/**************************** PRIVATE Memory Declaration ******************************/
TIMER_MEM		rBLE_Timer_Mem[ _RBLE_TIMER_MAX ];
UINT			rBLE_TimerID = 0;				/* rBLE Timer ID */

/**************************** PRIVATE PROTOTYPE Declaration ***************************/
static RBLE_STATUS Set_Timer( int_t No, RBLE_FUNC Func, uint16_t Timer_Cnt );
static RBLE_STATUS Clear_Timer( int_t Id );
void CALLBACK rBLE_TimerFunc( HWND hwnd, UINT uMsg, UINT idEvent, DWORD dwTime );

/******************************* Program Area *****************************************/

/* Timer Inititalize */
RBLE_STATUS RBLE_Init_Timer( void )
{
	RBLE_STATUS		Ret;
	int_t			i;

	Ret = RBLE_OK;

	if ( 0 == rBLE_TimerID ) {
		for ( i = 0;i < _RBLE_TIMER_MAX;i++ ) {
			Clear_Timer( i );
		}
		/* A timer is started. */
		rBLE_TimerID = SetTimer( NULL, 0, 10, rBLE_TimerFunc );
		if ( 0 == rBLE_TimerID ) {
			/** Error **/
			Ret = RBLE_ERR;
		}
	}
	return( Ret );
}

/* Timer Set */
RBLE_STATUS RBLE_Set_Timer( RBLE_FUNC Func, uint16_t Timer_Cnt )
{
	return( Set_Timer( _RBLE_TIMER_ID_RSCIP, Func, Timer_Cnt ) );
}

/* Timer Clear */
RBLE_STATUS RBLE_Clear_Timer( void )
{
	return( Clear_Timer( _RBLE_TIMER_ID_RSCIP ) );
}

/* Timer Set */
RBLE_STATUS RBLE_Set_Timer_Id( int_t Id, RBLE_FUNC Func, uint16_t Timer_Cnt )
{
	return( Set_Timer( Id, Func, Timer_Cnt ) );
}

/* Timer Clear */
RBLE_STATUS RBLE_Clear_Timer_Id( int_t Id )
{
	return( Clear_Timer( Id ) );
}

void rBLE_Is_Timeup_Call_Func( void )
{
	RBLE_FUNC	Func_Temp;
	int_t		i;

	for ( i = 0;i < _RBLE_TIMER_MAX;i++ ) {
		if ( 0 != rBLE_Timer_Mem[ i ].Timer_Flg ) {
			rBLE_Timer_Mem[ i ].Timer_Flg = false;
			Func_Temp = rBLE_Timer_Mem[ i ].Timer_Func;
			( Func_Temp )();
		}
	}
}

void RBLE_Terminate_Timer( void )
{
	int_t		i;

	if ( 0 != rBLE_TimerID ) {
		KillTimer( NULL, rBLE_TimerID );
		rBLE_TimerID = 0;
		for ( i = 0;i < _RBLE_TIMER_MAX;i++ ) {
			Clear_Timer( i );
		}
	}
}

/* Timer Set */
static RBLE_STATUS Set_Timer( int_t No, RBLE_FUNC Func, uint16_t Timer_Cnt )
{
	RBLE_STATUS		Ret;
	Ret = RBLE_OK;

	if ( 0 == rBLE_TimerID ) {
		/** Error **/
		Ret = RBLE_ERR;
	} else {
		rBLE_Timer_Mem[ No ].Timer_Flg = FALSE;
		rBLE_Timer_Mem[ No ].Timer_Cnt = Timer_Cnt;
		rBLE_Timer_Mem[ No ].Timer_Func = Func;
	}
	return( Ret );
}

/* Timer Clear */
static RBLE_STATUS Clear_Timer( int_t Id )
{
	rBLE_Timer_Mem[ Id ].Timer_Flg = FALSE;
	rBLE_Timer_Mem[ Id ].Timer_Cnt = 0;
	return( RBLE_OK );
}

void CALLBACK rBLE_TimerFunc( HWND hwnd, UINT uMsg, UINT idEvent, DWORD dwTime )
{
	int_t		i;

	for ( i = 0;i < _RBLE_TIMER_MAX;i++ ) {
		if ( 0 != rBLE_Timer_Mem[ i ].Timer_Cnt ) {
			rBLE_Timer_Mem[ i ].Timer_Cnt--;
			if ( 0 == rBLE_Timer_Mem[ i ].Timer_Cnt ) {
				rBLE_Timer_Mem[ i ].Timer_Flg = true;
			}
		}
	}
}

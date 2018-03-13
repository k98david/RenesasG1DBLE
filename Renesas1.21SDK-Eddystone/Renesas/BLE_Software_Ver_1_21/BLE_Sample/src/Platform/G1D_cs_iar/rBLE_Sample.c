/**
 ****************************************************************************************
 *
 * @file		rBLE_Sample.c
 *
 * @brief	rBLE Sample Source
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2297 $
 *
 ****************************************************************************************
 */

#include	"arch.h"
#include	"rble.h"
#include	"rble_Host.h"
#include	"rble_app.h"
#include	"console.h"
#include	"timer.h"
#include	"plf.h"
#include    "led.h"

/**************************** PUBLIC Memory Declaration *******************************/
extern BOOL				Exit_Flg;

/**************************** PROTOTYPE Declaration ***********************************/
void main( void );

/**************************** PRIVATE Memory Declaration ******************************/

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
void main( void )
{

	plf_init();
    
    led_init();
    
    led_set_blink_time(50); // 50*10ms interval

	GLOBAL_INT_START();

	if ( RBLE_OK == RBLE_Init_Timer() ) {
		/* rBLE Application Intialize */
		if ( TRUE == RBLE_App_Init() ) {
			for ( ; FALSE == Exit_Flg ; ) {
				rBLE_Run();
				Console_GetInput();
			}

			rBLE_Exit();
		}
	}
}


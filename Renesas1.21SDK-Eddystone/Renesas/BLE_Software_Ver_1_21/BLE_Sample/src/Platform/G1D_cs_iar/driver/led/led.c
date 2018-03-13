/**
 ****************************************************************************************
 *
 * @file		led.c
 *
 * @brief	LED initialisation and behaviour functions.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2297 $
 *
 ****************************************************************************************
 */

/**
 ****************************************************************************************
 * @addtogroup PLATFORM_DRIVERS
 * @{
 ****************************************************************************************
 */
/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "arch.h"

//port sttings utilities
#include "port.h"

//led defines
#include "led.h"

#include	"timer.h"

/*
 * DEFINES
 ****************************************************************************************
 */



/*
 * GLOBAL VARIABLE DECLARATIONS
 ****************************************************************************************
 */

static uint16_t	Led_Blink_Time;

/*
 * FUNCTION DEFINITIONS
 ****************************************************************************************
 */
static void led_pin_init(void);
static void led_blink( void );

/**
 *****************************************************************************************
 * @brief Static function for Port initialization needed for LED related pins.
 *****************************************************************************************
 */
static void led_pin_init(void)
{
    // set digital in/out mode
    write1_sfr(PMC12, 0, 0);
    write1_sfr(PMC14, 7, 0);

    //clear port register(extension board LED)
    write1_sfr(P12, 0, 0);
    write1_sfr(P14, 7, 0);

    //use port as output
    write1_sfr(PM12,  0, PORT_OUTPUT);
    write1_sfr(PM14,  7, PORT_OUTPUT);
}

void led_init(void)
{
    //port settings
    led_pin_init();

	RBLE_Init_Timer();

    //initialise LEDs
    write1_sfrbit(LED01, ON);
    write1_sfrbit(LED02, OFF);

}

void led_set_blink_time( uint16_t time_cnt )
{
	Led_Blink_Time = time_cnt;

	RBLE_Set_Timer_Id( _RBLE_TIMER_ID_LED, led_blink, Led_Blink_Time );
}

static void led_blink( void )
{
	//toggle led1
	toggle1_sfrbit(LED01);
	//toggle led2
	toggle1_sfrbit(LED02);

	RBLE_Set_Timer_Id( _RBLE_TIMER_ID_LED, led_blink, Led_Blink_Time );
}


/// @} module

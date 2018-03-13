/**
 ****************************************************************************************
 *
 * @file		led.h
 *
 * @brief	LED driver: control and defines for simple LED initialization and control.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2013-2014 Renesas Electronics Corporation
 *
 * $Rev: 2297 $
 *
 ****************************************************************************************
 */

#ifndef LED_H_
#define LED_H_

/**
 ****************************************************************************************
 * @addtogroup PLATFORM_DRIVERS
 * @brief LED driver.
 *
 * This driver allows simple initialisation of LED related registers and generating
 * a simple functionality for each passing in the main FW loop.
 *
 * @{
 ****************************************************************************************
 */


/*
 * DEFINES
 ****************************************************************************************
 */
#if (defined(_USE_REL_RL78) || defined(_USE_GCC_RL78))
 ///LED01 is pin 0 of Port 12
 #define LED01        P12.0

 ///LED2 is pin 7 on Port 14
 #define LED02        P14.7
#else
 ///LED01 is pin 0 of Port 12
 #define LED01        P12_bit.no0

 ///LED2 is pin 7 on Port 14
 #define LED02        P14_bit.no7
#endif

///LED on value is actually false
#define ON           0

///LED off value is actually true
#define OFF          1

///10ms timer
#define PERIOD_1SEC  100U

///TAU Configuration channel 00
#define CK00_FREQ_CPU         0x00
#define CK00_FREQ_CPU_2       0x01
#define CK00_FREQ_CPU_4       0x02
#define CK00_FREQ_CPU_8       0x03
#define CK00_FREQ_CPU_16      0x04
#define CK00_FREQ_CPU_32      0x05
#define CK00_FREQ_CPU_64      0x06
#define CK00_FREQ_CPU_128     0x07
#define CK00_FREQ_CPU_256     0x08
#define CK00_FREQ_CPU_512     0x09
#define CK00_FREQ_CPU_1024    0x0A
#define CK00_FREQ_CPU_2048    0x0B
#define CK00_FREQ_CPU_4096    0x0C
#define CK00_FREQ_CPU_8192    0x0D
#define CK00_FREQ_CPU_16384   0x0E
#define CK00_FREQ_CPU_32768   0x0F


/*
 * GLOBAL VARIABLE DECLARATIONS
 ****************************************************************************************
 */


/*
 * FUNCTION DECLARATIONS
 ****************************************************************************************
 */
/**
 ****************************************************************************************
 * @brief Initialisation for LED related ports, timers and interrupt registers.
 ****************************************************************************************
 */
void led_init(void);

void led_set_blink_time( uint16_t time_cnt );

/// @} module

#endif // LED_H_

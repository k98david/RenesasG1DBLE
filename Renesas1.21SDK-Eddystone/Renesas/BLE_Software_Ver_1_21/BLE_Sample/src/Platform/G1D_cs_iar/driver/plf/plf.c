/**
 ****************************************************************************************
 *
 * @file plf.c
 *
 * @brief This file contains the Low Level RENESAS RL78 MCU clock initialisation functions.
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * $Rev: 2171 $
 *
 * Copyright(C) 2012-2014 Renesas Electronics Corporation
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

///Include corresponding header file
#include "ll.h"

#include "port.h"
#include "plf.h"


/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */
#ifdef _USE_IAR_RL78
///Option Byte section definition
__root __far const uint8_t ll_option_bytes[OPT_BYTES_SIZE]  @ 0x00C0=
                                                                       {WATCHDOG_DISABLED,
                                                                        LVD_MODE_1_63V,
                                                                        FRQ_8MHZ,
                                                                        OCD_ENABLED,};

///Security Byte Definition
__root __far const uint8_t ll_secu_id[SECU_ID_SIZE] @ 0x00C4=
                                                         { 0xff, 0xff, 0xff, 0xff, 0xff,
                                                           0xff, 0xff, 0xff, 0xff, 0xff };
#endif //_USE_STD_C99


/*
 * FUNCTION DEFINITIONS
 ****************************************************************************************
 */
/**
 *****************************************************************************************
 * @brief Static function for setting for the BLE HW interrupt
 *****************************************************************************************
 */
static void plf_irq_init(void)
{
    //falling edge detection
    write1_sfr(EGN1, 3, 1);

    //set interrupt priority as level2
    write1_sfrbit(PPR111, 1);
    write1_sfrbit(PPR011, 0);

    //clear interrupt request flag
    write1_sfrbit(PIF11, IRQ_CLEAR);

    //enable ext. INTP11 interrupt
    write1_sfrbit(PMK11, IRQ_ENABLE);
}

/**
 *****************************************************************************************
 * @brief Static function for the RF to setting Clock Output as sleep clock
 *****************************************************************************************
 */
static void plf_clkoutput_init(void)
{
    //Configuration of Clock Output
    write_sfr(CKS0, 0x09); /* Supply of 16.384kHz clock */

    //Output port settings
    write1_sfr(P7, 6, 1);
    write1_sfr(PM7, 6, 0);

    write1_sfr(PM14, 0, 0);
    write1_sfr(P14, 0, 0);

    write1_sfrbit(PCLOE0, 1); /* Output enable */
}

/**
 *****************************************************************************************
 * @brief Static function for port setting
 *****************************************************************************************
 */
static void plf_port_init(void)
{
    //P0.2 Digital i/o
    write1_sfr(PMC0, 2, 0);
    //P0.3 Digital i/o
    write1_sfr(PMC0, 3, 0);
    //A/D port configuration
    write_sfr(ADPC, 0x01);

    /* set the serial output pin, to avoid falling low-level */
    write1_sfr(P0, 2, PORT_LATCH);  // for CSI-SCK10
    write1_sfr(P0, 4, PORT_LATCH);  // for UART-TxD1
    write1_sfr(P2, 3, PORT_LATCH);  // for WAKEUP

    /*Pin I/O mode setting*/
    write_sfr(PM0,  0xEF);
    write_sfr(PM1,  0x7F);
    write_sfr(PM2,  0xFF);
    write_sfr(PM3,  0xFD);
    write_sfr(PM4,  0xF1);
    write_sfr(PM5,  0xC0);
    write_sfr(PM6,  0xF3);
    write_sfr(PM7,  0xF7);
    write_sfr(PM12, 0xFF);
    write_sfr(PM14, 0xBD);
}


void plf_init (void)
{
    volatile uint32_t wait_cnt;

    // fMAIN = 8MHz for Internal high-speed oscillator
    /*Set clock operation mode:  High-speed system clock pin in Input port mode
                                 XT1 and XT2 pin in XT1 oscillation mode                */
    write_sfr(CMC, (X1_X2_INP1 | XT1_XT2_RES));

    //Change clock generator setting, if necessary
    write_sfr(CKC, 0x00); /* Internal high-speed oscillation clock */

    // Start the XT1 oscillator operation
    write1_sfrbit(XTSTOP, 0);

    // XT1 oscillation stabilization wait time.
    // about 1s.
    wait_cnt = XT1_OSC_WAIT_TIME;

    while(wait_cnt != 0UL)
    {
        wait_cnt--;
    }

    //port settings for port mode(A/D)
    plf_port_init();

    //port settings for interrupt pin from BLE core
    plf_irq_init();

    //Configuration of Clock Output
    plf_clkoutput_init();
}

#ifdef _USE_REL_RL78
/**
 *****************************************************************************************
 * @brief The function which gets PSW status
 *****************************************************************************************
 */
__istate_t __get_interrupt_state(void)
{
    #asm
    mov    a, PSW
    mov    c, a
    #endasm
}
#endif //_USE_REL_RL78


/// @} module

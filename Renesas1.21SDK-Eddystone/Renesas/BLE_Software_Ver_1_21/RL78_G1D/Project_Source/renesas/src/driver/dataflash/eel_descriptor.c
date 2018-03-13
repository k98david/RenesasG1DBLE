/**
 ****************************************************************************************
 *
 * @file eel_descriptor.c
 *
 * @brief DATAFLASH driver
 *
 * Copyright(C) 2012-2014 Renesas Electronics Corporation
 *
 * rev.205
 *
 ****************************************************************************************
 */

/*
 * COMPILER SETTING
 ****************************************************************************************
 */
#if defined(_USE_REL_RL78)
#pragma name EEL_DESCRIPTOR
#pragma sfr

#ifdef __K0R_LARGE__
  #pragma section @@DATAL EEL_UDAT
#else
  #pragma section @@DATA  EEL_UDAT
#endif

#pragma section @@CNSTL EEL_CNST

#define _EEL_CNST
#define _EEL_UDAT
#else
#define _EEL_CNST _Pragma("location=\"EEL_CNST\"")
#define _EEL_UDAT _Pragma("location=\"EEL_UDAT\"") __NO_INIT
#endif

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include  "arch.h"
#include  "co_bt.h"
#include  "eel_types.h"
#include  "eel_descriptor.h"
#include  "Quan_iBeacon.h"
/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */
_EEL_UDAT eel_u16   EEL_var_ref[1];   /* dummy address for FAL variant */

/*********************************************************************************************************/
/*******      B E G I N    O F    C U S T O M I Z A B L E    D E C L A R A T I O N    A R E A      *******/
/*********************************************************************************************************/

_EEL_CNST __far const eel_u08 eel_descriptor[EEL_VAR_NO+1][4] =
            {
                /*  identifier        word-size (1...64)            byte-size (1..255)     RAM-Ref. */
                {(eel_u08)EEL_ID_BDA, (eel_u08)((BD_ADDR_LEN+3)/4), (eel_u08)BD_ADDR_LEN,  0x01},
		{(eel_u08)EEL_ID_BDA2, (eel_u08)((iBeacon_Flash_UUID_Len+3)/4), (eel_u08)iBeacon_Flash_UUID_Len,  0x01},
		{(eel_u08)EEL_ID_BDA3, (eel_u08)((iBeacon_Flash_Major_Len+3)/4), (eel_u08)iBeacon_Flash_Major_Len,  0x01},
		{(eel_u08)EEL_ID_BDA4, (eel_u08)((iBeacon_Flash_Minor_Len+3)/4), (eel_u08)iBeacon_Flash_Minor_Len,  0x01},
		{(eel_u08)EEL_ID_BDA5, (eel_u08)((iBeacon_Flash_Advint_Len+3)/4), (eel_u08)iBeacon_Flash_Advint_Len,  0x01},
		{(eel_u08)EEL_ID_BDA6, (eel_u08)((iBeacon_Flash_1mPower_Len+3)/4), (eel_u08)iBeacon_Flash_1mPower_Len,  0x01},
		{(eel_u08)EEL_ID_BDA7, (eel_u08)((iBeacon_Flash_TXpower_Len+3)/4), (eel_u08)iBeacon_Flash_TXpower_Len,  0x01},
                {(eel_u08)0x00,       (eel_u08)(0x00),              (eel_u08)(0x00),       0x00}, 
            };

/*********************************************************************************************************/
/*******      E N D    O F    C U S T O M I Z A B L E    D E C L A R A T I O N    A R E A          *******/
/*********************************************************************************************************/

/* ----------------------------------------------------------------------------------------------------- */
/* ------     B E G I N    O F    U N T O U C H A B L E     D E C L A R A T I O N    A R E A       ----- */
/* ----------------------------------------------------------------------------------------------------- */
_EEL_CNST __far const eel_u08   eel_refresh_bth_u08     = (eel_u08)EEL_REFRESH_BLOCK_THRESHOLD;
_EEL_CNST __far const eel_u08   eel_storage_type_u08    = (eel_u08)EEL_STORAGE_TYPE;
_EEL_CNST __far const eel_u08   eel_var_number_u08      = (eel_u08)EEL_VAR_NO;
/* ----------------------------------------------------------------------------------------------------- */
/* ------     E N D    O F    U N T O U C H A B L E     D E C L A R A T I O N    A R E A           ----- */
/* ----------------------------------------------------------------------------------------------------- */

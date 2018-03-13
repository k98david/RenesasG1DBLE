/**
 ****************************************************************************************
 *
 * @file fal_descriptor.c
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
#pragma name FAL_DESCR

/* constant segment definition */
#pragma section @@CNSTL FAL_CNST
#define _FAL_CNST
#else
#define _FAL_CNST _Pragma("location=\"FAL_CNST\"")
#endif

/* ----------------------------------------------------------------------------------------------------- */
/* ------     B E G I N    O F    U N T O U C H A B L E     D E C L A R A T I O N    A R E A       ----- */
/* ----------------------------------------------------------------------------------------------------- */

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "fal_descriptor.h"

#if (EEL_POOL_SIZE>FAL_POOL_SIZE)
  #error "EEL pool exceeds the FAL pool! Please adapt EEL_POOL_SIZE definition in fal_descriptor.h"
#endif

/*
 * DEFINES
 ****************************************************************************************
 */
/* specify the flash block size expressed in bytes */
#define   FAL_BLOCK_SIZE                (1*1024)

/* data flash start and end address                */
#define   FAL_DATA_FLASH_START_ADDR     0x000F1000
#define   FAL_DATA_FLASH_END_ADDR       0x000F1FFF


/* FAL POOL CONFIGURATION */

#define FAL_POOL_FIRST_BLOCK            0

#if (FAL_POOL_SIZE>0)
  #define FAL_POOL_LAST_BLOCK           (FAL_POOL_SIZE - 1)
  #define FAL_POOL_FIRST_ADDRESS        FAL_DATA_FLASH_START_ADDR
  #define FAL_POOL_LAST_ADDRESS         ( FAL_POOL_FIRST_ADDRESS + (FAL_BLOCK_SIZE*FAL_POOL_LAST_BLOCK) + (FAL_BLOCK_SIZE-1) )
  #define FAL_POOL_WSIZE                (FAL_POOL_SIZE*FAL_BLOCK_SIZE/4)
  #define FAL_POOL_FIRST_WIDX           0
  #define FAL_POOL_LAST_WIDX            (FAL_POOL_WSIZE - 1)
  #define FAL_BLOCK_WSIZE               (FAL_BLOCK_SIZE/4)
#else
  #define FAL_POOL_LAST_BLOCK           0
  #define FAL_POOL_FIRST_ADDRESS        0
  #define FAL_POOL_LAST_ADDRESS         0
  #define FAL_POOL_WSIZE                0
  #define FAL_POOL_FIRST_WIDX           0
  #define FAL_POOL_LAST_WIDX            0
  #define FAL_BLOCK_WSIZE               0
#endif



/* EEL POOL CONFIGURATION */

#define EEL_POOL_FIRST_BLOCK            0

#if (EEL_POOL_SIZE>0)
  #define EEL_POOL_LAST_BLOCK           (EEL_POOL_FIRST_BLOCK + EEL_POOL_SIZE - 1)
  #define EEL_POOL_FIRST_ADDRESS        FAL_POOL_FIRST_ADDRESS
  #define EEL_POOL_LAST_ADDRESS         ( FAL_POOL_FIRST_ADDRESS + ( FAL_BLOCK_SIZE*EEL_POOL_LAST_BLOCK ) + (FAL_BLOCK_SIZE-1) )
  #define EEL_POOL_WSIZE                (EEL_POOL_SIZE*FAL_BLOCK_SIZE/4)
  #define EEL_POOL_FIRST_WIDX           0
  #define EEL_POOL_LAST_WIDX            (EEL_POOL_WSIZE - 1)
#else
  #define EEL_POOL_LAST_BLOCK           0
  #define EEL_POOL_FIRST_ADDRESS        0
  #define EEL_POOL_LAST_ADDRESS         0
  #define EEL_POOL_WSIZE                0
  #define EEL_POOL_FIRST_WIDX           0
  #define EEL_POOL_LAST_WIDX            0
#endif


/* USER POOL CONFIGURATION */

#define USER_POOL_SIZE                  (FAL_POOL_SIZE - EEL_POOL_SIZE)

#if (USER_POOL_SIZE>0)
  #define USER_POOL_FIRST_BLOCK         0
  #define USER_POOL_LAST_BLOCK          (USER_POOL_FIRST_BLOCK + USER_POOL_SIZE - 1)

  #if (EEL_POOL_SIZE>0)
    #define USER_POOL_FIRST_ADDRESS     (EEL_POOL_LAST_ADDRESS + 1)
  #else
    #define USER_POOL_FIRST_ADDRESS     FAL_POOL_FIRST_ADDRESS
  #endif

  #define USER_POOL_LAST_ADDRESS        (USER_POOL_FIRST_ADDRESS + (FAL_BLOCK_SIZE * USER_POOL_LAST_BLOCK) + (FAL_BLOCK_SIZE-1))
  #define USER_POOL_WSIZE               (USER_POOL_SIZE*FAL_BLOCK_SIZE / 4)
  #define USER_POOL_FIRST_WIDX          0
  #define USER_POOL_LAST_WIDX           (USER_POOL_WSIZE - 1)
#else
  #define USER_POOL_FIRST_BLOCK         0
  #define USER_POOL_LAST_BLOCK          0
  #define USER_POOL_FIRST_ADDRESS       0
  #define USER_POOL_LAST_ADDRESS        0
  #define USER_POOL_WSIZE               0
  #define USER_POOL_FIRST_WIDX          0
  #define USER_POOL_LAST_WIDX           0
#endif

/* calculate f_MHz = round-up(FDL_SYSTEM_FREQUENCY)   */
#define FDL_FX_MHZ                      ((FDL_SYSTEM_FREQUENCY+999999)/1000000)

#ifdef FDL_WIDE_VOLTAGE_MODE
  #define FDL_VOLTAGE_MODE  0x01
#else
  #define FDL_VOLTAGE_MODE  0x00
#endif

/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */
_FAL_CNST __far const fal_descriptor_t  fal_descriptor_str = {                    \
                                                (fal_u32)FAL_POOL_FIRST_ADDRESS,  \
                                                (fal_u32)EEL_POOL_FIRST_ADDRESS,  \
                                                (fal_u32)USER_POOL_FIRST_ADDRESS, \

                                                (fal_u32)FAL_POOL_LAST_ADDRESS,   \
                                                (fal_u32)EEL_POOL_LAST_ADDRESS,   \
                                                (fal_u32)USER_POOL_LAST_ADDRESS,  \

                                                (fal_u16)FAL_POOL_FIRST_BLOCK,    \
                                                (fal_u16)EEL_POOL_FIRST_BLOCK,    \
                                                (fal_u16)USER_POOL_FIRST_BLOCK,   \

                                                (fal_u16)FAL_POOL_LAST_BLOCK,     \
                                                (fal_u16)EEL_POOL_LAST_BLOCK,     \
                                                (fal_u16)USER_POOL_LAST_BLOCK,    \

                                                (fal_u16)FAL_POOL_FIRST_WIDX,     \
                                                (fal_u16)EEL_POOL_FIRST_WIDX,     \
                                                (fal_u16)USER_POOL_FIRST_WIDX,    \

                                                (fal_u16)FAL_POOL_LAST_WIDX,      \
                                                (fal_u16)EEL_POOL_LAST_WIDX,      \
                                                (fal_u16)USER_POOL_LAST_WIDX,     \

                                                (fal_u16)FAL_POOL_WSIZE,          \
                                                (fal_u16)EEL_POOL_WSIZE,          \
                                                (fal_u16)USER_POOL_WSIZE,         \

                                                (fal_u16)FAL_BLOCK_SIZE,          \
                                                (fal_u16)FAL_BLOCK_WSIZE,         \

                                                (fal_u08)FAL_POOL_SIZE,           \
                                                (fal_u08)EEL_POOL_SIZE,           \
                                                (fal_u08)USER_POOL_SIZE,          \

                                                (fal_u08)FDL_FX_MHZ,              \
                                                (fal_u08)FDL_VOLTAGE_MODE,        \
                                       };

/* ----------------------------------------------------------------------------------------------------- */
/* ------     E N D    O F    U N T O U C H A B L E     D E C L A R A T I O N    A R E A           ----- */
/* ----------------------------------------------------------------------------------------------------- */

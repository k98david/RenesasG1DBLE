/**
 ****************************************************************************************
 *
 * @file eel_descriptor.h
 *
 * @brief DATAFLASH driver
 *
 * Copyright(C) 2012-2014 Renesas Electronics Corporation
 *
 * rev.205
 *
 ****************************************************************************************
 */


#ifndef EEL_DESCRIPTOR_H
#define EEL_DESCRIPTOR_H


/*
 * INCLUDE FILES
 ****************************************************************************************
 */

/*
 * DEFINES
 ****************************************************************************************
 */
/* specifies the flash access library used for EEPROM emulation               */
#define   EEL_STORAGE_TYPE              'D'

/* data id for descriptor */
enum
{
    EEL_ID_BDA = 0x01,
    EEL_ID_BDA2,
    EEL_ID_BDA3,
    EEL_ID_BDA4,
    EEL_ID_BDA5,
    EEL_ID_BDA6,
    EEL_ID_BDA7,
    EEL_ID_END
};

/* specifies the number of abstract variables the EEL should handle           */
#define   EEL_VAR_NO                    (EEL_ID_END-1)

/* Maximum size of the active area expressed in blocks  */
/* Overrunning this threshold triggers automatically the refresh process effecting the last active block */
#define   EEL_REFRESH_BLOCK_THRESHOLD   1

/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */


#endif /* EEL_DESCRIPTOR_H */

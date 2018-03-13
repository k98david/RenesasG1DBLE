/**
 ****************************************************************************************
 *
 * @file fal_descriptor.h
 *
 * @brief DATAFLASH driver
 *
 * Copyright(C) 2012-2014 Renesas Electronics Corporation
 *
 * rev.205
 *
 ****************************************************************************************
 */

#ifndef FAL_DESCRIPTOR_H
#define FAL_DESCRIPTOR_H

#ifdef CFG_USE_EEL
/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "fdl_types.h"

/*
 * DEFINES
 ****************************************************************************************
 */
/* specify the CPU frequency in [Hz]                                        */
#define   FDL_SYSTEM_FREQUENCY      (8000000)

/* programming voltage mode                                                 */
#define   FDL_WIDE_VOLTAGE_MODE

/* specify the size of the FAL pool expressed in number of blocks           */
#define   FAL_POOL_SIZE             (8)

/* specify the size of the EEL pool inside the FAL pool expressed in blocks */
#define   EEL_POOL_SIZE             (8)

/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */
/* external reference to descriptor */
extern    __far const fal_descriptor_t  fal_descriptor_str;

#endif /* CFG_USE_EEL */
#endif /* FAL_DESCRIPTOR_H */

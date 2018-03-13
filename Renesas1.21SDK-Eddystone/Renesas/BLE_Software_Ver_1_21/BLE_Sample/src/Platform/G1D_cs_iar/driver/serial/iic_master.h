/**
 ****************************************************************************************
 *
 * @file iic_master.h
 *
 * @brief IIC Master Driver header file.
 *
 * Copyright(C) 2012-2014 Renesas Electronics Corporation
 *
 ****************************************************************************************
 */

#ifndef _IIC_MASTER_H_
#define _IIC_MASTER_H_

/**
 ****************************************************************************************
 * @addtogroup IIC
 * @ingroup DRIVERS
 * @brief IIC Master driver for communicating APP-MCU.
 *
 * The associated ports used are:
 *  - P60: SCK (Serial ClocK line)
 *  - P61: SDA (Serial DatA  line)
 *  - P30/P16: used as Request Signal Input from the Slave.
 *
 * @{
 ****************************************************************************************
 */

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#ifdef _USE_STD_C99
 #include <stdint.h>
 #include <stdbool.h>
#endif //_USE_STD_C99
#include "serial.h"

/*
 * DEFINITIONS
 *****************************************************************************************
 */
/// iic master address(0x00-0x7F)
#define IIC_MASTER_ADDRESS       (0x28)

/// iic slave address(0x00-0x7F)
#define IIC_SLAVE_ADDRESS       (0x50)

/// max transferring size(16bits)
#define IIC_MAX_SIZE            (1024U)

#define MAX_TX_TO_COUNT         (4)
/*
 * ENUMERATION DEFINITIONS
 *****************************************************************************************
 */
/// IIC interrupt state
enum
{
    IIC_STAT_IDLE      = 0,
    IIC_STAT_RX_ACK_WAIT  ,
    IIC_STAT_TX_ACK_WAIT  ,
    IIC_STAT_RX_GOING     ,
    IIC_STAT_TX_GOING     ,
};

/// error code values
enum
{
    IIC_ERR_NONE       = 0,
    IIC_ERR_NACK          ,
    IIC_ERR_BUS_FAULT     ,
    IIC_ERR_MISMATCH      ,
    IIC_ERR_TIMEOUT
};

/// direction code value
enum
{
    IIC_MASTER_WRITE   = 0,
    IIC_MASTER_READ
};

/*
 * STUCTURE DEFINITIONS
 *****************************************************************************************
 */
/// IIC Information structure
typedef struct {
    uint16_t    size;
    uint16_t    cnt;
    uint8_t     *bufptr;
} IIC_INFO;

/*
 * FUNCTION DECLARATIONS
 ****************************************************************************************
 */
void iic_master_init(SERIAL_EVENT_PARAM *param, uint8_t slave_addr);
void iic_master_read(uint8_t *bufptr, const uint16_t size);
void iic_master_write(const uint8_t *bufptr, const uint16_t size);

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for INTIICA0.
 *****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void iica0_isr(void);
#else
void iica0_isr(void);
#endif //_USE_STD_C99

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for INTTM07.
 *****************************************************************************************
 */
#ifdef _USE_STD_C99
__IRQ void intp3_isr(void);
#else
void intp3_isr(void);
#endif //_USE_STD_C99

/// @} module

#endif /* _IIC_SLAVE_H_ */

/*******************************************************************************
 * DISCLAIMER
 * This software is supplied by Renesas Electronics Corporation and is only
 * intended for use with Renesas products. No other uses are authorized. This
 * software is owned by Renesas Electronics Corporation and is protected under
 * all applicable laws, including copyright laws.
 * THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIES REGARDING
 * THIS SOFTWARE, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING BUT NOT
 * LIMITED TO WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
 * AND NON-INFRINGEMENT. ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED.
 * TO THE MAXIMUM EXTENT PERMITTED NOT PROHIBITED BY LAW, NEITHER RENESAS
 * ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES SHALL BE LIABLE
 * FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR
 * ANY REASON RELATED TO THIS SOFTWARE, EVEN IF RENESAS OR ITS AFFILIATES HAVE
 * BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
 * Renesas reserves the right, without notice, to make changes to this software
 * and to discontinue the availability of this software. By using this software,
 * you agree to the additional terms and conditions found by accessing the
 * following link:
 * http://www.renesas.com/disclaimer
 * (C) 2012-2015 Renesas Electronics Corporation All rights reserved.
 ******************************************************************************/

/******************************************************************************
 * File Name  : samc.h
 * Version    : 1.0
 * Description: sample custom profile client role header file
 *
 * Copyright(C) 2012-2016 Renesas Electronics Corporation
 ******************************************************************************/
#ifndef __SAMC_H__
#define __SAMC_H__

/*******************************************************************************
 * Include Files
 ******************************************************************************/
#include "arch.h"
#include "rble.h"
#include "sam/sam.h"

/*******************************************************************************
 * Type Definitions
 ******************************************************************************/
typedef enum {
    SAMPLE_CLIENT_EVENT_ENABLE_COMP,
    SAMPLE_CLIENT_EVENT_DISABLE_COMP,
    SAMPLE_CLIENT_EVENT_SWITCH_STATE_IND,
    SAMPLE_CLIENT_EVENT_WRITE_CHAR_RESPONSE,
    SAMPLE_CLIENT_EVENT_READ_CHAR_RESPONSE,
} SAMPLE_CLIENT_EVENT_TYPE;

typedef enum {
    SAMPLE_CLIENT_RD_LED_CONTROL_CODE,
    SAMPLE_CLIENT_RD_SWITCH_STATE_CCCD_CODE,
} SAMPLE_CLIENT_RD_CHAR_CODE;

typedef enum {
    SAMPLE_CLIENT_WR_SWITCH_STATE_CCCD_CODE,
} SAMPLE_CLIENT_WR_CHAR_CODE;

typedef struct {
    uint16_t start_hdl;
    uint16_t end_hdl;
    uint16_t switch_state_char_hdl;
    uint16_t switch_state_val_hdl;
    uint16_t switch_state_prop;
    uint16_t switch_state_cccd_hdl;
    uint16_t led_control_char_hdl;
    uint16_t led_control_val_hdl;
    uint16_t led_control_prop;
} SAMPLE_CLIENT_CONTENT;

typedef struct {
    SAMPLE_CLIENT_EVENT_TYPE type;
    RBLE_STATUS status;
    uint16_t conhdl;
    union {
        struct {
            SAMPLE_CLIENT_CONTENT samc;
        } enable_comp;
        struct {
            uint8_t value;
        } switch_state_ind;
        struct {
            uint8_t value;
        } read_char_resp;
    } param;
} SAMPLE_CLIENT_EVENT;

typedef void (*SAMPLE_CLIENT_EVENT_HANDLER)(SAMPLE_CLIENT_EVENT *event);

/*******************************************************************************
 * Function Declarations (API)
 ******************************************************************************/
void SAMPLE_Client_Init(void);
RBLE_STATUS SAMPLE_Client_Enable(uint16_t conhdl, uint8_t con_type,
                                 SAMPLE_CLIENT_CONTENT *samc, SAMPLE_CLIENT_EVENT_HANDLER callback);
RBLE_STATUS SAMPLE_Client_Disable(uint16_t conhdl);
RBLE_STATUS SAMPLE_Client_Write_Led_Control(uint16_t conhdl, uint8_t value);
RBLE_STATUS SAMPLE_Client_Write_Char(uint16_t conhdl, uint16_t char_code, uint16_t cccd_val);
RBLE_STATUS SAMPLE_Client_Read_Char(uint16_t conhdl, uint8_t char_code);

#endif /* __SAMC_H__ */

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
 * (C) 2017 Renesas Electronics Corporation All rights reserved.
 ******************************************************************************/

#ifndef _SECLIB_H_
#define _SECLIB_H_

#ifdef CONFIG_EMBEDDED
#include <arch.h>
#endif

#include <string.h>
#include <stdio.h>
#include <rble_api.h>

/* SecLib event type. */
typedef enum {
    SECLIB_EVENT_INIT_COMP = 0x01,
    SECLIB_EVENT_SET_PARAM_COMP,
    SECLIB_EVENT_PAIRING_COMP,
    SECLIB_EVENT_ENC_COMP,
    SECLIB_EVENT_CHK_ADDR_COMP,
    SECLIB_EVENT_DELETE_BONDING_INFO_COMP,
    SECLIB_EVENT_PAIRING_REQ,
    SECLIB_EVENT_PASSKEY_IND,
    SECLIB_EVENT_PASSKEY_REQ,
} SECLIB_EVENT_TYPE;

/* Delete target enumulation used for SecLib_Delete_Bonding_Info. */
typedef enum {
    SECLIB_DELETE_ALL_BONDS = 0x01,
    SECLIB_DELETE_ALL_BUT_ACTIVE_BOND,
} SECLIB_DELETE_TARGET;

/* SecLilb parameters used for SecLib_Set_Param. */
typedef struct seclib_param_t {
    uint8_t role;
    uint8_t auth_req;
    uint8_t iocap;
    BOOL    rpa_generate;
} SECLIB_PARAM;

/* SecLib event structure. */
typedef struct seclib_event_t {
    SECLIB_EVENT_TYPE type;
    union {
        /* SECLIB_EVENT_INIT_COMP */
        /* SECLIB_EVENT_SET_PARAM_COMP */
        /* SECLIB_EVENT_DELETE_BONDING_INFO_COMP */
        RBLE_STATUS status;

        /* SECLIB_EVENT_ENC_COMP */
        struct enc_t {
            RBLE_STATUS               status;
            uint16_t                  conhdl;
            uint8_t                   sec_prop;
        } enc;

        /* SECLIB_EVENT_PAIRING_COMP */
        struct pairing_t {
            RBLE_STATUS               status;
            uint16_t                  conhdl;
            uint8_t                   sec_prop;
        } pairing;

        /* SECLIB_EVENT_CHK_ADDR_COMP */
        struct chk_addr_t {
            RBLE_STATUS status;
            uint16_t    conhdl;
        } chk_addr;

        /* SECLIB_EVENT_PAIRING_REQ */
        struct pairing_req_t {
            uint16_t conhdl;
            uint8_t  auth_req;
            uint8_t  iocap;
        } pairing_req;

        /* SECLIB_EVENT_PASSKEY_IND */
        struct passkey_ind_t {
            uint16_t conhdl;
            uint32_t passkey;
        } passkey_ind;

        /* SECLIB_EVENT_PASSKEY_REQ */
        struct passkey_req_t {
            uint16_t conhdl;
        } passkey_req;
    } param;
} SECLIB_EVENT;

/* SecLib event callback type. */
typedef void (*SECLIB_EVENT_HANDLER)(SECLIB_EVENT *event);

/* SecLib APIs. */
RBLE_STATUS SecLib_Init(RBLE_GAP_EVENT_HANDLER gap_callback,
                        RBLE_VS_EVENT_HANDLER vs_callback,
                        SECLIB_EVENT_HANDLER lib_callback);
RBLE_STATUS SecLib_Set_Param(SECLIB_PARAM *param);
RBLE_STATUS SecLib_Start_Encryption(uint16_t conhdl);
RBLE_STATUS SecLib_Pairing_Req_Resp(uint16_t conhdl, BOOL accept);
RBLE_STATUS SecLib_Passkey_Req_Resp(uint16_t conhdl, uint32_t passkey);
RBLE_STATUS SecLib_SrvcReq_Error_Resp(uint16_t conhdl, uint8_t att_err);
RBLE_STATUS SecLib_Delete_Bonding_Info(SECLIB_DELETE_TARGET target);
uint16_t SecLib_Rand(void);

#endif /* _SECLIB_H_ */

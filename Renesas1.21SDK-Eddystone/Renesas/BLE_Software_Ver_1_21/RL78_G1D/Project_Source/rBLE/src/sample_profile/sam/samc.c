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
 * File Name  : samc.c
 * Version    : 1.0
 * Description: sample custom profile client fole code file
 *
 * Copyright(C) 2012-2016 Renesas Electronics Corporation
 ******************************************************************************/

/*******************************************************************************
 * Include Files
 ******************************************************************************/
#include "sam.h"
#include "samc.h"
#include "rble_api.h"
#include "console.h"

/*******************************************************************************
 * Macro Definitions
 ******************************************************************************/
#define SAMC_CHAR_NUM  (2)
#define INVALID_IDX    (-1)
#define INVALID_CONHDL (0xFFFF)

/*******************************************************************************
 * Type Definitions
 ******************************************************************************/
typedef enum {
    SAMC_STATE_IDLE,
    SAMC_STATE_INIT,
    SAMC_STATE_CONNECTED,
} SAMC_STATE;

typedef enum {
    SAMC_SVC_DISC,
    SAMC_CHAR_DISC,
    SAMC_DESC_DISC,
} SAMC_INIT_STATE;

/*******************************************************************************
 * Global Variables
 ******************************************************************************/
static struct {
    BOOL                        enabled;
    uint16_t                    conhdl;
    SAMC_STATE                  state;
    SAMC_INIT_STATE             init_state;
    SAMPLE_CLIENT_CONTENT       cont;
    SAMPLE_CLIENT_EVENT_HANDLER callback;
    uint8_t                     switch_state_notif;
    uint8_t                     led_control;
    RBLE_STATUS                 status;
} samc_info[CFG_CON];

/*******************************************************************************
 * Function Definitions (Internal)
 ******************************************************************************/
static void samc_send_event(int8_t idx, SAMPLE_CLIENT_EVENT_TYPE type)
{
    SAMPLE_CLIENT_EVENT event;

    event.type   = type;
    event.conhdl = samc_info[idx].conhdl;

    switch (type) {
    case SAMPLE_CLIENT_EVENT_ENABLE_COMP:
        event.status = samc_info[idx].status;
        memcpy(&event.param.enable_comp.samc, &samc_info[idx].cont, sizeof(event.param.enable_comp.samc));
        break;

    case SAMPLE_CLIENT_EVENT_DISABLE_COMP:
        event.status = samc_info[idx].status;
        break;

    case SAMPLE_CLIENT_EVENT_SWITCH_STATE_IND:
        event.status = RBLE_OK;
        event.param.switch_state_ind.value = samc_info[idx].switch_state_notif;
        break;

    case SAMPLE_CLIENT_EVENT_WRITE_CHAR_RESPONSE:
        event.status = samc_info[idx].status;
        break;

    case SAMPLE_CLIENT_EVENT_READ_CHAR_RESPONSE:
        event.status = samc_info[idx].status;
        event.param.read_char_resp.value = samc_info[idx].led_control;
        break;

    default:
        Printf("unsupported SAMC event: 0x%x\n", event.type);
        break;
    }

    samc_info[idx].callback(&event);
}

static uint16_t samc_get_char_end_hdl(int8_t idx, uint16_t char_decl_hdl)
{
    uint16_t hdls[SAMC_CHAR_NUM];
    uint16_t next_char_hdl;
    int i;

    hdls[0] = samc_info[idx].cont.switch_state_char_hdl;
    hdls[1] = samc_info[idx].cont.led_control_char_hdl;

    next_char_hdl = samc_info[idx].cont.end_hdl;

    for (i = 0; i < SAMC_CHAR_NUM; i++) {
        if ((char_decl_hdl < hdls[i]) && (next_char_hdl > hdls[i])) {
            next_char_hdl = hdls[i];
        }
    }

    return next_char_hdl - 1;
}

static bool samc_is_same_uuid128(const uint8_t *uuid1, const uint8_t *uuid2)
{
    return (0 == memcmp(uuid1, uuid2, RBLE_GATT_128BIT_UUID_OCTET));
}

static int8_t samc_find_free_info_index(void)
{
    int i;

    for (i = 0; i < CFG_CON; i++) {
        if (samc_info[i].enabled == FALSE) {
            return i;
        }
    }

    return INVALID_IDX;
}

static int8_t samc_find_info_index(uint16_t conhdl)
{
    int i;

    for (i = 0; i < CFG_CON; i++) {
        if ((samc_info[i].enabled == TRUE) &&
            (samc_info[i].conhdl == conhdl)) {
            return i;
        }
    }

    return INVALID_IDX;
}

/* ##### GATT Functions ##### */
static void samc_discovery_service_request(int8_t idx)
{
    RBLE_GATT_DISC_SVC_REQ req;
    const uint8_t sample_custom_svc_uuid[] = RBLE_SVC_SAMPLE_CUSTOM_SVC;

    req.req_type  = RBLE_GATT_DISC_BY_UUID_SVC;
    req.conhdl    = samc_info[idx].conhdl;
    req.start_hdl = 0x0001u;
    req.end_hdl   = 0xFFFFu;
    req.desired_svc.value_size = RBLE_GATT_128BIT_UUID_OCTET;
    memcpy(req.desired_svc.value, &sample_custom_svc_uuid, sizeof(sample_custom_svc_uuid));

    (void)RBLE_GATT_Discovery_Service_Request(&req);
}

static void samc_discovery_char_request(int8_t idx)
{
    RBLE_GATT_DISC_CHAR_REQ disc_char;

    disc_char.req_type  = RBLE_GATT_DISC_ALL_CHAR;
    disc_char.conhdl    = samc_info[idx].conhdl;
    disc_char.start_hdl = samc_info[idx].cont.start_hdl;
    disc_char.end_hdl   = samc_info[idx].cont.end_hdl;

    (void)RBLE_GATT_Discovery_Char_Request(&disc_char);
}

static void samc_discovery_switch_state_char_descriptor_request(int8_t idx)
{
    RBLE_GATT_DISC_CHAR_DESC_REQ disc_char_desc;

    disc_char_desc.conhdl    = samc_info[idx].conhdl;
    disc_char_desc.start_hdl = samc_info[idx].cont.switch_state_val_hdl + 1;
    disc_char_desc.end_hdl   = samc_get_char_end_hdl(idx, samc_info[idx].cont.switch_state_char_hdl);

    (void)RBLE_GATT_Discovery_Char_Descriptor_Request(&disc_char_desc);
}

/* ##### GATT Event Handlers ##### */
static void samc_disc_svc_by_uuid_cmp_handler(RBLE_GATT_EVENT *event)
{
    struct RBLE_GATT_Disc_Svc_By_Uuid_Comp_t *result =
        (struct RBLE_GATT_Disc_Svc_By_Uuid_Comp_t *)&event->param.disc_svc_by_uuid_cmp;

    int8_t idx = samc_find_info_index(result->conhdl);
    if (idx == INVALID_IDX) {
        return;
    }

    if (RBLE_OK != result->att_code) {
        samc_info[idx].status = result->att_code;
        samc_send_event(idx, SAMPLE_CLIENT_EVENT_ENABLE_COMP);
        return;
    }

    samc_info[idx].cont.start_hdl = result->list[0].start_hdl;
    samc_info[idx].cont.end_hdl   = result->list[0].end_hdl;
}

static void samc_disc_char_all_128_cmp_handler(RBLE_GATT_EVENT *event)
{
    struct RBLE_GATT_Disc_Char_All_128_Comp_t *result =
        (struct RBLE_GATT_Disc_Char_All_128_Comp_t *)&event->param.disc_char_all_128_cmp;

    const uint8_t switch_state_uuid[] = RBLE_CHAR_SAMS_SWITCH_STATE;
    const uint8_t led_control_uuid[]  = RBLE_CHAR_SAMS_LED_CONTROL;

    int8_t idx = samc_find_info_index(result->conhdl);
    if (idx == INVALID_IDX) {
        return;
    }

    if (RBLE_OK != result->att_code) {
        samc_info[idx].status = result->att_code;
        samc_send_event(idx, SAMPLE_CLIENT_EVENT_ENABLE_COMP);
        return;
    }

    if (samc_is_same_uuid128(result->list.uuid, switch_state_uuid)) {
        samc_info[idx].cont.switch_state_char_hdl = result->list.attr_hdl;
        samc_info[idx].cont.switch_state_val_hdl  = result->list.pointer_hdl;
        samc_info[idx].cont.switch_state_prop     = result->list.prop;

    } else if (samc_is_same_uuid128(result->list.uuid, led_control_uuid)) {
        samc_info[idx].cont.led_control_char_hdl = result->list.attr_hdl;
        samc_info[idx].cont.led_control_val_hdl  = result->list.pointer_hdl;
        samc_info[idx].cont.led_control_prop     = result->list.prop;

    } else {
        int i;
        Printf("discover unknown characteristic: ");
        for (i = 0; i < 16; i++) {
            Printf("%x ", result->list.uuid[i]);
        }
        Printf("\n");
    }
}

static void samc_disc_char_desc_cmp_handler(RBLE_GATT_EVENT *event)
{
    struct RBLE_GATT_Disc_Char_Desc_Comp_t *result =
        (struct RBLE_GATT_Disc_Char_Desc_Comp_t *)&event->param.disc_char_desc_cmp;

    int8_t idx = samc_find_info_index(result->conhdl);
    if (idx == INVALID_IDX) {
        return;
    }

    samc_info[idx].cont.switch_state_cccd_hdl = result->list[0].attr_hdl;
}

static void samc_complete_handler(RBLE_GATT_EVENT *event)
{
    struct RBLE_GATT_Complete_t *result =
        (struct RBLE_GATT_Complete_t *)&event->param.complete;

    int8_t idx = samc_find_info_index(result->conhdl);
    if (idx == INVALID_IDX) {
        return;
    }

    switch (samc_info[idx].init_state) {
    case SAMC_SVC_DISC:
        samc_info[idx].init_state = SAMC_CHAR_DISC;
        samc_discovery_char_request(idx);
        break;

    case SAMC_CHAR_DISC:
        samc_info[idx].init_state = SAMC_DESC_DISC;
        samc_discovery_switch_state_char_descriptor_request(idx);
        break;

    case SAMC_DESC_DISC:
        samc_info[idx].state  = SAMC_STATE_CONNECTED;
        samc_info[idx].status = RBLE_OK;
        samc_send_event(idx, SAMPLE_CLIENT_EVENT_ENABLE_COMP);
        break;

    default:
        Printf("unsupported state: 0x%x\n", samc_info[idx].init_state);
        break;
    }
}

static void samc_write_char_resp_handler(RBLE_GATT_EVENT *event)
{
    struct RBLE_GATT_Write_Char_Resp_t *result =
        (struct RBLE_GATT_Write_Char_Resp_t *)&event->param.write_char_resp;

    int8_t idx = samc_find_info_index(result->conhdl);
    if (idx == INVALID_IDX) {
        return;
    }

    if (result->att_code) {
        samc_info[idx].status = result->att_code;
    } else {
        samc_info[idx].status = RBLE_OK;
    }

    samc_send_event(idx, SAMPLE_CLIENT_EVENT_WRITE_CHAR_RESPONSE);
}

static void samc_read_char_resp_handler(RBLE_GATT_EVENT *event)
{
    struct RBLE_GATT_Read_Char_Resp_t *result =
        (struct RBLE_GATT_Read_Char_Resp_t *)&event->param.read_char_resp;

    int8_t idx = samc_find_info_index(result->conhdl);
    if (idx == INVALID_IDX) {
        return;
    }

    if (RBLE_OK != result->att_code) {
        samc_info[idx].status = result->att_code;
    } else {
        samc_info[idx].status = RBLE_OK;
        samc_info[idx].led_control = result->data.data[0];
    }

    samc_send_event(idx, SAMPLE_CLIENT_EVENT_READ_CHAR_RESPONSE);
}

static void samc_handle_value_notif_handler(RBLE_GATT_EVENT *event)
{
    struct RBLE_GATT_Handle_Value_Notif_t *result =
        (struct RBLE_GATT_Handle_Value_Notif_t *)&event->param.handle_value_notif;

    int8_t idx = samc_find_info_index(result->conhdl);
    if (idx == INVALID_IDX) {
        return;
    }

    samc_info[idx].switch_state_notif = result->value[0];

    samc_send_event(idx, SAMPLE_CLIENT_EVENT_SWITCH_STATE_IND);
}

static void samc_gatt_callback(RBLE_GATT_EVENT *event)
{
    switch (event->type) {
    case RBLE_GATT_EVENT_DISC_SVC_BY_UUID_CMP:
        samc_disc_svc_by_uuid_cmp_handler(event);
        break;

    case RBLE_GATT_EVENT_DISC_CHAR_ALL_128_CMP:
        samc_disc_char_all_128_cmp_handler(event);
        break;

    case RBLE_GATT_EVENT_DISC_CHAR_DESC_CMP:
        samc_disc_char_desc_cmp_handler(event);
        break;

    case RBLE_GATT_EVENT_COMPLETE:
        samc_complete_handler(event);
        break;

    case RBLE_GATT_EVENT_WRITE_CHAR_RESP:
        samc_write_char_resp_handler(event);
        break;

    case RBLE_GATT_EVENT_READ_CHAR_RESP:
        samc_read_char_resp_handler(event);
        break;

    case RBLE_GATT_EVENT_HANDLE_VALUE_NOTIF:
        samc_handle_value_notif_handler(event);
        break;

    default:
        Printf("unsupported GATT event: 0x%x\n", event->type);
        break;
    }
}

/*******************************************************************************
 * Function Definitions (API)
 ******************************************************************************/
void SAMPLE_Client_Init(void)
{
    int i;

    for (i = 0; i < CFG_CON; i++) {
        samc_info[i].enabled     = FALSE;
        samc_info[i].conhdl      = INVALID_CONHDL;
        samc_info[i].state       = SAMC_STATE_IDLE;
        samc_info[i].init_state  = SAMC_SVC_DISC;
        memset(&samc_info[i].cont, 0x00, sizeof(samc_info[i].cont));
        samc_info[i].callback    = NULL;
        samc_info[i].switch_state_notif = 0x00;
        samc_info[i].led_control = 0x00;
        samc_info[i].status      = RBLE_OK;
    }
}

RBLE_STATUS SAMPLE_Client_Enable(uint16_t conhdl, uint8_t con_type,
                                 SAMPLE_CLIENT_CONTENT *samc, SAMPLE_CLIENT_EVENT_HANDLER callback)
{
    RBLE_STATUS status;
    int8_t idx;

    if (!callback || !samc) {
        return RBLE_PARAM_ERR;
    }

    /* This can not be enabled twice with the same conhdl. */
    idx = samc_find_info_index(conhdl);
    if (idx != INVALID_IDX) {
        return RBLE_STATUS_ERROR;
    }

    /* No space to save samc info, this means the exceed of
       the number of maximum connection. */
    idx = samc_find_free_info_index();
    if (idx == INVALID_IDX) {
        return RBLE_STATUS_ERROR;
    }

    status = RBLE_GATT_Enable(samc_gatt_callback);
    if (RBLE_OK != status) {
        return RBLE_STATUS_ERROR;
    }

    memset(&samc_info[idx], 0, sizeof(samc_info[idx]));

    samc_info[idx].enabled    = TRUE;
    samc_info[idx].conhdl     = conhdl;
    samc_info[idx].callback   = callback;
    samc_info[idx].state      = SAMC_STATE_INIT;
    samc_info[idx].init_state = SAMC_SVC_DISC;

    if (RBLE_PRF_CON_DISCOVERY == con_type) {
        samc_discovery_service_request(idx);
    } else {
        samc_info[idx].state  = SAMC_STATE_CONNECTED;
        samc_info[idx].status = RBLE_OK;
        memcpy(&samc_info[idx].cont, samc, sizeof(samc_info[idx].cont));
        samc_send_event(idx, SAMPLE_CLIENT_EVENT_ENABLE_COMP);
    }

    return RBLE_OK;
}

RBLE_STATUS SAMPLE_Client_Disable(uint16_t conhdl)
{
    int8_t idx;

    idx = samc_find_info_index(conhdl);
    if (idx == INVALID_IDX) {
        return RBLE_STATUS_ERROR;
    }

    samc_info[idx].enabled = FALSE;
    samc_info[idx].conhdl  = INVALID_CONHDL;
    samc_info[idx].state   = SAMC_STATE_IDLE;
    samc_info[idx].status  = RBLE_OK;

    samc_send_event(idx, SAMPLE_CLIENT_EVENT_DISABLE_COMP);

    return RBLE_OK;
}

RBLE_STATUS SAMPLE_Client_Write_Led_Control(uint16_t conhdl, uint8_t value)
{
    RBLE_GATT_WRITE_CHAR_REQ write_req;
    int8_t idx;

    idx = samc_find_info_index(conhdl);
    if (idx == INVALID_IDX) {
        return RBLE_STATUS_ERROR;
    }

    if (samc_info[idx].state != SAMC_STATE_CONNECTED) {
        return RBLE_STATUS_ERROR;
    }

    write_req.conhdl   = samc_info[idx].conhdl;
    write_req.charhdl  = samc_info[idx].cont.led_control_val_hdl;
    write_req.val_len  = SAMPLE_SWITCH_STATE_SIZE;
    write_req.req_type = RBLE_GATT_WRITE_CHAR;
    write_req.value[0] = (uint8_t)(value & SAMPLE_SWITCH_STATE_ON);

    (void)RBLE_GATT_Write_Char_Request(&write_req);

    return RBLE_OK;
}

RBLE_STATUS SAMPLE_Client_Write_Char(uint16_t conhdl, uint16_t char_code, uint16_t cccd_val)
{
    RBLE_GATT_WRITE_CHAR_REQ write_req;
    int8_t idx;

    idx = samc_find_info_index(conhdl);
    if (idx == INVALID_IDX) {
        return RBLE_STATUS_ERROR;
    }

    if (samc_info[idx].state != SAMC_STATE_CONNECTED) {
        return RBLE_STATUS_ERROR;
    }

    switch (char_code) {
    case SAMPLE_CLIENT_WR_SWITCH_STATE_CCCD_CODE:
        write_req.charhdl  = samc_info[idx].cont.switch_state_cccd_hdl;
        write_req.val_len  = SAMPLE_CCCD_SIZE;
        write_req.value[0] = (uint8_t)(cccd_val & 0x00FF);
        write_req.value[1] = (uint8_t)((cccd_val >> 8) & 0x00FF);
        break;

    default:
        Printf("unsupported code: 0x%x\n", char_code);
        return RBLE_STATUS_ERROR;
    }

    write_req.conhdl   = samc_info[idx].conhdl;
    write_req.req_type = RBLE_GATT_WRITE_CHAR;

    (void)RBLE_GATT_Write_Char_Request(&write_req);

    return RBLE_OK;
}

RBLE_STATUS SAMPLE_Client_Read_Char(uint16_t conhdl, uint8_t char_code)
{
    RBLE_GATT_READ_CHAR_REQ rd_char;
    int8_t idx;

    idx = samc_find_info_index(conhdl);
    if (idx == INVALID_IDX) {
        return RBLE_STATUS_ERROR;
    }

    if (samc_info[idx].state != SAMC_STATE_CONNECTED) {
        return RBLE_STATUS_ERROR;
    }

    switch (char_code) {
    case SAMPLE_CLIENT_RD_LED_CONTROL_CODE:
        rd_char.uuid[0].value[0] =
            (uint8_t)(samc_info[idx].cont.led_control_val_hdl & 0xFF);
        rd_char.uuid[0].value[1] =
            (uint8_t)((samc_info[idx].cont.led_control_val_hdl >> 8) & 0xFF);
        break;

    case SAMPLE_CLIENT_RD_SWITCH_STATE_CCCD_CODE:
        rd_char.uuid[0].value[0] =
            (uint8_t)(samc_info[idx].cont.switch_state_cccd_hdl & 0xFF);
        rd_char.uuid[0].value[1] =
            (uint8_t)((samc_info[idx].cont.switch_state_cccd_hdl >> 8) & 0xFF);
        break;

    default:
        Printf("unsupported code: 0x%x\n", char_code);
        return RBLE_PARAM_ERR;
    }

    rd_char.req_type  = RBLE_GATT_READ_CHAR;
    rd_char.conhdl    = samc_info[idx].conhdl;
    rd_char.start_hdl = 0x0000;
    rd_char.end_hdl   = 0x0000;

    (void)RBLE_GATT_Read_Char_Request(&rd_char);

    return RBLE_OK;
}

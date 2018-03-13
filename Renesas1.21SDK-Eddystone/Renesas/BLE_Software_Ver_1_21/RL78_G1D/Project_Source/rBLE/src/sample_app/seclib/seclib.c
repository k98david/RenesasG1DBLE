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

/**************************************
     INCLUDE FILES
 **************************************/
#include "seclib.h"
#include "secdb.h"
#include "console.h"

/**************************************
     MACRO DEFINITIONS
 **************************************/
#ifndef CONFIG_EMBEDDED
#define Printf printf
#endif

#ifdef CFG_SECLIB_DEBUG
#define SECLIB_ERR(msg, val)          Printf("[err] %s: 0x%x\n", msg, val)
#define SECLIB_ERR2(msg, val1, val2)  Printf("[err] %s: 0x%x: 0x%x\n", msg, val1, val2)
#define SECLIB_LOG(msg)               Printf("[log] %s\n", msg)
#define SECLIB_LOG1(msg, val)         Printf("[log] %s: 0x%x\n", msg, val)
#else
#define SECLIB_ERR(msg, val)
#define SECLIB_ERR2(msg, val1, val2)
#define SECLIB_LOG(msg)
#define SECLIB_LOG1(msg, val)
#endif

#define SECLIB_INVALID_IDX     (0xFFFF)
#define SECLIB_ALL_BOND_BITMAP (((uint16_t)1 << CFG_SECLIB_BOND_NUM) - 1)

#define CON(i)      (info.cons[i])
#define CON_BOND(i) (info.db.bonds[info.cons[i].bidx])
#define BOND(i)     (info.db.bonds[i])

#define NONCON_STATE_DONE(s)    (((info.noncon_state & (s)) == (s)) ? TRUE : FALSE)
#define NONCON_STATE_UNDONE(s)  (((info.noncon_state & (s)) != (s)) ? TRUE : FALSE)
#define CON_STATE_DONE(s, i)    (((info.cons[i].con_state & (s)) == (s)) ? TRUE : FALSE)
#define CON_STATE_UNDONE(s, i)  (((info.cons[i].con_state & (s)) != (s)) ? TRUE : FALSE)

/**************************************
     PROTOTYPE DECLARATIONS
 **************************************/
static void seclib_gap_callback(RBLE_GAP_EVENT *event);
static void seclib_sm_callback(RBLE_SM_EVENT *event);
static void seclib_db_callback(SECDB_EVENT *event);

static void seclib_init_sequence(RBLE_STATUS status);
static void seclib_set_param_sequence(RBLE_STATUS status);
static void seclib_pairing_sequence(uint16_t cidx, RBLE_STATUS status);
static void seclib_enc_sequence(uint16_t cidx, RBLE_STATUS status);

static void seclib_start_enc(uint16_t cidx);
static void seclib_start_enc_pairing(uint16_t cidx);
static void seclib_start_pairing(uint16_t cidx);

static void seclib_security_request(uint16_t cidx);
static void seclib_pairing_req(uint16_t cidx);
static void seclib_pairing_resp(uint16_t cidx, BOOL accept);
static void seclib_decline_pairing_req(uint16_t cidx);

static void seclib_send_status_event(RBLE_STATUS status, SECLIB_EVENT_TYPE type);
static void seclib_send_chk_addr_event(RBLE_STATUS status, uint16_t conhdl);
static void seclib_send_pairing_comp_event(RBLE_STATUS status, uint16_t conhdl, uint8_t sec_prop);
static void seclib_send_enc_comp_event(RBLE_STATUS status, uint16_t conhdl, uint8_t sec_prop);
static void seclib_send_delete_bonding_info_comp(RBLE_STATUS status);
static void seclib_send_pairing_req_event(uint16_t conhdl, uint8_t auth_req, uint8_t iocap);
static void seclib_send_passkey_ind_event(uint16_t conhdl, RBLE_KEY_VALUE *val);
static void seclib_send_passkey_req_event(uint16_t conhdl);

static void seclib_pairing_success(uint16_t cidx);
static void seclib_pairing_failed(uint16_t cidx, RBLE_STATUS status);
static void seclib_pairing_save_result(uint16_t cidx);
static void seclib_enc_success(uint16_t cidx);
static void seclib_enc_failed(uint16_t cidx);
static void seclib_enc_save(uint16_t cidx);

static void seclib_generate_key(RBLE_KEY_VALUE *value);
static void seclib_generate_nb(RBLE_RAND_NB *value);
static void seclib_generate_passkey(RBLE_KEY_VALUE *val);

static uint16_t seclib_find_cidx(uint16_t conhdl);
static uint16_t seclib_allocate_cidx(void);
static void seclib_free_cidx(uint16_t cidx);
static uint16_t seclib_allocate_bidx(void);
static void seclib_free_bidx(uint16_t bidx);

static BOOL seclib_is_rpa(uint16_t cidx);
static BOOL seclib_is_bidx_used(uint16_t bidx);
static uint8_t seclib_convert_sec_param(uint8_t sec_prop);
static BOOL seclib_have_enc_key(uint16_t cidx);
static void seclib_update_md(uint16_t bidx);

/**************************************
     ENUMERATION DEFINITIONS
 **************************************/
typedef enum {
    /* Initial value */
    SECLIB_NONCON_STATE_NONE = 0x00,

    /* SecLib_Init sub-states */
    SECLIB_NONCON_STATE_RESET_COMP          = 0x01,
    SECLIB_NONCON_STATE_SECDB_LOAD_ALL_COMP = 0x02,
    SECLIB_NONCON_STATE_INIT_COMP           = (SECLIB_NONCON_STATE_RESET_COMP |
                                               SECLIB_NONCON_STATE_SECDB_LOAD_ALL_COMP),

    /* SecLib_Set_Param sub-states */
    SECLIB_NONCON_STATE_SET_BONDING_MODE_COMP     = 0x04,
    SECLIB_NONCON_STATE_SET_SECURITY_REQUEST_COMP = 0x08,
    SECLIB_NONCON_STATE_SET_IRK_KEY_COMP          = 0x10,
    SECLIB_NONCON_STATE_SET_PRIVACY_FEATURE_COMP  = 0x20,
    SECLIB_NONCON_STATE_SET_PARAM_COMP            = (SECLIB_NONCON_STATE_SET_BONDING_MODE_COMP     |
                                                     SECLIB_NONCON_STATE_SET_SECURITY_REQUEST_COMP |
                                                     SECLIB_NONCON_STATE_SET_IRK_KEY_COMP          |
                                                     SECLIB_NONCON_STATE_SET_PRIVACY_FEATURE_COMP),
} seclib_noncon_state;

/* SecLib connect state. */
typedef enum {
    SECLIB_CON_STATE_NONE            = 0x0000,
    SECLIB_CON_STATE_CHK_ADDR_COMP   = 0x0001,

    /* Pairing sub-state. */
    SECLIB_CON_STATE_PAIRING_PHASE_COMP = 0x0002,
    SECLIB_CON_STATE_PAIRING_SAVE_COMP  = 0x0004,
    SECLIB_CON_STATE_PAIRING_COMP       = (SECLIB_CON_STATE_PAIRING_PHASE_COMP |
                                           SECLIB_CON_STATE_PAIRING_SAVE_COMP),

    /* Encryption sub-state. */
    SECLIB_CON_STATE_ENC_PHASE_COMP = 0x0010,
    SECLIB_CON_STATE_ENC_SAVE_COMP  = 0x0020,
    SECLIB_CON_STATE_ENC_COMP       = (SECLIB_CON_STATE_ENC_PHASE_COMP |
                                       SECLIB_CON_STATE_ENC_SAVE_COMP),

    /* Request flag. */
    SECLIB_CON_STATE_PAIRING_REQ = 0x1000,

    /* pairing or encryption ongoin flag. */
    SECLIB_CON_STATE_IN_PAIRING = 0x4000,
} seclib_con_state;

/* SecDb execution context. */
typedef enum {
    SECLIB_DB_CONTEXT_LOAD_ALL,
    SECLIB_DB_CONTEXT_DELETE,
    SECLIB_DB_CONTEXT_PAIRING_COMP,
    SECLIB_DB_CONTEXT_ENC_COMP,
    SECLIB_DB_CONTEXT_ENC_DELTETE_COMP,
} seclib_db_context;

/* SecDb bond state. */
typedef enum {
    SECLIB_BOND_STATE_FREE       = 0x00,
    SECLIB_BOND_STATE_BONDED     = 0x01,
    SECLIB_BOND_STATE_BONDED_MAX = 0xF0,
    SECLIB_BOND_STATE_ALLOCATED  = 0xFF,
} SECLIB_BOND_STATE;

/**************************************
     TYPE DEFINITIONS
 **************************************/

/* Connecting peer device information */
typedef struct seclib_con_info_t {
    uint16_t              conhdl;         /* Connection handle */
    uint8_t               index;          /* Connection index */
    seclib_con_state      con_state;      /* Connect state */
    uint8_t               role;           /* Role */
    RBLE_BD_ADDR          peer_addr;      /* Peer device address */
    uint8_t               peer_addr_type; /* Peer device address type */
    uint16_t              bidx;           /* info.db.bonds[] index for this connection */
    uint16_t              tmp_bidx;       /* Temporary save bond index during chk addr */
} seclib_con_info;

/* SecLib information */
static struct seclib_info_t {
    RBLE_GAP_EVENT_HANDLER gap_callback;  /* Application defined gap callback */
    RBLE_VS_EVENT_HANDLER  vs_callback;   /* Application defined vs callback */
    SECLIB_EVENT_HANDLER   lib_callback;  /* Application defined seclib callback */
    seclib_noncon_state    noncon_state;  /* Non-connect state */
    seclib_con_info        cons[CFG_CON]; /* Connecting peer device information */
    SECLIB_PARAM           param;         /* Security parameters set by SecLIb_Set_Param */
    SECDB_DB               db;            /* Security database */
    uint16_t               db_cidx;       /* Temporary save the update target cidx */
    uint16_t               db_context;    /* Temporary save the db access context */
    SECDB_BOND             tmp_bond;      /* Temporary save bond information during pairing */
} info;

/**************************************
     FUNCTION DEFINITIONS
 **************************************/

/**
 * @brief Initialize SecLib. This shall be called instead of RBLE_GAP_Reset
 *        soon after booting up.
 * @param[in] gap_callback GAP event handler
 * @param[in] vs_callback  Vendor Specific event handler
 * @param[in] lib_callback SecLib event handler
 * @retval RBLE_OK Success.
 * @retval RBLE_PARAM_ERR gap_callback or lib_callabck is null.
 */
RBLE_STATUS SecLib_Init(RBLE_GAP_EVENT_HANDLER gap_callback,
                        RBLE_VS_EVENT_HANDLER vs_callback,
                        SECLIB_EVENT_HANDLER  lib_callback)
{
    int i;

    /* Check input parameters. */
    if ((gap_callback == NULL) || (lib_callback == NULL)) {
        SECLIB_ERR("SecLib_Init: Invalid parameters", RBLE_PARAM_ERR);
        return RBLE_PARAM_ERR;
    }

    SECLIB_LOG("SecLib_Init: Start");

    /* Initialize SecLib info. */
    memset(&info, 0x00, sizeof(info));
    info.gap_callback = gap_callback;
    info.vs_callback  = vs_callback;
    info.lib_callback = lib_callback;
    info.noncon_state = SECLIB_NONCON_STATE_NONE;

    /* Initialize connecting peer device info. */
    for (i = 0; i < CFG_CON; i++) {
        CON(i).con_state = SECLIB_CON_STATE_NONE;
        CON(i).conhdl    = SECLIB_INVALID_IDX;
        CON(i).bidx      = SECLIB_INVALID_IDX;
        CON(i).tmp_bidx  = 0;
    }

    /* Start SecLib_Init sequence. */
    seclib_init_sequence(RBLE_OK);

    return RBLE_OK;
}

/* SecLib_Init call sequence. */
static void seclib_init_sequence(RBLE_STATUS status)
{
    /* Error case. */
    if (status != RBLE_OK) {
        SECLIB_ERR("seclib_init_sequence: Failed", info.noncon_state);
        seclib_send_status_event(RBLE_ERR, SECLIB_EVENT_INIT_COMP);
    }

    /* Reset BLE protocol stack. */
    else if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_RESET_COMP)) {
        RBLE_GAP_Reset(seclib_gap_callback, seclib_sm_callback);
    }

    /* Load all security info from SecDb. */
    else if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SECDB_LOAD_ALL_COMP)) {
        SecDb_Init(info.vs_callback, seclib_db_callback);
        info.db_context = SECLIB_DB_CONTEXT_LOAD_ALL;
        SecDb_Load(&info.db, SECLIB_ALL_BOND_BITMAP, TRUE, TRUE);
    }

    /* All have done. */
    else if (NONCON_STATE_DONE(SECLIB_NONCON_STATE_INIT_COMP)) {
        SECLIB_LOG("SecLib_Init: Finish");
        seclib_send_status_event(RBLE_OK, SECLIB_EVENT_INIT_COMP);
    }

    else {
        SECLIB_ERR("seclib_init_sequence: Sequence error", info.noncon_state);
    }
}

/* GAP_EVENT_RESET_RESULT event handler. */
static void seclib_gap_reset_result_handler(struct RBLE_GAP_Reset_Result_t *result)
{
    info.noncon_state |= SECLIB_NONCON_STATE_RESET_COMP;
    seclib_init_sequence(result->status);
}

/* SECDB_EVENT_LOAD_COMP event handler. */
static void seclib_db_load_all_comp_handler(struct SecDb_Access_t *result)
{
    info.noncon_state |= SECLIB_NONCON_STATE_SECDB_LOAD_ALL_COMP;
    seclib_init_sequence(result->status);
}

/* ================================================================================ */
/* ================================================================================ */

/**
 * @brief Set security parameters.
 * @param[in] Security parameters
 * @retval RBLE_OK Success.
 * @retval RBLE_PARAM_ERR Invalid parameter.
 * @retval RBLE_STATUS_ERROR Invalid SecLib state.
 */
RBLE_STATUS SecLib_Set_Param(SECLIB_PARAM *param)
{
    int i;

    /* Check input parameter. */
    if (param == NULL) {
        SECLIB_ERR("SecLib_Set_Param: Invalid parameter", RBLE_PARAM_ERR);
        return RBLE_PARAM_ERR;
    }

    /* Check non-connect state. */
    if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_INIT_COMP)) {
        SECLIB_ERR("SecLib_Set_Param: Invalid non-connect state", info.noncon_state);
        return RBLE_STATUS_ERROR;
    }

    /* Check connect state. */
    for (i = 0; i < CFG_CON; i++) {
        if (CON_STATE_DONE(SECLIB_CON_STATE_CHK_ADDR_COMP, i)) {
            SECLIB_ERR("SecLib_Set_Param: Invalid connect state", info.noncon_state);
            return RBLE_STATUS_ERROR;
        }
    }

    SECLIB_LOG("SecLib_Set_Param: Start");

    /* Keep parameters in SecLib info. */
    memcpy(&info.param, param, sizeof(info.param));

    /* Clear SecLib_Set_Param state. */
    info.noncon_state &= ~(SECLIB_NONCON_STATE_SET_PARAM_COMP);

    /* If rpa_generate is disabled, skip local device IRK setting sequence. */
    if (!param->rpa_generate) {
        info.noncon_state |= SECLIB_NONCON_STATE_SET_IRK_KEY_COMP;
    }

    /* Start SecLib_Set_Param sequence. */
    seclib_set_param_sequence(RBLE_OK);

    return RBLE_OK;
}

/* SecLib_Set_Param call sequence. */
static void seclib_set_param_sequence(RBLE_STATUS status)
{
    /* Error case. */
    if (status != RBLE_OK) {
        SECLIB_ERR("seclib_set_param_sequence: Failed", info.noncon_state);
        seclib_send_status_event(RBLE_ERR, SECLIB_EVENT_SET_PARAM_COMP);
    }

    /* Set bonding mode. */
    else if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SET_BONDING_MODE_COMP)) {
        RBLE_GAP_Set_Bonding_Mode(RBLE_GAP_BONDABLE);
    }

    /* Set security mode. */
    else if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SET_SECURITY_REQUEST_COMP)) {
        if ((info.param.auth_req == RBLE_AUTH_REQ_MITM_BOND) ||
            (info.param.auth_req == RBLE_AUTH_REQ_MITM_NO_BOND)) {
            RBLE_GAP_Set_Security_Request(RBLE_GAP_SEC1_AUTH_PAIR_ENC);
        }
        else {
            RBLE_GAP_Set_Security_Request(RBLE_GAP_SEC1_NOAUTH_PAIR_ENC);
        }
    }

    /* Generate & Set local device IRK. */
    else if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SET_IRK_KEY_COMP)) {
        /* We have a local device IRK previously generated in SecDb,
           so use it without generating new one. */
        if (info.db.ld_irk.valid == SECDB_VALID_KEY) {
            RBLE_SM_Set_Key(RBLE_SMP_KDIST_IDKEY, &info.db.ld_irk.val);
        }
        /* We do not have a local device IRK, so generate & set new one. */
        else {
            seclib_generate_key(&info.db.ld_irk.val);
            RBLE_SM_Set_Key(RBLE_SMP_KDIST_IDKEY, &info.db.ld_irk.val);
        }
    }

    /* Set privacy feature. */
    else if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SET_PRIVACY_FEATURE_COMP)) {
        if (info.param.rpa_generate) {
            if (info.param.role == RBLE_MASTER) {
                RBLE_GAP_Set_Privacy_Feature(RBLE_CENTRAL_PRIV_ENABLE, TRUE);
            }
            else {
                RBLE_GAP_Set_Privacy_Feature(RBLE_PH_PRIV_ENABLE, TRUE);
            }
        }
        else {
            RBLE_GAP_Set_Privacy_Feature(RBLE_OBSERV_PRIV_RESOLVE, TRUE);
        }
    }

    /* All have done. */
    else if (NONCON_STATE_DONE(SECLIB_NONCON_STATE_SET_PARAM_COMP)) {
        SECLIB_LOG("SecLib_Set_Param: Finish");
        seclib_send_status_event(RBLE_OK, SECLIB_EVENT_SET_PARAM_COMP);
    }

    else {
        SECLIB_ERR("seclib_set_param_sequence: Sequence error", info.noncon_state);
    }
}

/* GAP_EVENT_SET_BONDING_COMP event handler. */
static void seclib_gap_set_bonding_mode_handler(RBLE_STATUS status)
{
    info.noncon_state |= SECLIB_NONCON_STATE_SET_BONDING_MODE_COMP;
    seclib_set_param_sequence(status);
}

/* GAP_EVENT_SET_SECURITY_REQUEST_COMP event handler. */
static void seclib_gap_set_security_request_handler(struct RBLE_GAP_Set_Security_Request_t *result)
{
    info.noncon_state |= SECLIB_NONCON_STATE_SET_SECURITY_REQUEST_COMP;
    seclib_set_param_sequence(result->status);
}

/* SM_EVENT_SET_CNF event handler. */
static void seclib_sm_set_cnf_handler(struct RBLE_EVT_SM_Set_Cnf_t *result)
{
    info.noncon_state |= SECLIB_NONCON_STATE_SET_IRK_KEY_COMP;
    seclib_set_param_sequence(result->status);
}

/* GAP_EVENT_SET_PRIVACY_FEATURE_COMP event handler. */
static void seclib_gap_set_privacy_feature_handler(RBLE_STATUS status)
{
    info.noncon_state |= SECLIB_NONCON_STATE_SET_PRIVACY_FEATURE_COMP;
    seclib_set_param_sequence(status);
}

/* ================================================================================ */
/* ================================================================================ */

/**
 * @brief Start encryption. If bond with the peer device does not exist,
 *        execute both of pairing and encryption. If bond with the peer device
 *        exist, execute encryption only.
 * @param[in] conhdl Connection handle
 * @retval RBLE_OK Success.
 * @retval RBLE_PARAM_ERR Invalid connection handle.
 * @retval RBLE_STATUS_ERROR Invalid SecLib state.
 */
RBLE_STATUS SecLib_Start_Encryption(uint16_t conhdl)
{
    uint16_t cidx;
    int i;

    /* Check non-connect state. */
    if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SET_PARAM_COMP)) {
        SECLIB_ERR("SecLib_Start_Encryption: Invalid non-connect state", RBLE_STATUS_ERROR);
        return RBLE_STATUS_ERROR;
    }

    /* Find the connecting peer device info index. */
    cidx = seclib_find_cidx(conhdl);
    if (cidx == SECLIB_INVALID_IDX) {
        SECLIB_ERR("SecLib_Start_Encryption: Invalid connection handle", RBLE_PARAM_ERR);
        return RBLE_PARAM_ERR;
    }

    /* Check connect state. Encryption can be started only after identifying
       the peer device by its address. */
    if (CON_STATE_UNDONE(SECLIB_CON_STATE_CHK_ADDR_COMP, cidx)) {
        SECLIB_ERR("SecLib_Start_Encryption: Invalid connect state", RBLE_STATUS_ERROR);
        return RBLE_STATUS_ERROR;
    }

    /* There is bond with the peer device, so start encryption. */
    if (CON_STATE_DONE(SECLIB_CON_STATE_PAIRING_COMP, cidx) &&
        (seclib_have_enc_key(cidx) == TRUE)) {
        seclib_start_enc_pairing(cidx);
    }
    /* No Bond with the peer device yet,
       so need to start both of pairing and encryption. */
    else {
        /* Check whethe other pairing is ongoing. */
        for (i = 0; i < CFG_CON; i++) {
            if (CON_STATE_DONE(SECLIB_CON_STATE_IN_PAIRING, i)) {
                return RBLE_STATUS_ERROR;
            }
        }
        seclib_start_pairing(cidx);
    }

    return RBLE_OK;
}

/* Start pairing and if it success, start encryption. */
static void seclib_start_pairing(uint16_t cidx)
{
    CON(cidx).con_state &= ~(SECLIB_CON_STATE_PAIRING_COMP | SECLIB_CON_STATE_ENC_COMP);
    CON(cidx).con_state |= SECLIB_CON_STATE_IN_PAIRING;
    seclib_pairing_req(cidx);
}


/* Pairing call sequence. */
static void seclib_pairing_sequence(uint16_t cidx, RBLE_STATUS status)
{
    /* Error case. */
    if (status != RBLE_OK) {
        seclib_pairing_failed(cidx, status);
    }

    /* Save bonding info. */
    else if (CON_STATE_UNDONE(SECLIB_CON_STATE_PAIRING_SAVE_COMP, cidx)) {
        seclib_pairing_save_result(cidx);
    }

    /* All pairing sequences have done. */
    else if (CON_STATE_DONE(SECLIB_CON_STATE_PAIRING_COMP, cidx)) {
        seclib_pairing_success(cidx);
    }

    else {
        SECLIB_ERR2("seclib_pairing_sequence: Sequence error", CON(cidx).con_state, status);
    }
}

/* Send pairing request. */
static void seclib_pairing_req(uint16_t cidx)
{
    RBLE_BOND_PARAM bond_param;

    SECLIB_LOG("SecLib_Start_Encryption: Start (pairing request)");

    /* Set pairing request parameters. */
    memcpy(&bond_param.addr, &CON(cidx).peer_addr, RBLE_BD_ADDR_LEN);
    bond_param.auth     = info.param.auth_req;
    bond_param.oob      = RBLE_OOB_AUTH_DATA_NOT_PRESENT;
    bond_param.iocap    = info.param.iocap;
    bond_param.key_size = RBLE_SMP_MAX_ENC_SIZE_LEN;

    /* Determine the keys to exchange. */
    if (CON(cidx).role == RBLE_MASTER) {
        bond_param.ikey_dist  = (info.param.rpa_generate) ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE;
        bond_param.rkey_dist  =
            RBLE_KEY_DIST_ENCKEY |
            (seclib_is_rpa(cidx) ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE);
    }
    else {
        bond_param.ikey_dist  =
            seclib_is_rpa(cidx) ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE;
        bond_param.rkey_dist  =
            RBLE_KEY_DIST_ENCKEY |
            (info.param.rpa_generate ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE);
    }

    if (CON(cidx).bidx != SECLIB_INVALID_IDX) {
        memcpy(&info.tmp_bond, &CON_BOND(cidx), sizeof(info.tmp_bond));
    }

    /* Send pairing request. */
    RBLE_GAP_Start_Bonding(&bond_param);
}

/* GAP_EVENT_BONDING_REQ_IND event handler. */
static void seclib_gap_bonding_req_ind_handler(uint16_t cidx, struct RBLE_GAP_Bonding_Req_t *result)
{
    int i;

    /* If other pairing or encryption is ongoing, return error. */
    for (i = 0; i < CFG_CON; i++) {
        if (CON_STATE_DONE(SECLIB_CON_STATE_IN_PAIRING, i)) {
            seclib_decline_pairing_req(cidx);
            break;
        }
    }

    /* Send event to Application. */
    if (i == CFG_CON) {
        CON(cidx).con_state |= SECLIB_CON_STATE_IN_PAIRING;
        seclib_send_pairing_req_event(CON(cidx).conhdl, result->auth_req, result->io_cap);
    }
}

/**
 * @brief Response to pairing request.
 * @param[in] conhdl Connection handle
 * @param[in] accept true when accept pairing, false to decline pairing
 * @retval RBLE_OK Success.
 */
RBLE_STATUS SecLib_Pairing_Req_Resp(uint16_t conhdl, BOOL accept)
{
    uint16_t cidx;

    /* Find the connecting peer device info index. */
    cidx = seclib_find_cidx(conhdl);

    if (cidx == SECLIB_INVALID_IDX) {
        return RBLE_PARAM_ERR;
    }

    CON(cidx).con_state &= ~(SECLIB_CON_STATE_PAIRING_COMP | SECLIB_CON_STATE_ENC_COMP);
    seclib_pairing_resp(cidx, accept);

    return RBLE_OK;
}

/* Send pairing response. */
static void seclib_pairing_resp(uint16_t cidx, BOOL accept)
{
    RBLE_BOND_RESP_PARAM bond_param;

    SECLIB_LOG("SecLib_Start_Encryption: Start (pairing response)");

    /* Local device accepts pairing request from the peer device. */
    if (accept && NONCON_STATE_DONE(SECLIB_NONCON_STATE_SET_PARAM_COMP)) {
        /* Set pairing response parameters. */
        bond_param.conhdl       = CON(cidx).conhdl;
        bond_param.accept       = RBLE_OK;
        bond_param.auth_req     = info.param.auth_req;
        bond_param.io_cap       = info.param.iocap;
        bond_param.oob          = RBLE_OOB_AUTH_DATA_NOT_PRESENT;
        bond_param.max_key_size = RBLE_SMP_MAX_ENC_SIZE_LEN;

        /* Determine the keys to exchange. */
        if (CON(cidx).role == RBLE_MASTER) {
            bond_param.ikeys  = (info.param.rpa_generate) ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE;
            bond_param.rkeys  =
                RBLE_KEY_DIST_ENCKEY |
                (seclib_is_rpa(cidx) ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE);
        }
        else {
            bond_param.ikeys  =
                seclib_is_rpa(cidx) ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE;
            bond_param.rkeys  =
                RBLE_KEY_DIST_ENCKEY |
                (info.param.rpa_generate ? RBLE_KEY_DIST_IDKEY : RBLE_KEY_DIST_NONE);
        }

        if (CON(cidx).bidx != SECLIB_INVALID_IDX) {
            memcpy(&info.tmp_bond, &CON_BOND(cidx), sizeof(info.tmp_bond));
        }

        /* Send pairing response. */
        RBLE_GAP_Bonding_Response(&bond_param);
    }
    /* Local device diclines pairing request from the peer device. */
    else {
        seclib_decline_pairing_req(cidx);
    }
}

/* Send denial pairing response. */
static void seclib_decline_pairing_req(uint16_t cidx)
{
    RBLE_BOND_RESP_PARAM bond_param;

    SECLIB_LOG("SecLib_Start_Encryption: GAP_EVENT_BONDING_REQ_IND: Decline pairing request");
    bond_param.conhdl       = CON(cidx).conhdl;
    bond_param.accept       = RBLE_CONN_REJ_UNACCEPTABLE_BDADDR;
    bond_param.oob          = RBLE_OOB_AUTH_DATA_NOT_PRESENT;
    bond_param.auth_req     = RBLE_AUTH_REQ_NO_MITM_NO_BOND;
    bond_param.io_cap       = RBLE_IO_CAP_NO_INPUT_NO_OUTPUT;
    bond_param.max_key_size = RBLE_SMP_MAX_ENC_SIZE_LEN;
    bond_param.ikeys        = RBLE_KEY_DIST_NONE;
    bond_param.rkeys        = RBLE_KEY_DIST_NONE;

    /* Send pairing response. */
    RBLE_GAP_Bonding_Response(&bond_param);
}

/* SM_TK_REQ_IND event handler. */
static void seclib_sm_tk_req_ind_handler(struct RBLE_EVT_SM_Tk_Req_t *result)
{
    RBLE_KEY_VALUE tk;

    if (result->disp_en == TRUE) {
        /* Generate passkey. */
        seclib_generate_passkey(&tk);

        /* Pass the generated passkey to BLE protocol stack. */
        RBLE_SM_Tk_Req_Resp(result->idx, RBLE_OK, &tk);

        /* Send event to Application to display the passkey. */
        seclib_send_passkey_ind_event((uint16_t)result->idx, &tk);
    }
    else {
        /* Send event to Application to request passkey input. */
        seclib_send_passkey_req_event((uint16_t)result->idx);
    }
}

/**
 * @brief Respnse to passkey request.
 * @param[in] conhdl Connection handle
 * @param[in] passkey passkey
 */
RBLE_STATUS SecLib_Passkey_Req_Resp(uint16_t conhdl, uint32_t passkey)
{
    RBLE_KEY_VALUE val;
    uint16_t cidx;

    /* Find the connecting peer device info index. */
    cidx = seclib_find_cidx(conhdl);

    if (cidx == SECLIB_INVALID_IDX) {
        return RBLE_PARAM_ERR;
    }

    memset(&val.key, 0x00, RBLE_KEY_LEN);
    val.key[13] = (passkey >> 16) & 0xFF;
    val.key[14] = (passkey >>  8) & 0xFF;
    val.key[15] = (passkey >>  0) & 0xFF;

    /* Response with user input passkey. */
    RBLE_SM_Tk_Req_Resp(CON(cidx).index, RBLE_OK, &val);

    return RBLE_OK;
}

/* SM_LTK_REQ_IND event handler. */
static void seclib_sm_ltk_req_ind_handler(struct RBLE_EVT_SM_Ltk_Req_t *result)
{
    /* Generate LTK/EDIV/NB. */
    seclib_generate_key(&info.tmp_bond.ld_ltk.val);
    seclib_generate_nb(&info.tmp_bond.ld_ltk.nb);
    info.tmp_bond.ld_ltk.ediv  = SecLib_Rand();
    info.tmp_bond.ld_ltk.valid = SECDB_VALID_KEY;

    RBLE_SM_Ltk_Req_Resp(result->idx, RBLE_OK,
                         RBLE_SMP_KSEC_NONE,
                         info.tmp_bond.ld_ltk.ediv,
                         &info.tmp_bond.ld_ltk.nb,
                         &info.tmp_bond.ld_ltk.val);
}

/* SM_KEY_IND event handler. */
static void seclib_sm_key_ind_handler(struct RBLE_EVT_SM_Key_t *result)
{
    switch (result->key_code) {
    case RBLE_KEY_DIST_ENCKEY:
        /* Save peer device LTK. */
        SECLIB_LOG("SecLib_Start_Encryption: SM_KEY_IND: Receive LTK");
        info.tmp_bond.pd_ltk.ediv  = result->ediv;
        memcpy(&info.tmp_bond.pd_ltk.val, &result->ltk, RBLE_KEY_LEN);
        memcpy(&info.tmp_bond.pd_ltk.nb,  &result->nb,  RBLE_RAND_NB_LEN);
        info.tmp_bond.pd_ltk.valid = SECDB_VALID_KEY;
        break;

    case RBLE_KEY_DIST_IDKEY:
        /* Save peer device IRK. */
        SECLIB_LOG("SecLib_Start_Encryption: SM_KEY_IND: Receive IRK");
        memcpy(&info.tmp_bond.pd_irk.val, &result->ltk, RBLE_KEY_LEN);
        info.tmp_bond.pd_irk.valid = SECDB_VALID_KEY;
        break;

    case RBLE_KEY_DIST_SIGNKEY:
        SECLIB_ERR("SecLib_Start_Encryption: SM_KEY_IND: CSRK is not supported", RBLE_ERR);
        break;

    default:
        SECLIB_ERR("SecLib_Start_Encryption: SM_KEY_IND: Unknown key_code", result->key_code);
        break;
    }
}

/* GAP_EVENT_BONDING_COMP event handler. */
static void seclib_gap_bonding_comp_handler(uint16_t cidx, struct RBLE_GAP_Bonding_Comp_t *result)
{
    if (CON_STATE_DONE(SECLIB_CON_STATE_IN_PAIRING, cidx)) {
        if (result->status == RBLE_OK) {
            /* Save bonding info. */
            info.tmp_bond.key_size       = result->key_size;
            info.tmp_bond.sec_prop       = result->sec_prop;
            info.tmp_bond.peer_addr_type = CON(cidx).peer_addr_type;
            memcpy(&info.tmp_bond.peer_addr, &CON(cidx).peer_addr, RBLE_BD_ADDR_LEN);

            if (info.param.rpa_generate == TRUE) {
                info.db.ld_irk.valid = SECDB_VALID_KEY;
            }
        }

        CON(cidx).con_state |= SECLIB_CON_STATE_PAIRING_PHASE_COMP;
        seclib_pairing_sequence(cidx, result->status);
    }
    else {
        seclib_send_pairing_comp_event(RBLE_BUSY, CON(cidx).conhdl, RBLE_SMP_KSEC_NONE);
    }
}

/* SECDB_EVENT_SAVE_COMP event handler. */
static void seclib_db_save_bond_handler(struct SecDb_Access_t *result)
{
    CON(info.db_cidx).con_state |= SECLIB_CON_STATE_PAIRING_SAVE_COMP;
    seclib_pairing_sequence(info.db_cidx, result->status);
}

/* ================================================================================ */
/* ================================================================================ */

/* Start encryption, if it failed return error event. */
static void seclib_start_enc(uint16_t cidx)
{
    CON(cidx).con_state &= ~SECLIB_CON_STATE_ENC_COMP;
    seclib_security_request(cidx);
}

/* Start encryption, if it failed start pairing. */
static void seclib_start_enc_pairing(uint16_t cidx)
{
    CON(cidx).con_state |= SECLIB_CON_STATE_PAIRING_REQ;
    seclib_start_enc(cidx);
}

/* Encryption call sequence. */
static void seclib_enc_sequence(uint16_t cidx, RBLE_STATUS status)
{
    /* Error case. */
    if (status != RBLE_OK) {
        seclib_enc_failed(cidx);
    }

    /* Save management data into SecDb. */
    else if (CON_STATE_UNDONE(SECLIB_CON_STATE_ENC_SAVE_COMP, cidx)) {
        seclib_enc_save(cidx);
    }

    /* All encryption sequences have done. */
    else if (CON_STATE_DONE(SECLIB_CON_STATE_ENC_COMP, cidx)) {
        seclib_enc_success(cidx);
    }

    else {
        SECLIB_ERR2("seclib_enc_sequence: Sequence error", CON(cidx).con_state, status);
    }
}

/* Send security request. */
static void seclib_security_request(uint16_t cidx)
{
    uint8_t sec_prop;

    SECLIB_LOG("SecLib_Start_Encryption: Start (encryption)");

    if (CON_BOND(cidx).sec_prop == RBLE_SMP_KSEC_AUTH_MITM) {
        sec_prop = RBLE_AUTH_REQ_MITM_BOND;
    }
    else {
        sec_prop = RBLE_AUTH_REQ_NO_MITM_BOND;
    }

    if (CON(cidx).role == RBLE_MASTER) {
        RBLE_SM_Start_Enc(CON(cidx).index,
                          sec_prop,
                          CON_BOND(cidx).pd_ltk.ediv,
                          &CON_BOND(cidx).pd_ltk.nb,
                          &CON_BOND(cidx).pd_ltk.val);
    }
    else {
        RBLE_SM_Start_Enc(CON(cidx).index,
                          sec_prop,
                          CON_BOND(cidx).ld_ltk.ediv,
                          &CON_BOND(cidx).ld_ltk.nb,
                          &CON_BOND(cidx).ld_ltk.val);
    }
}

/* SM_LTK_REQ_FOR_ENC_IND event handler. */
static void seclib_sm_ltk_req_for_enc_ind_handler(uint16_t cidx, struct RBLE_EVT_SM_Ltk_Req_For_Enc_t *result)
{
    uint16_t i;

    if (CON(cidx).role == RBLE_MASTER) {
        if ((CON(cidx).bidx != SECLIB_INVALID_IDX) && (CON_BOND(cidx).pd_ltk.valid == SECDB_VALID_KEY)) {
            SECLIB_LOG("SecLib_Start_Encryption: SM_LTK_REQ_FOR_ENC_IND: Found LTK");
            RBLE_SM_Ltk_Req_Resp(result->idx, RBLE_OK,
                                 seclib_convert_sec_param(CON_BOND(cidx).sec_prop),
                                 CON_BOND(cidx).pd_ltk.ediv,
                                 &CON_BOND(cidx).pd_ltk.nb,
                                 &CON_BOND(cidx).pd_ltk.val);
        }
        else {
            SECLIB_LOG("SecLib_Start_Encryption: SM_LTK_REQ_FOR_ENC_IND: No LTK");
            RBLE_SM_Ltk_Req_Resp(result->idx, RBLE_ERR, 0,
                                 BOND(0).pd_ltk.ediv,  /* dummy */
                                 &BOND(0).pd_ltk.nb,   /* dummy */
                                 &BOND(0).pd_ltk.val); /* dummy */
        }
    }
    else {
        /* Looking for LTK by EDIV and NB recevied from the peer device. */
        for (i = 0; i < CFG_SECLIB_BOND_NUM; i++) {
            if ((BOND(i).ld_ltk.valid == SECDB_VALID_KEY) &&
                (BOND(i).ld_ltk.ediv == result->ediv) &&
                (0 == memcmp(&BOND(i).ld_ltk.nb, &result->nb, RBLE_RAND_NB_LEN))) {
                SECLIB_LOG("SecLib_Start_Encryption: SM_LTK_REQ_FOR_ENC_IND: Found LTK");
                RBLE_SM_Ltk_Req_Resp(result->idx, RBLE_OK,
                                     seclib_convert_sec_param(BOND(i).sec_prop),
                                     BOND(i).ld_ltk.ediv,
                                     &BOND(i).ld_ltk.nb,
                                     &BOND(i).ld_ltk.val);
                CON(cidx).bidx = i;
                break;
            }
        }

        /* LTK is not avaiable. */
        if (i == CFG_SECLIB_BOND_NUM) {
            SECLIB_LOG("SecLib_Start_Encryption: SM_LTK_REQ_FOR_ENC_IND: No LTK");
            RBLE_SM_Ltk_Req_Resp(result->idx, RBLE_ERR, 0,
                                 BOND(0).pd_ltk.ediv,  /* dummy */
                                 &BOND(0).pd_ltk.nb,   /* dummy */
                                 &BOND(0).pd_ltk.val); /* dummy */
        }
    }
}

/* SM_ENC_START_IND event handler. */
static void seclib_sm_enc_start_ind_handler(uint16_t cidx, struct RBLE_EVT_SM_Sec_Start_t *result)
{
    CON(cidx).con_state |= SECLIB_CON_STATE_ENC_PHASE_COMP;
    seclib_enc_sequence(cidx, result->status);
}

/* SECLIB_DB_CONTEXT_ENC_COMP event handler. */
static void seclib_db_save_md_handler(struct SecDb_Access_t *result)
{
    CON(info.db_cidx).con_state |= SECLIB_CON_STATE_ENC_SAVE_COMP;
    seclib_enc_sequence(info.db_cidx, result->status);
}

/* SECLIB_DB_CONTEXT_ENC_DELTETE_COMP event handler. */
static void seclib_db_enc_delete_handler(struct SecDb_Access_t *result)
{
    uint16_t cidx = info.db_cidx;

    if (CON_STATE_DONE(SECLIB_CON_STATE_PAIRING_REQ, cidx)) {
        /* Start re-pairing. */
        CON(cidx).con_state &= ~SECLIB_CON_STATE_PAIRING_REQ;
        seclib_start_pairing(cidx);
    }
    else {
        seclib_send_enc_comp_event(RBLE_ERR, CON(cidx).conhdl, RBLE_SMP_KSEC_NONE);
    }
}

/* ================================================================================ */
/* ================================================================================ */

/**
 * @brief Respond to service request Error.
 * @param[in] target Either of RBLE_ATT_ERR_INSUFF_AUTHEN, RBLE_ATT_ERR_INSUFF_ENC or
 *                   RBLE_ATT_ERR_NO_ERROR.
 * @retval RBLE_OK Success.
 * @retval RBLE_PARAM_ERR Invalid parameter.
 * @retval RBLE_STATUS_ERROR Invalid SecLib state.
 * @retval RBLE_ERR Can not response to the error due to insufficient IOCAP or Security Level
 */
RBLE_STATUS SecLib_SrvcReq_Error_Resp(uint16_t conhdl, uint8_t att_err)
{
    uint16_t cidx;

    /* Check non-connect state. */
    if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SET_PARAM_COMP)) {
        SECLIB_ERR("SecLib_SrvcReq_Error_Resp: Invalid state", info.noncon_state);
        return RBLE_STATUS_ERROR;
    }

    /* Find the connecting peer device info index. */
    cidx = seclib_find_cidx(conhdl);
    if (cidx == SECLIB_INVALID_IDX) {
        SECLIB_ERR("SecLib_SrvcReq_Error_Resp: Invalid parameter", RBLE_PARAM_ERR);
        return RBLE_PARAM_ERR;
    }

    /* Check connect state. Encryption can be started only after identifying
       the peer device by its address. */
    if (CON_STATE_UNDONE(SECLIB_CON_STATE_CHK_ADDR_COMP, cidx)) {
        SECLIB_ERR("SecLib_Start_Encryption: Invalid connect state", RBLE_STATUS_ERROR);
        return RBLE_STATUS_ERROR;
    }

    /* Execute pairing or encryption depends on security state. */
    switch (att_err) {
    case RBLE_ATT_ERR_INSUFF_AUTHEN:
        /*  auth   | enc     | action
         *  -------+---------+---------------------
         *  None   | Disable | Pairing
         *  None   | Enable  | RBLE_STATUS_ERROR (Never)
         *  Unauth | Disable | Encryption
         *  Unauth | Enable  | Pairing with MITM
         *  Auth   | Disable | Encryption
         *  Auth   | Enable  | RBLE_ERR
         */
        SECLIB_LOG("SecLib_SrvcReq_Error_Resp: Start (Insufficient Authentication)");
        if (CON_STATE_UNDONE(SECLIB_CON_STATE_PAIRING_COMP, cidx)) {
            if (CON_STATE_UNDONE(SECLIB_CON_STATE_ENC_COMP, cidx)) {
                seclib_start_pairing(cidx);
            }
            else {
                return RBLE_STATUS_ERROR;
            }
        }
        else if (CON_BOND(cidx).sec_prop == RBLE_SMP_KSEC_UNAUTH_NO_MITM) {
            if (CON_STATE_UNDONE(SECLIB_CON_STATE_ENC_COMP, cidx)) {
                seclib_start_enc_pairing(cidx);
            }
            else {
                if (info.param.iocap == RBLE_IO_CAP_NO_INPUT_NO_OUTPUT) {
                    return RBLE_ERR;
                }
                else {
                    info.param.auth_req |= RBLE_AUTH_REQ_MITM_NO_BOND;
                }
                seclib_start_pairing(cidx);
            }
        }
        else if (CON_BOND(cidx).sec_prop == RBLE_SMP_KSEC_AUTH_MITM) {
            if (CON_STATE_UNDONE(SECLIB_CON_STATE_ENC_COMP, cidx)) {
                seclib_start_enc_pairing(cidx);
            }
            else {
                return RBLE_ERR;
            }
        }
        else {
            /* do nothing */
        }
        break;

    case RBLE_ATT_ERR_INSUFF_ENC:
        /*  auth   | enc     | action
         *  -------+---------+---------------------
         *  None   | Disable | Pairing
         *  None   | Enable  | RBLE_STATUS_ERROR (Never)
         *  Unauth | Disable | Encryption
         *  Unauth | Enable  | RBLE_STATUS_ERROR (Never)
         *  Auth   | Disable | Encryption
         *  Auth   | Enable  | RBLE_STATUS_ERROR (Never)
         */
        SECLIB_LOG("SecLib_SrvcReq_Error_Resp: Start (Insufficient Encryption)");
        if (CON_STATE_UNDONE(SECLIB_CON_STATE_PAIRING_COMP, cidx) &&
            CON_STATE_UNDONE(SECLIB_CON_STATE_ENC_COMP, cidx)) {
            seclib_start_pairing(cidx);
        }
        else if (CON_STATE_DONE(SECLIB_CON_STATE_PAIRING_COMP, cidx) &&
                 CON_STATE_UNDONE(SECLIB_CON_STATE_ENC_COMP, cidx)) {
            seclib_start_enc_pairing(cidx);
        }
        else {
            return RBLE_STATUS_ERROR;
        }
        break;

    case RBLE_ATT_ERR_NO_ERROR:
        /* Do nothing. */
        SECLIB_LOG("SecLib_SrvcReq_Error_Resp: Do nothing (No Error)");
        break;

    default:
        return RBLE_PARAM_ERR;
    }

    return RBLE_OK;
}

/* ================================================================================ */
/* ================================================================================ */

/**
 * @brief Delete bonding info.
 * @param[in] target SECLIB_DELETE_ALL_BONDS or SECLIB_DELETE_ALL_BUT_ACTIVE_BOND.
 * @retval RBLE_OK Success.
 * @retval RBLE_PARAM_ERR Invalid parameter.
 * @retval RBLE_STATUS_ERROR Invalid SecLib state.
 */
RBLE_STATUS SecLib_Delete_Bonding_Info(SECLIB_DELETE_TARGET target)
{
    uint16_t    cidx;
    uint16_t    bidx;
    uint16_t    bond_bitmap = 0x0000;
    BOOL        ld_irk      = FALSE;
    RBLE_STATUS status;

    if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_INIT_COMP)) {
        SECLIB_ERR("SecLib_Delete_Bonding_Info: Invalid state", info.noncon_state);
        return RBLE_STATUS_ERROR;
    }

    switch (target) {
    case SECLIB_DELETE_ALL_BONDS:
        memset(&info.db, 0x00, sizeof(info.db));
        bond_bitmap = SECLIB_ALL_BOND_BITMAP;
        break;

    case SECLIB_DELETE_ALL_BUT_ACTIVE_BOND:
        for (cidx = 0; cidx < CFG_CON; cidx++) {
            if (CON(cidx).bidx != SECLIB_INVALID_IDX) {
                bond_bitmap |= ((uint16_t)1 << CON(cidx).bidx);
            }
        }

        bond_bitmap = ~bond_bitmap & SECLIB_ALL_BOND_BITMAP;

        for (bidx = 0; bidx < CFG_SECLIB_BOND_NUM; bidx++) {
            if (bond_bitmap & (1 << bidx)) {
                info.db.md.data[bidx] = 0;
                memset(&info.db.bonds[bidx], 0x00, sizeof(info.db.bonds[bidx]));
            }
        }
        break;

    default:
        SECLIB_ERR("SecLib_Delete_Bonding_Info: Invalid parameter", RBLE_PARAM_ERR);
        return RBLE_PARAM_ERR;
    }

    /* If all bonding info is deleted, also delete local device IRK. */
    if (bond_bitmap == SECLIB_ALL_BOND_BITMAP) {
        memset(&info.db.ld_irk, 0x00, RBLE_KEY_LEN);
        ld_irk = TRUE;
    }

    SECLIB_LOG1("SecLib_Delete_Bonding_Info: Start", bond_bitmap);

    info.db_context = SECLIB_DB_CONTEXT_DELETE;

    status = SecDb_Save(&info.db, bond_bitmap, ld_irk, TRUE);
    if (status != RBLE_OK) {
        return RBLE_BUSY;
    }

    return RBLE_OK;
}

/* SECDB_EVENT_SAVE_COMP (SECLIB_DB_CONTEXT_DELETE) event handelr. */
static void seclib_db_delete_handler(struct SecDb_Access_t *result)
{
    if (result->status == RBLE_OK) {
        SECLIB_LOG("SecLib_Delete_Bonding_Info: Finish");
    }
    else {
        SECLIB_ERR("SecLib_Delete_Bonding_Info: Failed", result->status);
    }

    seclib_send_delete_bonding_info_comp(result->status);
}

/* ================================================================================ */
/* ================================================================================ */

/* SM_IRK_REQ_IND event handler. */
static void seclib_sm_irk_req_ind_handler(uint16_t cidx, struct RBLE_EVT_SM_Irk_Req_t *result)
{
    uint16_t bidx;

    if ((cidx == SECLIB_INVALID_IDX) ||
        (CON_STATE_DONE(SECLIB_CON_STATE_CHK_ADDR_COMP, cidx))) {
        RBLE_SM_Irk_Req_Resp(result->idx, RBLE_ERR,
                             &BOND(0).peer_addr,  /* dummy */
                             &BOND(0).pd_irk.val, /* dummy */
                             0x00);               /* dummy */
        return;
    }

    /* Looking for the bond with the peer device. */
    for (bidx = CON(cidx).tmp_bidx; bidx < CFG_SECLIB_BOND_NUM; bidx++) {
        if (BOND(bidx).pd_irk.valid == SECDB_VALID_KEY) {
            break;
        }
    }

    /* Found a valid bond, confirm this one. */
    if (bidx < CFG_SECLIB_BOND_NUM) {
        RBLE_SM_Irk_Req_Resp(result->idx, RBLE_OK,
                             &BOND(bidx).peer_addr,
                             &BOND(bidx).pd_irk.val,
                             seclib_convert_sec_param(BOND(bidx).sec_prop));

        /* Will check next IRK. */
        CON(cidx).tmp_bidx = bidx + 1;
    }
    /* The bond with the peer device was not found. */
    else {
        RBLE_SM_Irk_Req_Resp(result->idx, RBLE_ERR,
                             &BOND(0).peer_addr,  /* dummy */
                             &BOND(0).pd_irk.val, /* dummy */
                             0x00);               /* dummy */

        /* Finish to check the peer device address. */
        CON(cidx).con_state |= SECLIB_CON_STATE_CHK_ADDR_COMP;

        /* Do not have bond for the peer device. */
        CON(cidx).bidx = SECLIB_INVALID_IDX;

        /* Send event to Application. */
        seclib_send_chk_addr_event(RBLE_ERR, CON(cidx).conhdl);

        SECLIB_LOG("No bond found (RPA)");
    }
}

/* RBLE_GAP_EVENT_RPA_RESOLVED event handler. */
static void seclib_gap_rpa_resolved_handler(struct RBLE_GAP_RPA_Resolved_Evt_t *result)
{
    uint16_t bidx;
    uint16_t cidx;

    /* Find the bidx with the peer device. */
    for (bidx  = 0; bidx < CFG_SECLIB_BOND_NUM; bidx++) {
         if (0 == memcmp(&BOND(bidx).peer_addr, &result->addr, RBLE_BD_ADDR_LEN)) {
            break;
        }
    }

    /* Find the cidx with the peer device. */
    for (cidx  = 0; cidx < CFG_CON; cidx++) {
        if (0 == memcmp(&CON(cidx).peer_addr, &result->res_addr, RBLE_BD_ADDR_LEN)) {
            break;
        }
    }

    /* Relate the bond with the connection. */
    CON(cidx).bidx = bidx;

    /* Complete to check the peer device address. */
    CON(cidx).con_state |= (SECLIB_CON_STATE_CHK_ADDR_COMP | SECLIB_CON_STATE_PAIRING_COMP);

    /* Send event to Application. */
    seclib_send_chk_addr_event(RBLE_OK, CON(cidx).conhdl);

    SECLIB_LOG("Bond found (RPA)");
}

/* RBLE_SM_CHK_BD_ADDR_REQ event handler. */
static void seclib_sm_chk_bd_addr_req_handler(uint16_t cidx, struct RBLE_EVT_SM_Chk_Bd_Addr_Req_t *result)
{
    uint16_t bidx;
    int i;

    /* Check the device address to find the bond with a peer device. */
    for (bidx = 0; bidx < CFG_SECLIB_BOND_NUM; bidx++) {
        for (i = 0; i < RBLE_BD_ADDR_LEN; i++) {
            if (result->addr.addr[i] != 0x00) {
                break;
            }
        }

        if ((0 == memcmp(&BOND(bidx).peer_addr, &result->addr, RBLE_BD_ADDR_LEN)) &&
            (i != RBLE_BD_ADDR_LEN)) {
            break;
        }
    }

    /* Bond is available. */
    if (bidx < CFG_SECLIB_BOND_NUM) {
        RBLE_SM_Chk_Bd_Addr_Req_Resp(result->idx, BOND(bidx).peer_addr_type, TRUE,
                                     seclib_convert_sec_param(BOND(bidx).sec_prop),
                                     &BOND(bidx).peer_addr);

        /* Relate the bond with the connection. */
        CON(cidx).bidx = bidx;

        /* Complete to check the peer device address. */
        CON(cidx).con_state |= (SECLIB_CON_STATE_CHK_ADDR_COMP | SECLIB_CON_STATE_PAIRING_COMP);

        /* Send event to Application. */
        seclib_send_chk_addr_event(RBLE_OK, CON(cidx).conhdl);

        SECLIB_LOG("Bond found (public or static)");
    }
    /* No bond is available. */
    else {
        RBLE_SM_Chk_Bd_Addr_Req_Resp(result->idx, 0x00, FALSE, 0x00,
                                     &BOND(0).peer_addr); /* dummy */

        /* Complete to check the peer device address. */
        CON(cidx).con_state |= SECLIB_CON_STATE_CHK_ADDR_COMP;

        /* Do not have bond for the peer device. */
        CON(cidx).bidx = SECLIB_INVALID_IDX;

        /* Send event to Application. */
        seclib_send_chk_addr_event(RBLE_ERR, CON(cidx).conhdl);

        SECLIB_LOG("No bond found (public or static)");
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* RBLE_GAP_EVENT_CONNECTION_COMP event handler. */
static void seclib_gap_connection_comp_handler(struct RBLE_GAP_Connection_t *result)
{
    uint16_t cidx;

    if (result->connect_info.status == RBLE_OK) {
        /* Allocate the connecting peer device info slot. */
        cidx = seclib_allocate_cidx();

        /* Save the connectiong peer device info. */
        CON(cidx).conhdl         = result->connect_info.conhdl;
        CON(cidx).index          = result->connect_info.idx;
        CON(cidx).role           = result->connect_info.role;
        CON(cidx).peer_addr_type = result->connect_info.peer_addr_type;
        memcpy(&CON(cidx).peer_addr, &result->connect_info.peer_addr, RBLE_BD_ADDR_LEN);

        SECLIB_LOG("GAP_EVENT_CONNECTION_COMP");
    }
    else {
        SECLIB_ERR("GAP_EVENT_CONNECTION_COMP: Failed", result->connect_info.status);
    }
}

/* RBLE_GAP_EVENT_DISCONNECT_COMP event handler. */
static void seclib_gap_disconnect_comp_handler(struct RBLE_GAP_Disconnect_t *result)
{
    uint16_t cidx;

    /* Find the cidx with the peer device. */
    cidx = seclib_find_cidx(result->conhdl);

    /* Free the connecting peer device info slot . */
    if ((CON(cidx).bidx != SECLIB_INVALID_IDX) &&
        CON_STATE_UNDONE(SECLIB_CON_STATE_PAIRING_COMP, cidx)) {
        seclib_free_bidx(CON(cidx).bidx);
    }
    seclib_free_cidx(cidx);

    if (result->status == RBLE_OK) {
        SECLIB_LOG1("GAP_EVENT_DISCONNECT_COMP", result->reason);
    }
    else {
        SECLIB_ERR("GAP_EVENT_DISCONNECT_COMP: Failed", result->status);
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* Generate Key (16-oct). */
static void seclib_generate_key(RBLE_KEY_VALUE *value)
{
    int i;

    for (i = 0; i < RBLE_KEY_LEN; i++) {
        value->key[i] = (uint8_t)SecLib_Rand();
    }
}

/* Generate Rand. */
static void seclib_generate_nb(RBLE_RAND_NB *value)
{
    int i;

    for (i = 0; i < RBLE_RAND_NB_LEN; i++) {
        value->nb[i] = (uint8_t)SecLib_Rand();
    }
}

/* Generate passkey. */
static void seclib_generate_passkey(RBLE_KEY_VALUE *val)
{
    uint32_t passkey;

    passkey  = (uint32_t)SecLib_Rand();
    passkey |= (uint32_t)SecLib_Rand() << 16;
    passkey %= 1000000;

    /* Passkey is in dec 000000~999999, in hex 0x00000000~0x0F423F. */
    memset(&val->key, 0x00, RBLE_KEY_LEN);
    val->key[13] = (passkey >> 16) & 0xFF;
    val->key[14] = (passkey >>  8) & 0xFF;
    val->key[15] = (passkey >>  0) & 0xFF;
}

/* ================================================================================ */
/* ================================================================================ */

/* Send SECLIB_EVENT_INIT_COMP, SECLIB_EVENT_SET_PARAM_COMP event. */
static void seclib_send_status_event(RBLE_STATUS status, SECLIB_EVENT_TYPE type)
{
    SECLIB_EVENT event;

    event.type = type;
    event.param.status = status;

    info.lib_callback(&event);
}

/* Send SECLIB_EVENT_CHK_ADDR_COMP event. */
static void seclib_send_chk_addr_event(RBLE_STATUS status, uint16_t conhdl)
{
    SECLIB_EVENT event;

    event.type = SECLIB_EVENT_CHK_ADDR_COMP;
    event.param.chk_addr.status = status;
    event.param.chk_addr.conhdl = conhdl;

    info.lib_callback(&event);
}

/* Send SECLIB_EVENT_PAIRING_REQ event. */
static void seclib_send_pairing_req_event(uint16_t conhdl, uint8_t auth_req, uint8_t iocap)
{
    SECLIB_EVENT event;

    event.type = SECLIB_EVENT_PAIRING_REQ;
    event.param.pairing_req.conhdl   = conhdl;
    event.param.pairing_req.auth_req = auth_req;
    event.param.pairing_req.iocap    = iocap;

    info.lib_callback(&event);
}

/* Send SECLIB_EVENT_PASSKEY_IND event. */
static void seclib_send_passkey_ind_event(uint16_t conhdl, RBLE_KEY_VALUE *val)
{
    SECLIB_EVENT event;
    uint32_t     passkey;

    passkey  = (uint32_t)val->key[15] <<  0;
    passkey |= (uint32_t)val->key[14] <<  8;
    passkey |= (uint32_t)val->key[13] << 16;

    event.type = SECLIB_EVENT_PASSKEY_IND;
    event.param.passkey_ind.conhdl  = conhdl;
    event.param.passkey_ind.passkey = passkey;

    info.lib_callback(&event);
}

/* Send SECLIB_EVENT_PASSKEY_REQ event. */
static void seclib_send_passkey_req_event(uint16_t conhdl)
{
    SECLIB_EVENT event;

    event.type = SECLIB_EVENT_PASSKEY_REQ;
    event.param.passkey_req.conhdl = conhdl;

    info.lib_callback(&event);
}

/* Send SECLIB_EVENT_PAIRING_COMP event. */
static void seclib_send_pairing_comp_event(RBLE_STATUS status, uint16_t conhdl, uint8_t sec_prop)
{
    SECLIB_EVENT event;

    event.type = SECLIB_EVENT_PAIRING_COMP;
    event.param.pairing.conhdl   = conhdl;
    event.param.pairing.status   = status;
    event.param.pairing.sec_prop = sec_prop;

    info.lib_callback(&event);
}

/* Send SECLIB_EVENT_ENC_COMP event. */
static void seclib_send_enc_comp_event(RBLE_STATUS status, uint16_t conhdl, uint8_t sec_prop)
{
    SECLIB_EVENT event;

    event.type = SECLIB_EVENT_ENC_COMP;
    event.param.enc.conhdl   = conhdl;
    event.param.enc.status   = status;
    event.param.enc.sec_prop = sec_prop;

    info.lib_callback(&event);
}


/* Send SECLIB_EVENT_DELETE_BONDING_INFO_COMP event. */
static void seclib_send_delete_bonding_info_comp(RBLE_STATUS status)
{
    SECLIB_EVENT event;

    event.type = SECLIB_EVENT_DELETE_BONDING_INFO_COMP;
    event.param.status = status;

    info.lib_callback(&event);
}

/* ================================================================================ */
/* ================================================================================ */

/* Find allocated connecting peer device info index. */
static uint16_t seclib_find_cidx(uint16_t conhdl)
{
    uint16_t i;

    for (i = 0; i < CFG_CON; i++) {
        if (CON(i).conhdl == conhdl) {
            return i;
        }
    }

    return SECLIB_INVALID_IDX;
}

/* Allocate connecting peer device info slot. */
static uint16_t seclib_allocate_cidx(void)
{
    uint16_t i;

    for (i = 0; i < CFG_CON; i++) {
        if (CON(i).conhdl == SECLIB_INVALID_IDX) {
            memset(&CON(i), 0x00, sizeof(CON(i)));
            return i;
        }
    }

    return SECLIB_INVALID_IDX;
}

/* Free allocated connecting peer device info slot. */
static void seclib_free_cidx(uint16_t cidx)
{
    memset(&CON(cidx), 0x00, sizeof(CON(cidx)));
    CON(cidx).conhdl    = SECLIB_INVALID_IDX;
    CON(cidx).bidx      = SECLIB_INVALID_IDX;
    CON(cidx).tmp_bidx  = 0;
    CON(cidx).con_state = SECLIB_CON_STATE_NONE;
}

/* Allocate bonding info slot. */
static uint16_t seclib_allocate_bidx(void)
{
    uint16_t i;
    uint16_t bidx = SECLIB_INVALID_IDX;
    uint8_t  min = 0xFF;

    /* Find free bonding info slot. */
    for (i = 0; i < CFG_SECLIB_BOND_NUM; i++) {
        if (info.db.md.data[i] == SECLIB_BOND_STATE_FREE) {
            info.db.md.data[i] = SECLIB_BOND_STATE_ALLOCATED;
            return i;
        }
    }

    /* Find the bonding info that have least recently used. */
    for (i = 0; i < CFG_SECLIB_BOND_NUM; i++) {
        if (!seclib_is_bidx_used(i)) {
            if (min > info.db.md.data[i]) {
                bidx = i;
                min = info.db.md.data[i];
            }
        }
    }
    info.db.md.data[bidx] = SECLIB_BOND_STATE_ALLOCATED;

    return bidx;
}

/* Free bonding info slot. */
static void seclib_free_bidx(uint16_t bidx)
{
    info.db.md.data[bidx] = SECLIB_BOND_STATE_FREE;
}

/* ================================================================================ */
/* ================================================================================ */

/* Check whether the address is RPA. */
static BOOL seclib_is_rpa(uint16_t cidx)
{
    return (CON(cidx).peer_addr_type == RBLE_ADDR_RAND) &&
        ((CON(cidx).peer_addr.addr[5] & 0xC0) == 0x40);
}

/* Check whether the bidx is used by the connection peer device. */
static BOOL seclib_is_bidx_used(uint16_t bidx)
{
    int i;

    for (i = 0; i < CFG_CON; i++) {
        if (CON(i).bidx == bidx) {
            return TRUE;
        }
    }

    return FALSE;
}

static uint8_t seclib_convert_sec_param(uint8_t sec_prop)
{
    switch (sec_prop) {
    case RBLE_SMP_KSEC_UNAUTH_NO_MITM:
        return RBLE_SMP_UNAUTHENTICATED | RBLE_SMP_BONDED;
    case RBLE_SMP_KSEC_AUTH_MITM:
        return RBLE_SMP_AUTHENTICATED | RBLE_SMP_BONDED;
    default:
        return RBLE_SMP_SEC_NONE;
    }
}

static BOOL seclib_have_enc_key(uint16_t cidx)
{
    if (CON(cidx).bidx == SECLIB_INVALID_IDX) {
        return FALSE;
    }

    if (NONCON_STATE_UNDONE(SECLIB_NONCON_STATE_SET_PARAM_COMP)) {
        return FALSE;
    }

    if (info.param.role == RBLE_MASTER) {
        return CON_BOND(cidx).pd_ltk.valid == SECDB_VALID_KEY;
    }
    else {
        return CON_BOND(cidx).ld_ltk.valid == SECDB_VALID_KEY;
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* Update LRU data for the index. */
static void seclib_update_md(uint16_t bidx)
{
    uint8_t max = 0x00;
    int i;

    info.db.md.data[bidx] = 0x00;

    /* Set biggest value to the bidx md. */
    for (i = 0; i < CFG_SECLIB_BOND_NUM; i++) {
        if (max < info.db.md.data[i]) {
            max = info.db.md.data[i];
        }
    }
    info.db.md.data[bidx] = max + 1;

    /* Before overflow the md (uint8_t), make md minimum. */
    if (info.db.md.data[bidx] > SECLIB_BOND_STATE_BONDED_MAX) {
        uint8_t rank[CFG_SECLIB_BOND_NUM];
        int i, j;

        for (i = 0; i < CFG_SECLIB_BOND_NUM; i++) {
            rank[i] = 1;
        }

        for (i = 0; i < CFG_SECLIB_BOND_NUM; i++) {
            if (info.db.md.data[i] == SECLIB_BOND_STATE_ALLOCATED) {
                rank[i] = SECLIB_BOND_STATE_ALLOCATED;
                continue;
            }

            for (j = 0; j < CFG_SECLIB_BOND_NUM; j++) {
                if ((info.db.md.data[i] < info.db.md.data[j]) &&
                    (info.db.md.data[j] != SECLIB_BOND_STATE_ALLOCATED)) {
                    rank[j]++;
                }
            }
        }
        memcpy(info.db.md.data, rank, CFG_SECLIB_BOND_NUM);
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* Pairing has finished with success. */
static void seclib_pairing_success(uint16_t cidx)
{
    SECLIB_LOG("SecLib_Start_Encryption: Finish (pairing)");

    CON(cidx).con_state &= ~SECLIB_CON_STATE_IN_PAIRING;
    /* After pairing, communication is encrypted by STK. */
    CON(cidx).con_state |= SECLIB_CON_STATE_ENC_COMP;
    seclib_send_pairing_comp_event(RBLE_OK, CON(cidx).conhdl, CON_BOND(cidx).sec_prop);
}

/* Pairing has finished with error. */
static void seclib_pairing_failed(uint16_t cidx, RBLE_STATUS status)
{
    SECLIB_ERR("SecLib_Start_Encryption: Failed (pairing)", CON(cidx).con_state);

    CON(cidx).con_state &= ~(SECLIB_CON_STATE_PAIRING_COMP | SECLIB_CON_STATE_IN_PAIRING);
    seclib_send_pairing_comp_event(status, CON(cidx).conhdl, RBLE_SMP_KSEC_NONE);
}

/* Save bond info updated during pairing. */
static void seclib_pairing_save_result(uint16_t cidx)
{
    RBLE_STATUS status;

    SECLIB_LOG("SecLib_Start_Encryption: Save (pairing)");

    if (CON(cidx).bidx == SECLIB_INVALID_IDX) {
        CON(cidx).bidx = seclib_allocate_bidx();
    }

    info.db_cidx    = cidx;
    info.db_context = SECLIB_DB_CONTEXT_PAIRING_COMP;

    /* Save bond info. */
    seclib_update_md(CON(cidx).bidx);
    memcpy(&CON_BOND(cidx), &info.tmp_bond, sizeof(info.tmp_bond));
    status = SecDb_Save(&info.db, ((uint16_t)1 << CON(cidx).bidx), TRUE, TRUE);

    if (status != RBLE_OK) {
        seclib_pairing_failed(cidx, RBLE_ERR);
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* Encryption has finished with success. */
static void seclib_enc_success(uint16_t cidx)
{
    SECLIB_LOG("SecLib_Start_Encryption: Finish (encryption)");

    CON(cidx).con_state &= ~SECLIB_CON_STATE_PAIRING_REQ;

    seclib_send_enc_comp_event(RBLE_OK, CON(cidx).conhdl, CON_BOND(cidx).sec_prop);
}

/* Encryption has finished with error. */
static void seclib_enc_failed(uint16_t cidx)
{
    RBLE_STATUS status = RBLE_OK;
    uint16_t bidx = CON(cidx).bidx;
    int i;

    SECLIB_ERR("SecLib_Start_Encryption: Failed (encryption)", CON(cidx).con_state);

    CON(cidx).con_state &= ~SECLIB_CON_STATE_ENC_COMP;

    /* Delete failed bond info. */
    memset(&BOND(bidx), 0x00, sizeof(BOND(bidx)));

    /* Check whether other pairing is ongoing. */
    for (i = 0; i < CFG_CON; i++) {
        if (CON_STATE_DONE(SECLIB_CON_STATE_IN_PAIRING, i)) {
            break;
        }
    }

    /* If other pairing is not ongoing, delete bonding information. */
    if (i == CFG_CON) {
        info.db_cidx          = cidx;
        info.db_context       = SECLIB_DB_CONTEXT_ENC_DELTETE_COMP;
        info.db.md.data[bidx] = 0;
        status = SecDb_Save(&info.db, ((uint16_t)1 << bidx), FALSE, TRUE);
    }

    /* Event if failed to delete md, go ahead. */
    if ((i != CFG_CON) || (status != RBLE_OK)) {
        seclib_send_enc_comp_event(RBLE_ERR, CON(cidx).conhdl, RBLE_SMP_KSEC_NONE);
    }
}

/* Save md updated during encryption. */
static void seclib_enc_save(uint16_t cidx)
{
    RBLE_STATUS status = RBLE_OK;
    uint16_t bidx = CON(cidx).bidx;
    int i;

    SECLIB_LOG("SecLib_Start_Encryption: Save (encryption)");

    seclib_update_md(bidx);

    /* Check whether other pairing is ongoing. */
    for (i = 0; i < CFG_CON; i++) {
        if (CON_STATE_DONE(SECLIB_CON_STATE_IN_PAIRING, i)) {
            break;
        }
    }

    /* If other pairing is not ongoing, save md to DataFlash. */
    if (i == CFG_CON) {
        info.db_cidx    = cidx;
        info.db_context = SECLIB_DB_CONTEXT_ENC_COMP;
        status = SecDb_Save(&info.db, 0, FALSE, TRUE);
    }

    /* Event if failed to update md, go ahead. */
    if ((i != CFG_CON) || (status != RBLE_OK)) {
        seclib_enc_success(cidx);
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* GAP event callback. */
static void seclib_gap_callback(RBLE_GAP_EVENT *event)
{
    uint16_t cidx;

    switch (event->type) {
    case RBLE_GAP_EVENT_RESET_RESULT:
        seclib_gap_reset_result_handler(&event->param.reset_result);
        break;

    case RBLE_GAP_EVENT_SET_BONDING_MODE_COMP:
        seclib_gap_set_bonding_mode_handler(event->param.status);
        break;

    case RBLE_GAP_EVENT_SET_SECURITY_REQUEST_COMP:
        seclib_gap_set_security_request_handler(&event->param.set_sec_req);
        break;

    case RBLE_GAP_EVENT_SET_PRIVACY_FEATURE_COMP:
        seclib_gap_set_privacy_feature_handler(event->param.status);
        break;

    case RBLE_GAP_EVENT_RPA_RESOLVED:
        seclib_gap_rpa_resolved_handler(&event->param.rpa_resolved);
        break;

    case RBLE_GAP_EVENT_BONDING_COMP:
        cidx = seclib_find_cidx((uint16_t)event->param.bonding_comp.idx);
        seclib_gap_bonding_comp_handler(cidx, &event->param.bonding_comp);
        break;

    case RBLE_GAP_EVENT_BONDING_REQ_IND:
        cidx = seclib_find_cidx((uint16_t)event->param.bonding_req.index);
        seclib_gap_bonding_req_ind_handler(cidx, &event->param.bonding_req);
        break;

    case RBLE_GAP_EVENT_CONNECTION_COMP:
        seclib_gap_connection_comp_handler(&event->param.conn_comp);
        info.gap_callback(event);
        break;

    case RBLE_GAP_EVENT_DISCONNECT_COMP:
        seclib_gap_disconnect_comp_handler(&event->param.disconnect);
        info.gap_callback(event);
        break;

    case RBLE_GAP_EVENT_COMMAND_DISALLOWED_IND:
        SECLIB_ERR("GAP_Callback: Disallowed command has been executed",
                   event->param.cmd_disallowed_ind.opcode);
        break;

    case RBLE_GAP_EVENT_SET_RANDOM_ADDRESS_COMP:
        if (info.param.rpa_generate == FALSE) {
            info.gap_callback(event);
        }
        break;

    default:
        info.gap_callback(event);
        break;
    }
}

/* Security Manager Protcol event callback. */
static void seclib_sm_callback(RBLE_SM_EVENT *event)
{
    uint16_t cidx;

    switch (event->type) {
    case RBLE_SM_EVENT_SET_CNF:
        seclib_sm_set_cnf_handler(&event->param.set_conf);
        break;

    case RBLE_SM_TK_REQ_IND:
        seclib_sm_tk_req_ind_handler(&event->param.tk_req);
        break;

    case RBLE_SM_KEY_IND:
        seclib_sm_key_ind_handler(&event->param.key_ind);
        break;

    case RBLE_SM_LTK_REQ_IND:
        seclib_sm_ltk_req_ind_handler(&event->param.ltk_req);
        break;

    case RBLE_SM_LTK_REQ_FOR_ENC_IND:
        cidx = seclib_find_cidx((uint16_t)event->param.ltk_req_for_enc.idx);
        seclib_sm_ltk_req_for_enc_ind_handler(cidx, &event->param.ltk_req_for_enc);
        break;

    case RBLE_SM_ENC_START_IND:
        cidx = seclib_find_cidx((uint16_t)event->param.sec_start.idx);
        seclib_sm_enc_start_ind_handler(cidx, &event->param.sec_start);
        break;

    case RBLE_SM_IRK_REQ_IND:
        cidx = seclib_find_cidx((uint16_t)event->param.irk_req.idx);
        seclib_sm_irk_req_ind_handler(cidx, &event->param.irk_req);
        break;

    case RBLE_SM_CHK_BD_ADDR_REQ:
        cidx = seclib_find_cidx((uint16_t)event->param.chk_bdaddr.idx);
        seclib_sm_chk_bd_addr_req_handler(cidx, &event->param.chk_bdaddr);
        break;

    case RBLE_SM_TIMEOUT_EVT:
        SECLIB_ERR("SM_Callback: SM timeout has been occrred",
                   event->param.timeout_evt.idx);
        cidx = seclib_find_cidx((uint16_t)event->param.timeout_evt.idx);
        if (CON_STATE_DONE(SECLIB_CON_STATE_PAIRING_COMP, cidx)) {
            seclib_enc_sequence(cidx, RBLE_ERR);
        }
        else {
            seclib_pairing_sequence(cidx, RBLE_ERR);
        }
        break;

    case RBLE_SM_EVENT_COMMAND_DISALLOWED_IND:
        SECLIB_ERR("SM_Callback: Disallowed command has been executed",
                   event->param.cmd_disallowed_ind.opcode);
        break;

    case RBLE_SM_CSRK_REQ_IND:
    default:
        SECLIB_ERR("SM_Callback: This event should not be occurred", event->type);
        break;
    }
}

/* SecDb event callback. */
static void seclib_db_callback(SECDB_EVENT *event)
{
    switch (event->type) {
    case SECDB_EVENT_LOAD_COMP:
        if (info.db_context == SECLIB_DB_CONTEXT_LOAD_ALL) {
            seclib_db_load_all_comp_handler(&event->param.access);
        }
        else {
            SECLIB_ERR("SecDb_Load: Unknown context error", info.db_context);
        }
        break;

    case SECDB_EVENT_SAVE_COMP:
        if (info.db_context == SECLIB_DB_CONTEXT_DELETE) {
            seclib_db_delete_handler(&event->param.access);
        }
        else if (info.db_context == SECLIB_DB_CONTEXT_PAIRING_COMP) {
            seclib_db_save_bond_handler(&event->param.access);
        }
        else if (info.db_context == SECLIB_DB_CONTEXT_ENC_COMP) {
            seclib_db_save_md_handler(&event->param.access);
        }
        else if (info.db_context == SECLIB_DB_CONTEXT_ENC_DELTETE_COMP) {
            seclib_db_enc_delete_handler(&event->param.access);
        }
        else {
            SECLIB_ERR("SecDb_Save: Unknown context error", info.db_context);
        }
        break;

    default:
        SECLIB_ERR("SecDb: Unknown event type error", event->type);
        break;
    }
}

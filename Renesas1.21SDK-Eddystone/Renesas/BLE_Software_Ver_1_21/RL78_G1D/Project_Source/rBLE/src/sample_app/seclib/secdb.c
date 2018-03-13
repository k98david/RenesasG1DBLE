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
#include "secdb.h"
#include "eel_descriptor_t02.h"
#include "console.h"

/**************************************
     MACRO DEFINITIONS
 **************************************/
#ifdef CONFIG_EMBEDDED
#include "dataflash.h"
#else
#define Printf printf
#define DF_ERR_DISALLOWED  (0x03)
#define DF_ERR_NO_INSTANCE (0x0A)
#define DF_ERR_POOL_FULL   (0x0B)
#endif

#ifdef CFG_SECDB_DEBUG
#define SECDB_ERR(msg, val) Printf("[err] %s: 0x%x\n", msg, val)
#define SECDB_LOG(msg)      Printf("[log] %s\n", msg)
#else
#define SECDB_ERR(msg, val)
#define SECDB_LOG(msg)
#endif

#define STATE_DONE(s)       (((info.state & (s)) == (s)) ? TRUE : FALSE)
#define STATE_UNDONE(s)     (((info.state & (s)) != (s)) ? TRUE : FALSE)
#define SEQ_STATE_DONE(s)   (((info.seq_state & (s)) == (s)) ? TRUE : FALSE)
#define SEQ_STATE_UNDONE(s) (((info.seq_state & (s)) != (s)) ? TRUE : FALSE)

#define SECDB_INVALID_IDX (0xFFFF)

/**************************************
     PROTOTYPE DECLARATIONS
 **************************************/
static RBLE_STATUS secdb_access(SECDB_DB *db, uint8_t cmd, uint16_t bond_bitmap, BOOL ld_irk, BOOL md);

static void secdb_vs_callback(RBLE_VS_EVENT *event);
static void secdb_send_event(RBLE_STATUS status);
static void secdb_flash_sequence(void);
static uint16_t secdb_ffs(uint16_t val);

/**************************************
     ENUMERATION DEFINITIONS
 **************************************/
typedef enum {
    SECDB_STATE_NONE      = 0x00,
    SECDB_STATE_INIT_COMP = 0x01,
    SECDB_STATE_ACCESSING = 0x02,
} secdb_state;

typedef enum {
    SECDB_SEQ_STATE_NONE                         = 0x00,
    SECDB_SEQ_STATE_FLASH_MANAGEMENT_START_COMP  = 0x01,
    SECDB_SEQ_STATE_FLASH_ACCESS_LD_IRK_COMP     = 0x02,
    SECDB_SEQ_STATE_FLASH_ACCESS_MD_COMP         = 0x04,
    SECDB_SEQ_STATE_FLASH_ACCESS_BOND_COMP       = 0x08,
    SECDB_SEQ_STATE_FLASH_MANAGEMENT_STOP_COMP   = 0x10,
    SECDB_SEQ_STATE_FLASH_OPERATION_CLEANUP_COMP = 0x20,
    SECDB_SEQ_STATE_DONE                         = (SECDB_SEQ_STATE_FLASH_MANAGEMENT_START_COMP |
                                                    SECDB_SEQ_STATE_FLASH_ACCESS_LD_IRK_COMP    |
                                                    SECDB_SEQ_STATE_FLASH_ACCESS_MD_COMP     |
                                                    SECDB_SEQ_STATE_FLASH_ACCESS_BOND_COMP      |
                                                    SECDB_SEQ_STATE_FLASH_MANAGEMENT_STOP_COMP  |
                                                    SECDB_SEQ_STATE_FLASH_OPERATION_CLEANUP_COMP),
    SECDB_SEQ_STATE_DIALLOWD_ERR_HANDLE          = 0x40,
} secdb_seq_state;


/**************************************
     TYPE DEFINITIONS
 **************************************/
static struct secdb_info_t {
    RBLE_VS_EVENT_HANDLER  vs_callback; /* Application defined vs callback */
    SECDB_EVENT_HANDLER    db_callback; /* SecLib defined db callback */
    secdb_state            state;       /* db state */
    secdb_seq_state        seq_state;   /* db accessing state */

    /* Temporary saved context */
    SECDB_DB              *db;
    uint8_t                cmd;
    uint16_t               saved_bond_bitmap;
    uint16_t               bond_bitmap;
    BOOL                   ld_irk;
    BOOL                   md;
} info;

/**************************************
     FUNCTION DEFINITIONS
 **************************************/

/**
 * @brief Initialize SecDb.
 * @param[in] vs_callback  Vendor Specific event handler
 * @param[in] db_callback SecDb event handler
 * @retval RBLE_OK Success.
 * @retval RBLE_STATUS_ERROR Invalid SecDb state.
 */
RBLE_STATUS SecDb_Init(RBLE_VS_EVENT_HANDLER vs_callback,
                       SECDB_EVENT_HANDLER db_callback)
{
    /* Initialize SecDb parameters. */
    info.vs_callback = vs_callback;
    info.db_callback = db_callback;
    info.state = SECDB_STATE_INIT_COMP;

    return RBLE_VS_Enable(secdb_vs_callback);
}

/**
 * @brief Load data from SecDb.
 * @param[in] db Secufity database
 * @param[in] bond_bitmap Load target bond index by bitmap
 * @param[in] ld_irk Load local device IRK or not
 * @param[in] md Load management data or not
 * @retval RBLE_OK Success.
 * @retval RBLE_PARAM_ERR Invalid parameter.
 * @retval RBLE_STATUS_ERROR Invalid SecDb state.
 */
RBLE_STATUS SecDb_Load(SECDB_DB *db, uint16_t bond_bitmap, BOOL ld_irk, BOOL md)
{
    return secdb_access(db, RBLE_VS_FLASH_CMD_READ, bond_bitmap, ld_irk, md);
}

/**
 * @brief Save data from SecDb.
 * @param[in] db Secufity database
 * @param[in] bond_bitmap Save target bond index by bitmap
 * @param[in] ld_irk Save local device IRK or not
 * @param[in] md Save management data or not
 * @retval RBLE_OK Success.
 * @retval RBLE_PARAM_ERR Invalid parameter.
 * @retval RBLE_STATUS_ERROR Invalid SecDb state.
 */
RBLE_STATUS SecDb_Save(SECDB_DB *db, uint16_t bond_bitmap, BOOL ld_irk, BOOL md)
{
    return secdb_access(db, RBLE_VS_FLASH_CMD_WRITE, bond_bitmap, ld_irk, md);
}

/* ================================================================================ */
/* ================================================================================ */

/* Save or Load SecDb. */
static RBLE_STATUS secdb_access(SECDB_DB *db, uint8_t cmd,
                                uint16_t bond_bitmap, BOOL ld_irk, BOOL md)
{
    /* Check input parameters. */
    if (db == NULL) {
        SECDB_ERR("secdb_access: Invalid parameters", RBLE_PARAM_ERR);
        return RBLE_PARAM_ERR;
    }

    /* Check state. */
    if (STATE_UNDONE(SECDB_STATE_INIT_COMP)) {
        SECDB_ERR("secdb_access: Invalid state", info.state);
        return RBLE_STATUS_ERROR;
    }

    /* Make sure that other access is not ongoing. */
    if (STATE_DONE(SECDB_STATE_ACCESSING)) {
        SECDB_ERR("secdb_access: Other access is ongoing", info.state);
        return RBLE_STATUS_ERROR;
    }

    /* Retain access parameters in order to include these in event parameters. */
    info.db                 = db;
    info.cmd                = cmd;
    info.saved_bond_bitmap  = bond_bitmap;
    info.bond_bitmap        = bond_bitmap;
    info.ld_irk             = ld_irk;
    info.md                 = md;
    info.state             |= SECDB_STATE_ACCESSING;

    /* Determine access target. */
    info.seq_state  = SECDB_SEQ_STATE_FLASH_OPERATION_CLEANUP_COMP;

    if (info.ld_irk == FALSE) {
        info.seq_state  |= SECDB_SEQ_STATE_FLASH_ACCESS_LD_IRK_COMP;
    }

    if (info.md == FALSE) {
        info.seq_state  |= SECDB_SEQ_STATE_FLASH_ACCESS_MD_COMP;
    }

    if (info.saved_bond_bitmap == 0) {
        info.seq_state  |= SECDB_SEQ_STATE_FLASH_ACCESS_BOND_COMP;
    }

    /* Start access sequence. */
    secdb_flash_sequence();

    return RBLE_OK;
}

/* flash access sequence. */
static void secdb_flash_sequence(void)
{
    RBLE_VS_FLASH_ACCESS_PARAM param;
    uint16_t bidx;

    param.cmd = info.cmd;

    /* Cleranup when pool full is occurred. */
    if (SEQ_STATE_UNDONE(SECDB_SEQ_STATE_FLASH_OPERATION_CLEANUP_COMP)) {
        SECDB_LOG("secdb_flash_sequence: VS_Flash_Operation: Start CLEANUP");
        RBLE_VS_Flash_Operation(RBLE_VS_FLASH_CMD_CLEANUP);
    }
    /* Initialize flash access. */
    else if (SEQ_STATE_UNDONE(SECDB_SEQ_STATE_FLASH_MANAGEMENT_START_COMP)) {
        SECDB_LOG("secdb_access: Start");
        RBLE_VS_Flash_Management(RBLE_VS_FLASH_CMD_START);
    }
    /* Access Management Data. */
    else if (SEQ_STATE_UNDONE(SECDB_SEQ_STATE_FLASH_ACCESS_MD_COMP)) {
        param.id   = EEL_ID_MD;
        param.size = sizeof(SECDB_MD);
        param.addr = (uint8_t *)&info.db->md;
        RBLE_VS_Flash_Access(&param);
    }
    /* Access LD_IRK. */
    else if (SEQ_STATE_UNDONE(SECDB_SEQ_STATE_FLASH_ACCESS_LD_IRK_COMP)) {
        param.id   = EEL_ID_LD_IRK;
        param.size = sizeof(SECDB_IRK);
        param.addr = (uint8_t *)&info.db->ld_irk;
        RBLE_VS_Flash_Access(&param);
    }
    /* Access Bonds. */
    else if (SEQ_STATE_UNDONE(SECDB_SEQ_STATE_FLASH_ACCESS_BOND_COMP)) {
        bidx = secdb_ffs(info.bond_bitmap);
        param.id          = EEL_ID_BOND_1 + (uint8_t)bidx;
        param.size        = sizeof(SECDB_BOND);
        param.addr        = (uint8_t *)&info.db->bonds[bidx];
        RBLE_VS_Flash_Access(&param);
    }
    /* Finalize flash access. */
    else if (SEQ_STATE_UNDONE(SECDB_SEQ_STATE_FLASH_MANAGEMENT_STOP_COMP)) {
        RBLE_VS_Flash_Management(RBLE_VS_FLASH_CMD_STOP);
    }
    else if (SEQ_STATE_DONE(SECDB_SEQ_STATE_DONE)) {
        SECDB_LOG("secdb_access: Finish");
        secdb_send_event(RBLE_OK);
    }
    else {
        SECDB_ERR("secdb_flash_sequence: Invalid state.", info.seq_state);
    }
}

/* VS_EVENT_FLASH_MANAGEMENT_COMP event handler. */
static void secdb_vs_flash_management_comp_handler(struct RBLE_VS_Flash_Management_Comp_t *result)
{
    if (result->status == RBLE_OK) {
        if (SEQ_STATE_DONE(SECDB_SEQ_STATE_DIALLOWD_ERR_HANDLE)) {
            info.seq_state &= ~SECDB_SEQ_STATE_DIALLOWD_ERR_HANDLE;
        }
        else if (result->cmd == RBLE_VS_FLASH_CMD_START) {
            info.seq_state |= SECDB_SEQ_STATE_FLASH_MANAGEMENT_START_COMP;
        }
        else if (result->cmd == RBLE_VS_FLASH_CMD_STOP) {
            info.seq_state |= SECDB_SEQ_STATE_FLASH_MANAGEMENT_STOP_COMP;
        }
        else {
            SECDB_ERR("secdb_access: Inavlid flash command", RBLE_ERR);
        }

        secdb_flash_sequence();
    }
    else {
        if ((result->cmd == RBLE_VS_FLASH_CMD_START) &&
            (result->status == DF_ERR_DISALLOWED)) {
            info.seq_state |= SECDB_SEQ_STATE_DIALLOWD_ERR_HANDLE;
            RBLE_VS_Flash_Management(RBLE_VS_FLASH_CMD_STOP);
        }
        else {
            SECDB_ERR("secdb_access: VS_Flash_Management: Failed", result->status);
            secdb_send_event(RBLE_ERR);
        }
    }
}

/* VS_EVENT_FLASH_ACCESS_COMP event handler. */
static void secdb_vs_flash_access_comp_handler(struct RBLE_VS_Flash_Access_Comp_t *result)
{
    if ((result->status == RBLE_OK) ||
        /* First read after DataFlash format cause this error. */
        (result->status == DF_ERR_NO_INSTANCE)) {
        if ((result->id >= EEL_ID_BOND_1) && (result->id < EEL_ID_BOND_1 + CFG_SECLIB_BOND_NUM)) {
            info.bond_bitmap &= ~((uint16_t)1 << (result->id - EEL_ID_BOND_1));
            /* When all bonds are loaded, go to next sequence. */
            if (info.bond_bitmap == 0) {
                info.seq_state |= SECDB_SEQ_STATE_FLASH_ACCESS_BOND_COMP;
            }
        }
        else if (result->id == EEL_ID_LD_IRK) {
            info.seq_state |= SECDB_SEQ_STATE_FLASH_ACCESS_LD_IRK_COMP;
        }
        else if (result->id == EEL_ID_MD) {
            info.seq_state |= SECDB_SEQ_STATE_FLASH_ACCESS_MD_COMP;
        }
        else {
            SECDB_ERR("secdb_access: Invalid EEL ID", RBLE_ERR);
        }

        secdb_flash_sequence();
    }
    else if (result->status == DF_ERR_POOL_FULL) {
        SECDB_LOG("secdb_access: VS_Flash_Access: Pool full is occrred");
        info.seq_state &= ~SECDB_SEQ_STATE_FLASH_OPERATION_CLEANUP_COMP;
        secdb_flash_sequence();
    }
    else {
        SECDB_ERR("secdb_access: VS_Flash_Access: Failed", result->status);
        secdb_send_event(RBLE_ERR);
    }
}

/* VS_EVENT_FLASH_OPERATION_COMP event handler. */
static void secdb_vs_flash_operation_comp_handler(struct RBLE_VS_Flash_Operation_Comp_t *result)
{
    if (result->status == RBLE_OK) {
        info.seq_state |= SECDB_SEQ_STATE_FLASH_OPERATION_CLEANUP_COMP;
        secdb_flash_sequence();
    }
    else {
        SECDB_ERR("secdb_access: VS_Flash_Operation: Failed", result->status);
        secdb_send_event(RBLE_ERR);
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* VS event callback. */
static void secdb_vs_callback(RBLE_VS_EVENT *event)
{
    /* Handle VS event only when SecDb access is ongoing. */
    if (STATE_DONE(SECDB_STATE_ACCESSING)) {
        switch (event->type) {
        case RBLE_VS_EVENT_FLASH_MANAGEMENT_COMP:
            secdb_vs_flash_management_comp_handler(&event->param.management_comp);
            break;

        case RBLE_VS_EVENT_FLASH_ACCESS_COMP:
            secdb_vs_flash_access_comp_handler(&event->param.access_comp);
            break;

        case RBLE_VS_EVENT_FLASH_OPERATION_COMP:
            secdb_vs_flash_operation_comp_handler(&event->param.operation_comp);
            break;

        default:
            if (info.vs_callback) {
                info.vs_callback(event);
            }
            break;
        }
    }
    else {
        if (info.vs_callback) {
            info.vs_callback(event);
        }
    }
}

/* ================================================================================ */
/* ================================================================================ */

/* Send SecDb event to Application. */
static void secdb_send_event(RBLE_STATUS status)
{
    SECDB_EVENT event;

    event.type = (info.cmd == RBLE_VS_FLASH_CMD_WRITE)
        ? SECDB_EVENT_SAVE_COMP : SECDB_EVENT_LOAD_COMP;
    event.param.access.status      = status;
    event.param.access.bond_bitmap = info.saved_bond_bitmap;
    event.param.access.ld_irk      = info.ld_irk;
    event.param.access.md          = info.md;

    info.state &= ~SECDB_STATE_ACCESSING;

    info.db_callback(&event);
}

/* Find first set bit. */
static uint16_t secdb_ffs(uint16_t val)
{
    uint16_t i;

    for (i = 0; i < sizeof(uint16_t) * 8; i++) {
        if ((val >> i) & 1) {
            return i;
        }
    }

    return SECDB_INVALID_IDX;
}

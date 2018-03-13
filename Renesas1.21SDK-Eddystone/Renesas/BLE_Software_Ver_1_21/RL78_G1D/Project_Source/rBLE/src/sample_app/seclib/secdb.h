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

#ifndef _SECDB_H_
#define _SECDB_H_

#ifdef CONFIG_EMBEDDED
#include <arch.h>
#endif

#include <stdio.h>
#include <rble_api.h>

#define SECDB_VALID_KEY   (0xCAFE)

/* SecDb event type. */
typedef enum {
    SECDB_EVENT_LOAD_COMP = 0x01,
    SECDB_EVENT_SAVE_COMP,
} SECDB_EVENT_TYPE;

/* SecDb event structure. */
typedef struct secdb_event_t {
    SECDB_EVENT_TYPE type;
    union {
        struct SecDb_Access_t {
            RBLE_STATUS status;
            uint16_t bond_bitmap;
            BOOL ld_irk;
            BOOL md;
        } access;
    } param;
} SECDB_EVENT;

/* SecDb event calblack type. */
typedef void (*SECDB_EVENT_HANDLER)(SECDB_EVENT *event);

/* SecDb LTK structure. */
typedef struct secdb_ltk_t {
    uint16_t       valid;       /* Is this key valid ? */
    RBLE_KEY_VALUE val;         /* LTK itself */
    uint16_t       ediv;
    RBLE_RAND_NB   nb;
} SECDB_LTK;

/* SecDb IRK structure. */
typedef struct secdb_irk_t {
    uint16_t       valid;       /* Is this key valid ? */
    RBLE_KEY_VALUE val;         /* IRK itself */
} SECDB_IRK;

/* SecDb bonding information structure. */
typedef struct secdb_bond_t {
    uint8_t      sec_prop;       /* Security property */
    uint8_t      key_size;       /* Key size */
    RBLE_BD_ADDR peer_addr;      /* Peer device address */
    uint8_t      peer_addr_type; /* Peer device address type */
    uint8_t      dummy;
    SECDB_IRK    pd_irk;         /* Peer device IRK */
    SECDB_LTK    pd_ltk;         /* LTK used to encrypt the link */
    SECDB_LTK    ld_ltk;         /* LTK used to encrypt the link */
} SECDB_BOND;

/* SecDb management data structure. */
typedef struct secdb_md_t {
    uint8_t data[CFG_SECLIB_BOND_NUM];
} SECDB_MD;

/* SecDb database. */
typedef struct secdb_db_t {
    SECDB_IRK  ld_irk;                     /* Local device IRK */
    SECDB_MD   md;                         /* Management Data */
    SECDB_BOND bonds[CFG_SECLIB_BOND_NUM]; /* Bond information */
} SECDB_DB;

/* SecDb APIs. */
RBLE_STATUS SecDb_Init(RBLE_VS_EVENT_HANDLER vs_callback,
                       SECDB_EVENT_HANDLER secdb_callback);
RBLE_STATUS SecDb_Load(SECDB_DB *db, uint16_t bond_bitmap, BOOL ld_irk, BOOL md);
RBLE_STATUS SecDb_Save(SECDB_DB *db, uint16_t bond_bitmap, BOOL ld_irk, BOOL md);

#endif /* _SECDB_H_ */

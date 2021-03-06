/**
 ****************************************************************************************
 *
 * @file        prf_config.c
 *
 * @brief   Setting of Configuration Parameters for Profile
 *
 * Copyright (C) RivieraWaves 2009-2012
 *
 * Copyright(C) 2013-2017 Renesas Electronics Corporation
 *
 * This file is generated by Bluetooth Developer Studio plugin.
 *     BDS Version    : 1.1.3139.0
 *     Script Version : 2.0.1
 *
 ****************************************************************************************
 */

/**
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "arch.h"
#include "rwke_api.h"

#include "prf_config.h"
#include "db_handle.h"
#include "rble_api.h"



#if USE_SAMPLE_PROFILE
/*******************************
 * Sample Custom Service       *
 *******************************/
/* Service ( Beacon service ) */
static const uint8_t beacon_service_svc[RBLE_GATT_16BIT_UUID_OCTET] = RBLE_BDS_SVC_BEACON_SERVICE;

/* Characteristic ( Beacon service: N_UID ) */
static const struct atts_char_desc bs_uid_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_N_UID_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_N_UID_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_N_UID};

uint8_t bs_N_uid_char_val[Chr_len] = {0};

static const uint8_t N_UID[] = {'N','_','U', 'I', 'D'};

/* Characteristic ( Beacon service: L_UID ) */
static const struct atts_char_desc bs_L_uid_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_L_UID_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_L_UID_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_L_UID};

uint8_t bs_L_uid_char_val[Chr_len] = {0};

static const uint8_t L_UID[] = {'L','_','U', 'I', 'D'};

/* Characteristic ( Beacon service: R_UID ) */
static const struct atts_char_desc bs_R_uid_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_R_UID_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_R_UID_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_R_UID};

uint8_t bs_R_uid_char_val[Chr_len] = {0};

static const uint8_t R_UID[] = {'R','_','U', 'I', 'D'};


/* Characteristic ( Beacon service: N_URL ) */
static const struct atts_char_desc bs_N_url_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_N_URL_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_N_URL_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_N_URL};

uint8_t bs_N_url_char_val[Chr_len] = {0};

static const uint8_t N_URL[] = {'N','_','U', 'R', 'L'};

/* Characteristic ( Beacon service: L_URL ) */
static const struct atts_char_desc bs_L_url_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_L_URL_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_L_URL_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_L_URL};

uint8_t bs_L_url_char_val[Chr_len] = {0};

static const uint8_t L_URL[] = {'L','_','U', 'R', 'L'};

/* Characteristic ( Beacon service: R_URL ) */
static const struct atts_char_desc bs_R_url_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_R_URL_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_R_URL_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_R_URL};

uint8_t bs_R_url_char_val[Chr_len] = {0};

static const uint8_t R_URL[] = {'R','_','U', 'R', 'L'};


/* Characteristic ( Beacon service: Set1 ) */
static const struct atts_char_desc bs_Set1_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_Set1_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_Set1_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_Set1};

uint8_t bs_Set1_char_val[Chr_len] = {0};

static const uint8_t Set1[] = {'S', 'e', 't','1'};


/* Characteristic ( Beacon service: Set2 ) */
static const struct atts_char_desc bs_Set2_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_Set2_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_Set2_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_Set2};

uint8_t bs_Set2_char_val[Chr_len] = {0};

static const uint8_t Set2[] = {'S', 'e', 't','2'};


/* Characteristic ( Beacon service: Set3 ) */
static const struct atts_char_desc bs_Set3_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_Set3_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_Set3_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_Set3};

uint8_t bs_Set3_char_val[Chr_len] = {0};

static const uint8_t Set3[] = {'S', 'e', 't','3'};


/* Characteristic ( Beacon service: Set4 ) */
static const struct atts_char_desc bs_Set4_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_Set4_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_Set4_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_Set4};

uint8_t bs_Set4_char_val[Chr_len] = {0};

static const uint8_t Set4[] = {'S', 'e', 't','4'};
/* Characteristic ( Beacon service: CMD ) */
static const struct atts_char_desc bs_cmd_char = {
	RBLE_GATT_CHAR_PROP_RD | RBLE_GATT_CHAR_PROP_WR,
	{(uint8_t)(NEW_PROFILE_HDL_BS_CMD_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_BS_CMD_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_BS_CMD};

uint8_t bs_cmd_char_val[Chr_len] = {0};

static const uint8_t CMD[] = {'C', 'M', 'D'};




/* Service ( Device Information ) */
static const uint8_t device_information_svc[RBLE_GATT_16BIT_UUID_OCTET] = RBLE_BDS_SVC_DEVICE_INFORMATION;

/* Characteristic ( Device Information: Manufacturer Name String ) */
static const struct atts_char_desc di_manufacturer_name_string_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_MANUFACTURER_NAME_STRING_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_MANUFACTURER_NAME_STRING_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_MANUFACTURER_NAME_STRING};

uint8_t di_manufacturer_name_string_char_val[] = "Sample";

/* Characteristic ( Device Information: Model Number String ) */
static const struct atts_char_desc di_model_number_string_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_MODEL_NUMBER_STRING_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_MODEL_NUMBER_STRING_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_MODEL_NUMBER_STRING};

uint8_t di_model_number_string_char_val[] = "Sample";

/* Characteristic ( Device Information: Serial Number String ) */
static const struct atts_char_desc di_serial_number_string_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_SERIAL_NUMBER_STRING_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_SERIAL_NUMBER_STRING_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_SERIAL_NUMBER_STRING};

uint8_t di_serial_number_string_char_val[] = "Sample";

/* Characteristic ( Device Information: Hardware Revision String ) */
static const struct atts_char_desc di_hardware_revision_string_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_HARDWARE_REVISION_STRING_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_HARDWARE_REVISION_STRING_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_HARDWARE_REVISION_STRING};

uint8_t di_hardware_revision_string_char_val[] = "Sample";

/* Characteristic ( Device Information: Firmware Revision String ) */
static const struct atts_char_desc di_firmware_revision_string_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_FIRMWARE_REVISION_STRING_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_FIRMWARE_REVISION_STRING_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_FIRMWARE_REVISION_STRING};

uint8_t di_firmware_revision_string_char_val[] = "Sample";

/* Characteristic ( Device Information: Software Revision String ) */
static const struct atts_char_desc di_software_revision_string_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_SOFTWARE_REVISION_STRING_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_SOFTWARE_REVISION_STRING_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_SOFTWARE_REVISION_STRING};

uint8_t di_software_revision_string_char_val[] = "Sample";

/* Characteristic ( Device Information: System ID ) */
static const struct atts_char_desc di_system_id_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_SYSTEM_ID_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_SYSTEM_ID_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_SYSTEM_ID};

struct st_di_system_id_char_val
{
	uint8_t manufacturer_identifier[5];
	uint8_t organizationally_unique_identifier[3];
} di_system_id_char_val = { {0}, {0} };

/* Characteristic ( Device Information: IEEE 11073-20601 Regulatory Certification Data List ) */
static const struct atts_char_desc di_ieee_11073_20601_regulatory_certification_data_list_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_IEEE_11073_20601_REGULATORY_CERTIFICATION_DATA_LIST_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_IEEE_11073_20601_REGULATORY_CERTIFICATION_DATA_LIST_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_IEEE_11073_20601_REGULATORY_CERTIFICATION_DATA_LIST};

uint8_t di_ieee_11073_20601_regulatory_certification_data_list_char_val[6] = {0};

/* Characteristic ( Device Information: PnP ID ) */
static const struct atts_char_desc di_pnp_id_char = {
	RBLE_GATT_CHAR_PROP_RD,
	{(uint8_t)(NEW_PROFILE_HDL_DI_PNP_ID_VAL & 0xff),(uint8_t)((NEW_PROFILE_HDL_DI_PNP_ID_VAL >> 8) & 0xff)},
	RBLE_BDS_CHAR_DI_PNP_ID};

struct st_di_pnp_id_char_val
{
	uint8_t vendor_id_source;
	uint16_t vendor_id;
	uint16_t product_id;
	uint16_t product_version;
} di_pnp_id_char_val = { 0, 0, 0, 0 };



#endif /* #if USE_SAMPLE_PROFILE */

/** Attribute Database */
const struct atts_desc atts_desc_list_prf[] =
{
    #if (USE_SAMPLE_PROFILE)
    /*********************************
     * Sample Custom Service         *
     *********************************/
	/* Service ( Beacon service ) */
	{ RBLE_DECL_PRIMARY_SERVICE, 
		sizeof(beacon_service_svc),	sizeof(beacon_service_svc),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_SVC_BEACON_SERVICE),	RBLE_GATT_PERM_RD,	(void *)&beacon_service_svc},
	/* Characteristic ( Beacon service: N_UID ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_uid_char),	sizeof(bs_uid_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_N_UID_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_uid_char},
	{ 0xBB01, 
		sizeof(bs_N_uid_char_val),	sizeof(bs_N_uid_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_N_UID_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_N_uid_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(N_UID),				sizeof(N_UID),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_N_UID_DESC),				(RBLE_GATT_PERM_RD),	(void *)&N_UID[0] },	

	/* Characteristic ( Beacon service: L_UID ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_L_uid_char),	sizeof(bs_L_uid_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_L_UID_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_L_uid_char},
	{ 0xBB02, 
		sizeof(bs_L_uid_char_val),	sizeof(bs_L_uid_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_L_UID_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_L_uid_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(L_UID),				sizeof(L_UID),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_L_UID_DESC),				(RBLE_GATT_PERM_RD),	(void *)&L_UID[0] },	

		
	/* Characteristic ( Beacon service: R_UID ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_R_uid_char),	sizeof(bs_R_uid_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_R_UID_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_R_uid_char},
	{ 0xBB03, 
		sizeof(bs_R_uid_char_val),	sizeof(bs_R_uid_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_R_UID_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_R_uid_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(R_UID),				sizeof(R_UID),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_R_UID_DESC),				(RBLE_GATT_PERM_RD),	(void *)&R_UID[0] },		
		
		
	/* Characteristic ( Beacon service: N_URL ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_N_url_char),	sizeof(bs_N_url_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_N_URL_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_N_url_char},
	{ 0xBB04, 
		sizeof(bs_N_url_char_val),	sizeof(bs_N_url_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_N_URL_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_N_url_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(N_URL),				sizeof(N_URL),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_N_URL_DESC),				(RBLE_GATT_PERM_RD),	(void *)&N_URL[0] },	

	/* Characteristic ( Beacon service: L_URL ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_L_url_char),	sizeof(bs_L_url_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_L_URL_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_L_url_char},
	{ 0xBB05, 
		sizeof(bs_L_url_char_val),	sizeof(bs_L_url_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_L_URL_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_L_url_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(L_URL),				sizeof(L_URL),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_L_URL_DESC),				(RBLE_GATT_PERM_RD),	(void *)&L_URL[0] },	
	
		
	/* Characteristic ( Beacon service: R_URL ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_R_url_char),	sizeof(bs_R_url_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_R_URL_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_R_url_char},
	{ 0xBB06, 
		sizeof(bs_R_url_char_val),	sizeof(bs_R_url_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_R_URL_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_R_url_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(R_URL),				sizeof(R_URL),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_R_URL_DESC),				(RBLE_GATT_PERM_RD),	(void *)&R_URL[0] },	
		
		
	/* Characteristic ( Beacon service: Set1 ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_Set1_char),	sizeof(bs_Set1_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set1_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_Set1_char},
	{ 0xBB07, 
		sizeof(bs_Set1_char_val),	sizeof(bs_Set1_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set1_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_Set1_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(Set1),				sizeof(Set1),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set1_DESC),				(RBLE_GATT_PERM_RD),	(void *)&Set1[0] },	

	/* Characteristic ( Beacon service: Set2 ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_Set2_char),	sizeof(bs_Set1_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set2_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_Set2_char},
	{ 0xBB08, 
		sizeof(bs_Set2_char_val),	sizeof(bs_Set2_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set2_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_Set2_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(Set2),				sizeof(Set2),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set2_DESC),				(RBLE_GATT_PERM_RD),	(void *)&Set2[0] },	
		
	/* Characteristic ( Beacon service: Set3 ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_Set3_char),	sizeof(bs_Set3_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set3_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_Set3_char},
	{ 0xBB09, 
		sizeof(bs_Set3_char_val),	sizeof(bs_Set3_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set3_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_Set3_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(Set3),				sizeof(Set3),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set3_DESC),				(RBLE_GATT_PERM_RD),	(void *)&Set3[0] },	
		
	/* Characteristic ( Beacon service: Set4 ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_Set4_char),	sizeof(bs_Set4_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set4_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_Set4_char},
	{ 0xBB0A, 
		sizeof(bs_Set4_char_val),	sizeof(bs_Set4_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set4_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_Set4_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(Set4),				sizeof(Set4),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_Set4_DESC),				(RBLE_GATT_PERM_RD),	(void *)&Set4[0] },	
		
		
	/* Characteristic ( Beacon service: CMD ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(bs_cmd_char),	sizeof(bs_cmd_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_CMD_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&bs_cmd_char},
	{ 0xBB0B, 
		sizeof(bs_cmd_char_val),	sizeof(bs_cmd_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_CMD_VAL), 	( RBLE_GATT_PERM_RD | RBLE_GATT_PERM_WR ),	(void *)&bs_cmd_char_val},
	{ RBLE_DESC_CHAR_USER_DESCRIPTION,
		sizeof(CMD),				sizeof(CMD),			TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_BS_CMD_DESC),				(RBLE_GATT_PERM_RD),	(void *)&CMD[0] },	
	
		
	/* Service ( Device Information ) */
	{ RBLE_DECL_PRIMARY_SERVICE, 
		sizeof(device_information_svc),	sizeof(device_information_svc),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_SVC_DEVICE_INFORMATION),	RBLE_GATT_PERM_RD,	(void *)&device_information_svc},
	/* Characteristic ( Device Information: Manufacturer Name String ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_manufacturer_name_string_char),	sizeof(di_manufacturer_name_string_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_MANUFACTURER_NAME_STRING_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_manufacturer_name_string_char},
	{ 0x2A29, 
		sizeof(di_manufacturer_name_string_char_val),	sizeof(di_manufacturer_name_string_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_MANUFACTURER_NAME_STRING_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_manufacturer_name_string_char_val},
	/* Characteristic ( Device Information: Model Number String ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_model_number_string_char),	sizeof(di_model_number_string_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_MODEL_NUMBER_STRING_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_model_number_string_char},
	{ 0x2A24, 
		sizeof(di_model_number_string_char_val),	sizeof(di_model_number_string_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_MODEL_NUMBER_STRING_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_model_number_string_char_val},
	/* Characteristic ( Device Information: Serial Number String ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_serial_number_string_char),	sizeof(di_serial_number_string_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_SERIAL_NUMBER_STRING_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_serial_number_string_char},
	{ 0x2A25, 
		sizeof(di_serial_number_string_char_val),	sizeof(di_serial_number_string_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_SERIAL_NUMBER_STRING_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_serial_number_string_char_val},
	/* Characteristic ( Device Information: Hardware Revision String ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_hardware_revision_string_char),	sizeof(di_hardware_revision_string_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_HARDWARE_REVISION_STRING_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_hardware_revision_string_char},
	{ 0x2A27, 
		sizeof(di_hardware_revision_string_char_val),	sizeof(di_hardware_revision_string_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_HARDWARE_REVISION_STRING_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_hardware_revision_string_char_val},
	/* Characteristic ( Device Information: Firmware Revision String ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_firmware_revision_string_char),	sizeof(di_firmware_revision_string_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_FIRMWARE_REVISION_STRING_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_firmware_revision_string_char},
	{ 0x2A26, 
		sizeof(di_firmware_revision_string_char_val),	sizeof(di_firmware_revision_string_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_FIRMWARE_REVISION_STRING_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_firmware_revision_string_char_val},
	/* Characteristic ( Device Information: Software Revision String ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_software_revision_string_char),	sizeof(di_software_revision_string_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_SOFTWARE_REVISION_STRING_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_software_revision_string_char},
	{ 0x2A28, 
		sizeof(di_software_revision_string_char_val),	sizeof(di_software_revision_string_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_SOFTWARE_REVISION_STRING_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_software_revision_string_char_val},
	/* Characteristic ( Device Information: System ID ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_system_id_char),	sizeof(di_system_id_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_SYSTEM_ID_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_system_id_char},
	{ 0x2A23, 
		sizeof(di_system_id_char_val),	sizeof(di_system_id_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_SYSTEM_ID_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_system_id_char_val},
	/* Characteristic ( Device Information: IEEE 11073-20601 Regulatory Certification Data List ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_ieee_11073_20601_regulatory_certification_data_list_char),	sizeof(di_ieee_11073_20601_regulatory_certification_data_list_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_IEEE_11073_20601_REGULATORY_CERTIFICATION_DATA_LIST_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_ieee_11073_20601_regulatory_certification_data_list_char},
	{ 0x2A2A, 
		sizeof(di_ieee_11073_20601_regulatory_certification_data_list_char_val),	sizeof(di_ieee_11073_20601_regulatory_certification_data_list_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_IEEE_11073_20601_REGULATORY_CERTIFICATION_DATA_LIST_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_ieee_11073_20601_regulatory_certification_data_list_char_val},
	/* Characteristic ( Device Information: PnP ID ) */
	{ RBLE_DECL_CHARACTERISTIC, 
		sizeof(di_pnp_id_char),	sizeof(di_pnp_id_char),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_PNP_ID_CHAR), 	RBLE_GATT_PERM_RD,	(void *)&di_pnp_id_char},
	{ 0x2A50, 
		sizeof(di_pnp_id_char_val),	sizeof(di_pnp_id_char_val),	TASK_ATTID(TASK_RBLE, NEW_PROFILE_IDX_DI_PNP_ID_VAL), 	( RBLE_GATT_PERM_RD ),	(void *)&di_pnp_id_char_val},

    #endif /* #if (USE_SAMPLE_PROFILE) */
    /* Reserved */
    {0,0,0,0,0,0}
};

const uint16_t ATT_PRF_DB_SIZE = sizeof(atts_desc_list_prf);



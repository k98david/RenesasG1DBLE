; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:20

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\arch\rl78\prf_config.c -o
;             DefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_EXMEM_N
;             OT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_RBLE,CF
;             G_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMPLE,USE
;             _SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_HOCO_8
;             MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECLIB -i.
;             .\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\..\src
;             \driver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\..\..\.
;             .\src\driver\dataflash\cs -i..\..\..\..\..\src\driver\dataflash -
;             i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i..\..\
;             ..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\..\..\.
;             .\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\..\..\
;             ..\..\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf -i..\.
;             .\..\..\..\src\driver\port -i..\..\..\..\..\src\driver\rf -i..\..
;             \..\..\..\src\driver\uart -i..\..\..\..\..\src\driver\push_sw -i.
;             .\..\..\..\..\src\driver\push_state -i..\..\..\..\..\src\driver\p
;             ktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..\..\bl
;             eip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i..\..\.
;             .\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src\sampl
;             e_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -zps -mm
;              -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\src\arch\rl78\prf_config.c
; Asm-file  : DefaultBuild\prf_config.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		079H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, prf_config.c
$DGS	MOD_NAM, prf_config,	00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATA,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNSTL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@RLINIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INITL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATAL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CALT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODEL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@BASE,	U,	U,	00H,	078H,	00H,	00H
$DGS	STR_STR, _atts_char_desc,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 05H,		01CH
$DGS	MEB_STR, _prop,		00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _attr_hdl,	01H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	02H,	02H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _attr_type,	03H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	02H,	02H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		05H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		05H
$DGS	STR_STR, _st_di_system_id_char_val,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 08H,		024H
$DGS	MEB_STR, _manufacturer_identifier,	00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	05H,	05H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _organizationally_unique_identifier,	05H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	03H,	03H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		08H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 01CH,		08H
$DGS	STR_STR, _st_di_pnp_id_char_val,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 07H,		02CH
$DGS	MEB_STR, _vendor_id_source,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _vendor_id,	01H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _product_id,	03H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _product_version,	05H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		07H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 024H,		07H
$DGS	STR_STR, _atts_desc,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0AH,		037H
$DGS	MEB_STR, _type,		00H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _maxlength,	02H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _length,	03H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _taskid,	04H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _perm,		06H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _value,	08H,	0FFFFH,	01H,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		0AH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 02CH,		0AH
$DGS	STA_SYM, _beacon_service_svc,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	02H,	02H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_uid_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _N_UID,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	05H,	05H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_L_uid_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _L_UID,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	05H,	05H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_R_uid_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _R_UID,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	05H,	05H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_N_url_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _N_URL,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	05H,	05H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_L_url_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _L_URL,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	05H,	05H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_R_url_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _R_URL,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	05H,	05H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_Set1_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _Set1,		U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	04H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_Set2_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _Set2,		U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	04H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_Set3_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _Set3,		U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	04H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_Set4_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _Set4,		U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	04H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _bs_cmd_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _CMD,		U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	03H,	03H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _device_information_svc,	U,	U,	0500CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	02H,	02H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_manufacturer_name_string_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_model_number_string_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_serial_number_string_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_hardware_revision_string_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_firmware_revision_string_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_software_revision_string_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_system_id_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_ieee_11073_20601_regulatory_certification_data_list_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _di_pnp_id_char,	U,	U,	05008H,	03H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_N_uid_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_L_uid_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_R_uid_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_N_url_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_L_url_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_R_url_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_Set1_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_Set2_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_Set3_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_Set4_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _bs_cmd_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_manufacturer_name_string_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	07H,	07H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_model_number_string_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	07H,	07H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_serial_number_string_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	07H,	07H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_hardware_revision_string_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	07H,	07H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_firmware_revision_string_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	07H,	07H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_software_revision_string_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	07H,	07H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_system_id_char_val,	U,	U,	08H,	026H,	01H,	00H
$DGS	AUX_STR, 01CH,		00H,	08H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_ieee_11073_20601_regulatory_certification_data_list_char_val,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	06H,	06H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _di_pnp_id_char_val,	U,	U,	08H,	026H,	01H,	00H
$DGS	AUX_STR, 024H,		00H,	07H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _atts_desc_list_prf,	U,	U,	05008H,	026H,	01H,	03H
$DGS	AUX_STR, 02CH,		00H,	021CH,	036H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _ATT_PRF_DB_SIZE,	U,	U,	0500DH,	026H,	00H,	00H

	PUBLIC	_bs_N_uid_char_val
	PUBLIC	_bs_L_uid_char_val
	PUBLIC	_bs_R_uid_char_val
	PUBLIC	_bs_N_url_char_val
	PUBLIC	_bs_L_url_char_val
	PUBLIC	_bs_R_url_char_val
	PUBLIC	_bs_Set1_char_val
	PUBLIC	_bs_Set2_char_val
	PUBLIC	_bs_Set3_char_val
	PUBLIC	_bs_Set4_char_val
	PUBLIC	_bs_cmd_char_val
	PUBLIC	_di_manufacturer_name_string_char_val
	PUBLIC	_di_model_number_string_char_val
	PUBLIC	_di_serial_number_string_char_val
	PUBLIC	_di_hardware_revision_string_char_val
	PUBLIC	_di_firmware_revision_string_char_val
	PUBLIC	_di_software_revision_string_char_val
	PUBLIC	_di_system_id_char_val
	PUBLIC	_di_ieee_11073_20601_regulatory_certification_data_list_char_val
	PUBLIC	_di_pnp_id_char_val
	PUBLIC	_atts_desc_list_prf
	PUBLIC	_ATT_PRF_DB_SIZE

@@BITS	BSEG

@@CNST	CSEG	MIRRORP
_beacon_service_svc:	DB	00H	; 0
	DB	0BBH	; 187
_bs_uid_char:	DB	0AH	; 10
	DB	0EH	; 14
	DB	00H	; 0
	DB	01H	; 1
	DB	0BBH	; 187
_N_UID:	DB	04EH	; 78
	DB	05FH	; 95
	DB	055H	; 85
	DB	049H	; 73
	DB	044H	; 68
_bs_L_uid_char:	DB	0AH	; 10
	DB	011H	; 17
	DB	00H	; 0
	DB	02H	; 2
	DB	0BBH	; 187
_L_UID:	DB	04CH	; 76
	DB	05FH	; 95
	DB	055H	; 85
	DB	049H	; 73
	DB	044H	; 68
_bs_R_uid_char:	DB	0AH	; 10
	DB	014H	; 20
	DB	00H	; 0
	DB	03H	; 3
	DB	0BBH	; 187
_R_UID:	DB	052H	; 82
	DB	05FH	; 95
	DB	055H	; 85
	DB	049H	; 73
	DB	044H	; 68
_bs_N_url_char:	DB	0AH	; 10
	DB	017H	; 23
	DB	00H	; 0
	DB	04H	; 4
	DB	0BBH	; 187
_N_URL:	DB	04EH	; 78
	DB	05FH	; 95
	DB	055H	; 85
	DB	052H	; 82
	DB	04CH	; 76
_bs_L_url_char:	DB	0AH	; 10
	DB	01AH	; 26
	DB	00H	; 0
	DB	05H	; 5
	DB	0BBH	; 187
_L_URL:	DB	04CH	; 76
	DB	05FH	; 95
	DB	055H	; 85
	DB	052H	; 82
	DB	04CH	; 76
_bs_R_url_char:	DB	0AH	; 10
	DB	01DH	; 29
	DB	00H	; 0
	DB	06H	; 6
	DB	0BBH	; 187
_R_URL:	DB	052H	; 82
	DB	05FH	; 95
	DB	055H	; 85
	DB	052H	; 82
	DB	04CH	; 76
_bs_Set1_char:	DB	0AH	; 10
	DB	020H	; 32
	DB	00H	; 0
	DB	07H	; 7
	DB	0BBH	; 187
_Set1:	DB	053H	; 83
	DB	065H	; 101
	DB	074H	; 116
	DB	031H	; 49
	DB	(1)
_bs_Set2_char:	DB	0AH	; 10
	DB	023H	; 35
	DB	00H	; 0
	DB	08H	; 8
	DB	0BBH	; 187
_Set2:	DB	053H	; 83
	DB	065H	; 101
	DB	074H	; 116
	DB	032H	; 50
	DB	(1)
_bs_Set3_char:	DB	0AH	; 10
	DB	026H	; 38
	DB	00H	; 0
	DB	09H	; 9
	DB	0BBH	; 187
_Set3:	DB	053H	; 83
	DB	065H	; 101
	DB	074H	; 116
	DB	033H	; 51
	DB	(1)
_bs_Set4_char:	DB	0AH	; 10
	DB	029H	; 41
	DB	00H	; 0
	DB	0AH	; 10
	DB	0BBH	; 187
_Set4:	DB	053H	; 83
	DB	065H	; 101
	DB	074H	; 116
	DB	034H	; 52
	DB	(1)
_bs_cmd_char:	DB	0AH	; 10
	DB	02CH	; 44
	DB	00H	; 0
	DB	0BH	; 11
	DB	0BBH	; 187
_CMD:	DB	043H	; 67
	DB	04DH	; 77
	DB	044H	; 68
_device_information_svc:	DB	0AH	; 10
	DB	018H	; 24
_di_manufacturer_name_string_char:	DB	02H	; 2
	DB	030H	; 48
	DB	00H	; 0
	DB	029H	; 41
	DB	02AH	; 42
	DB	(1)
_di_model_number_string_char:	DB	02H	; 2
	DB	032H	; 50
	DB	00H	; 0
	DB	024H	; 36
	DB	02AH	; 42
	DB	(1)
_di_serial_number_string_char:	DB	02H	; 2
	DB	034H	; 52
	DB	00H	; 0
	DB	025H	; 37
	DB	02AH	; 42
	DB	(1)
_di_hardware_revision_string_char:	DB	02H	; 2
	DB	036H	; 54
	DB	00H	; 0
	DB	027H	; 39
	DB	02AH	; 42
	DB	(1)
_di_firmware_revision_string_char:	DB	02H	; 2
	DB	038H	; 56
	DB	00H	; 0
	DB	026H	; 38
	DB	02AH	; 42
	DB	(1)
_di_software_revision_string_char:	DB	02H	; 2
	DB	03AH	; 58
	DB	00H	; 0
	DB	028H	; 40
	DB	02AH	; 42
	DB	(1)
_di_system_id_char:	DB	02H	; 2
	DB	03CH	; 60
	DB	00H	; 0
	DB	023H	; 35
	DB	02AH	; 42
	DB	(1)
_di_ieee_11073_20601_regulatory_certification_data_list_char:	DB	02H	; 2
	DB	03EH	; 62
	DB	00H	; 0
	DB	02AH	; 42
	DB	02AH	; 42
	DB	(1)
_di_pnp_id_char:	DB	02H	; 2
	DB	040H	; 64
	DB	00H	; 0
	DB	050H	; 80
	DB	02AH	; 42
	DB	(1)
_atts_desc_list_prf:	DW	02800H	; 10240
	DB	02H	; 2
	DB	02H	; 2
	DW	04000H	; 16384
	DW	01H	; 1
	DW	mirlw (_beacon_service_svc)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04001H	; 16385
	DW	01H	; 1
	DW	mirlw (_bs_uid_char)
	DW	0BB01H	; 47873
	DB	014H	; 20
	DB	014H	; 20
	DW	04002H	; 16386
	DW	011H	; 17
	DW	loww (_bs_N_uid_char_val)
	DW	02901H	; 10497
	DB	05H	; 5
	DB	05H	; 5
	DW	04003H	; 16387
	DW	01H	; 1
	DW	mirlw (_N_UID)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04004H	; 16388
	DW	01H	; 1
	DW	mirlw (_bs_L_uid_char)
	DW	0BB02H	; 47874
	DB	014H	; 20
	DB	014H	; 20
	DW	04005H	; 16389
	DW	011H	; 17
	DW	loww (_bs_L_uid_char_val)
	DW	02901H	; 10497
	DB	05H	; 5
	DB	05H	; 5
	DW	04006H	; 16390
	DW	01H	; 1
	DW	mirlw (_L_UID)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04007H	; 16391
	DW	01H	; 1
	DW	mirlw (_bs_R_uid_char)
	DW	0BB03H	; 47875
	DB	014H	; 20
	DB	014H	; 20
	DW	04008H	; 16392
	DW	011H	; 17
	DW	loww (_bs_R_uid_char_val)
	DW	02901H	; 10497
	DB	05H	; 5
	DB	05H	; 5
	DW	04009H	; 16393
	DW	01H	; 1
	DW	mirlw (_R_UID)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	0400AH	; 16394
	DW	01H	; 1
	DW	mirlw (_bs_N_url_char)
	DW	0BB04H	; 47876
	DB	014H	; 20
	DB	014H	; 20
	DW	0400BH	; 16395
	DW	011H	; 17
	DW	loww (_bs_N_url_char_val)
	DW	02901H	; 10497
	DB	05H	; 5
	DB	05H	; 5
	DW	0400CH	; 16396
	DW	01H	; 1
	DW	mirlw (_N_URL)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	0400DH	; 16397
	DW	01H	; 1
	DW	mirlw (_bs_L_url_char)
	DW	0BB05H	; 47877
	DB	014H	; 20
	DB	014H	; 20
	DW	0400EH	; 16398
	DW	011H	; 17
	DW	loww (_bs_L_url_char_val)
	DW	02901H	; 10497
	DB	05H	; 5
	DB	05H	; 5
	DW	0400FH	; 16399
	DW	01H	; 1
	DW	mirlw (_L_URL)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04010H	; 16400
	DW	01H	; 1
	DW	mirlw (_bs_R_url_char)
	DW	0BB06H	; 47878
	DB	014H	; 20
	DB	014H	; 20
	DW	04011H	; 16401
	DW	011H	; 17
	DW	loww (_bs_R_url_char_val)
	DW	02901H	; 10497
	DB	05H	; 5
	DB	05H	; 5
	DW	04012H	; 16402
	DW	01H	; 1
	DW	mirlw (_R_URL)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04013H	; 16403
	DW	01H	; 1
	DW	mirlw (_bs_Set1_char)
	DW	0BB07H	; 47879
	DB	014H	; 20
	DB	014H	; 20
	DW	04014H	; 16404
	DW	011H	; 17
	DW	loww (_bs_Set1_char_val)
	DW	02901H	; 10497
	DB	04H	; 4
	DB	04H	; 4
	DW	04015H	; 16405
	DW	01H	; 1
	DW	mirlw (_Set1)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04016H	; 16406
	DW	01H	; 1
	DW	mirlw (_bs_Set2_char)
	DW	0BB08H	; 47880
	DB	014H	; 20
	DB	014H	; 20
	DW	04017H	; 16407
	DW	011H	; 17
	DW	loww (_bs_Set2_char_val)
	DW	02901H	; 10497
	DB	04H	; 4
	DB	04H	; 4
	DW	04018H	; 16408
	DW	01H	; 1
	DW	mirlw (_Set2)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04019H	; 16409
	DW	01H	; 1
	DW	mirlw (_bs_Set3_char)
	DW	0BB09H	; 47881
	DB	014H	; 20
	DB	014H	; 20
	DW	0401AH	; 16410
	DW	011H	; 17
	DW	loww (_bs_Set3_char_val)
	DW	02901H	; 10497
	DB	04H	; 4
	DB	04H	; 4
	DW	0401BH	; 16411
	DW	01H	; 1
	DW	mirlw (_Set3)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	0401CH	; 16412
	DW	01H	; 1
	DW	mirlw (_bs_Set4_char)
	DW	0BB0AH	; 47882
	DB	014H	; 20
	DB	014H	; 20
	DW	0401DH	; 16413
	DW	011H	; 17
	DW	loww (_bs_Set4_char_val)
	DW	02901H	; 10497
	DB	04H	; 4
	DB	04H	; 4
	DW	0401EH	; 16414
	DW	01H	; 1
	DW	mirlw (_Set4)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	0401FH	; 16415
	DW	01H	; 1
	DW	mirlw (_bs_cmd_char)
	DW	0BB0BH	; 47883
	DB	014H	; 20
	DB	014H	; 20
	DW	04020H	; 16416
	DW	011H	; 17
	DW	loww (_bs_cmd_char_val)
	DW	02901H	; 10497
	DB	03H	; 3
	DB	03H	; 3
	DW	04021H	; 16417
	DW	01H	; 1
	DW	mirlw (_CMD)
	DW	02800H	; 10240
	DB	02H	; 2
	DB	02H	; 2
	DW	04022H	; 16418
	DW	01H	; 1
	DW	mirlw (_device_information_svc)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04023H	; 16419
	DW	01H	; 1
	DW	mirlw (_di_manufacturer_name_string_char)
	DW	02A29H	; 10793
	DB	07H	; 7
	DB	07H	; 7
	DW	04024H	; 16420
	DW	01H	; 1
	DW	loww (_di_manufacturer_name_string_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04025H	; 16421
	DW	01H	; 1
	DW	mirlw (_di_model_number_string_char)
	DW	02A24H	; 10788
	DB	07H	; 7
	DB	07H	; 7
	DW	04026H	; 16422
	DW	01H	; 1
	DW	loww (_di_model_number_string_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04027H	; 16423
	DW	01H	; 1
	DW	mirlw (_di_serial_number_string_char)
	DW	02A25H	; 10789
	DB	07H	; 7
	DB	07H	; 7
	DW	04028H	; 16424
	DW	01H	; 1
	DW	loww (_di_serial_number_string_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04029H	; 16425
	DW	01H	; 1
	DW	mirlw (_di_hardware_revision_string_char)
	DW	02A27H	; 10791
	DB	07H	; 7
	DB	07H	; 7
	DW	0402AH	; 16426
	DW	01H	; 1
	DW	loww (_di_hardware_revision_string_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	0402BH	; 16427
	DW	01H	; 1
	DW	mirlw (_di_firmware_revision_string_char)
	DW	02A26H	; 10790
	DB	07H	; 7
	DB	07H	; 7
	DW	0402CH	; 16428
	DW	01H	; 1
	DW	loww (_di_firmware_revision_string_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	0402DH	; 16429
	DW	01H	; 1
	DW	mirlw (_di_software_revision_string_char)
	DW	02A28H	; 10792
	DB	07H	; 7
	DB	07H	; 7
	DW	0402EH	; 16430
	DW	01H	; 1
	DW	loww (_di_software_revision_string_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	0402FH	; 16431
	DW	01H	; 1
	DW	mirlw (_di_system_id_char)
	DW	02A23H	; 10787
	DB	08H	; 8
	DB	08H	; 8
	DW	04030H	; 16432
	DW	01H	; 1
	DW	loww (_di_system_id_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04031H	; 16433
	DW	01H	; 1
	DW	mirlw (_di_ieee_11073_20601_regulatory_certification_data_list_char)
	DW	02A2AH	; 10794
	DB	06H	; 6
	DB	06H	; 6
	DW	04032H	; 16434
	DW	01H	; 1
	DW	loww (_di_ieee_11073_20601_regulatory_certification_data_list_char_val)
	DW	02803H	; 10243
	DB	05H	; 5
	DB	05H	; 5
	DW	04033H	; 16435
	DW	01H	; 1
	DW	mirlw (_di_pnp_id_char)
	DW	02A50H	; 10832
	DB	07H	; 7
	DB	07H	; 7
	DW	04034H	; 16436
	DW	01H	; 1
	DW	loww (_di_pnp_id_char_val)
	DW	00H	; 0
	DB	00H	; 0
	DB	00H	; 0
	DW	00H	; 0
	DW	00H	; 0
	DW	00H	; 0
_ATT_PRF_DB_SIZE:	DW	021CH	; 540

@@R_INIT	CSEG	UNIT64KP
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	00H	; 0
	DB	(19)
	DB	'Sample'
	DB	00H
	DB	'Sample'
	DB	00H
	DB	'Sample'
	DB	00H
	DB	'Sample'
	DB	00H
	DB	'Sample'
	DB	00H
	DB	'Sample'
	DB	00H
	DB	00H	; 0
	DB	(4)
	DB	00H	; 0
	DB	(2)
	DB	00H	; 0
	DB	(5)
	DB	00H	; 0
	DW	00H	; 0
	DW	00H	; 0
	DW	00H	; 0
	DB	(1)

@@INIT	DSEG	BASEP
_bs_N_uid_char_val:	DS	(20)
_bs_L_uid_char_val:	DS	(20)
_bs_R_uid_char_val:	DS	(20)
_bs_N_url_char_val:	DS	(20)
_bs_L_url_char_val:	DS	(20)
_bs_R_url_char_val:	DS	(20)
_bs_Set1_char_val:	DS	(20)
_bs_Set2_char_val:	DS	(20)
_bs_Set3_char_val:	DS	(20)
_bs_Set4_char_val:	DS	(20)
_bs_cmd_char_val:	DS	(20)
_di_manufacturer_name_string_char_val:	DS	(7)
_di_model_number_string_char_val:	DS	(7)
_di_serial_number_string_char_val:	DS	(7)
_di_hardware_revision_string_char_val:	DS	(7)
_di_firmware_revision_string_char_val:	DS	(7)
_di_software_revision_string_char_val:	DS	(7)
_di_system_id_char_val:	DS	(8)
_di_ieee_11073_20601_regulatory_certification_data_list_char_val:	DS	(6)
_di_pnp_id_char_val:	DS	(7)
	DS	(1)

@@DATA	DSEG	BASEP

@@R_INIS	CSEG	UNIT64KP

@@INIS	DSEG	SADDRP

@@DATS	DSEG	SADDRP

@@CNSTL	CSEG	PAGE64KP

@@RLINIT	CSEG	UNIT64KP

@@INITL	DSEG	UNIT64KP

@@DATAL	DSEG	UNIT64KP

@@CALT	CSEG	CALLT0

; line    13
; line    14
; line    13
; line    14
; line    15
; line    74
; line    75
; line    76
; line    77
; line    79
; line    80
; line    84
; line    85
; line    16
; line    18
; line    19
; line    20
; line    21
; line    22
; line    23
; line    24
; line    25
; line    26
; line    27
; line    28
; line    29
; line    30
; line    31
; line    32
; line    33
; line    35
; line    37
; line    38
; line    39
; line    40
; line    43
; line    45
; line    46
; line    47
; line    48
; line    49
; line    50
; line    51
; line    52
; line    53
; line    54
; line    55
; line    56
; line    57
; line    58
; line    59
; line    60
; line    62
; line    64
; line    65
; line    66
; line    69
; line    71
; line    72
; line    73
; line    74
; line    75
; line    76
; line    77
; line    78
; line    79
; line    80
; line    81
; line    82
; line    83
; line    84
; line    85
; line    86
; line    88
; line    90
; line    91
; line    92
; line    20
; line    25
; line    29
; line    30
; line    31
; line    32
; line    33
; line    34
; line    35
; line    36
; line    37
; line    38
; line    39
; line    40
; line    41
; line    42
; line    43
; line    45
; line    46
; line    51
; line    52
; line    54
; line    59
; line    60
; line    65
; line    66
; line    67
; line    68
; line    70
; line    71
; line    72
; line    73
; line    74
; line    75
; line    76
; line    78
; line    83
; line    84
; line    89
; line    90
; line    92
; line    93
; line    94
; line    95
; line    96
; line    97
; line    98
; line   100
; line   105
; line   106
; line   111
; line   112
; line    95
; line   220
; line   221
; line    22
; line    23
; line    67
; line    68
; line   125
; line   124
; line   125
; line   150
; line   151
; line   152
; line   153
; line   154
; line   155
; line   156
; line   157
; line   167
; line   168
; line   169
; line   170
; line   171
; line   172
; line   173
; line   174
; line   175
; line   197
; line   198
; line   199
; line   213
; line   214
; line   215
; line   216
; line   217
; line   218
; line   219
; line   237
; line   238
; line   239
; line   240
; line   241
; line   260
; line   264
; line   265
; line   266
; line   267
; line   268
; line   269
; line   292
; line   293
; line   294
; line   295
; line   296
; line   297
; line   298
; line   328
; line   329
; line   330
; line   331
; line   350
; line   352
; line   353
; line   354
; line   355
; line   356
; line   514
; line   515
; line   516
; line   546
; line   547
; line   548
; line   557
; line   558
; line   559
; line   570
; line   571
; line   572
; line   581
; line   582
; line   583
; line   601
; line   602
; line   603
; line   613
; line   614
; line   615
; line   628
; line   629
; line   630
; line   639
; line   640
; line   641
; line   650
; line   651
; line   652
; line   661
; line   662
; line   663
; line   673
; line   674
; line   675
; line   690
; line   691
; line   692
; line   705
; line   706
; line   707
; line   713
; line   714
; line   715
; line   721
; line   722
; line   723
; line   729
; line   730
; line   731
; line   737
; line   738
; line   739
; line   745
; line   746
; line   747
; line   753
; line   754
; line   755
; line   761
; line   762
; line   763
; line   769
; line   770
; line   771
; line   777
; line   778
; line   779
; line   785
; line   786
; line   787
; line   793
; line   794
; line   795
; line   801
; line   802
; line   803
; line   809
; line   810
; line   811
; line   817
; line   818
; line   819
; line   825
; line   826
; line   827
; line   833
; line   834
; line   835
; line   841
; line   842
; line   843
; line   849
; line   850
; line   851
; line   857
; line   858
; line   859
; line   865
; line   866
; line   867
; line   873
; line   874
; line   875
; line   881
; line   882
; line   883
; line   889
; line   890
; line   891
; line   897
; line   898
; line   899
; line   905
; line   906
; line   907
; line   913
; line   914
; line   915
; line   921
; line   922
; line   923
; line   929
; line   930
; line   931
; line   937
; line   938
; line   939
; line   945
; line   946
; line   947
; line   958
; line   959
; line   960
; line  1016
; line  1017
; line  1018
; line  1019
; line  1022
; line   686
; line   689
; line   692
; line   711
; line   727
; line    16
; line    17
; line    18
; line    19
; line    20
; line    21
; line    23
; line   321
; line   736
; line   845
; line   856
; line   869
; line   872
; line   876
; line   880
; line   578
; line  1621
; line  1627
; line  1633
; line  1650
; line  1656
; line  1663
; line  1669
; line  1676
; line  1684
; line  1695
; line  1703
; line  1711
; line  1729
; line  1744
; line  1751
; line  1763
; line  1777
; line  1786
; line  1798
; line  1804
; line  1816
; line  1822
; line  1830
; line  1835
; line  1844
; line  1853
; line  1862
; line  1877
; line  1891
; line  1903
; line  1919
; line  1934
; line  1946
; line  1957
; line  1967
; line  1977
; line  1989
; line  2001
; line  2012
; line  2021
; line  2030
; line  2038
; line  2048
; line  2058
; line  2069
; line  2080
; line  2088
; line  2096
; line  2105
; line  2113
; line  2127
; line  2138
; line  2146
; line  2154
; line  2166
; line  2174
; line  2182
; line  2191
; line  2202
; line  2214
; line  2225
; line  2253
; line  2292
; line  2301
; line  2316
; line  2338
; line  2355
; line  2367
; line  2425
; line  2435
; line  2447
; line  2458
; line  2466
; line  2473
; line  2488
; line  2496
; line  2506
; line  2529
; line  2539
; line  2549
; line  2560
; line  2588
; line  2597
; line  2610
; line  2629
; line  2641
; line  2650
; line  2679
; line  2691
; line  2713
; line  2725
; line  2739
; line  2755
; line  2785
; line  2796
; line  2802
; line  2810
; line  2817
; line  2823
; line  2834
; line  2856
; line  2867
; line  2883
; line  2891
; line  2899
; line  2905
; line  2911
; line  2944
; line  2952
; line  2966
; line  2978
; line  2990
; line  3001
; line  3011
; line  3040
; line  3048
; line  3069
; line  3078
; line  3087
; line  3098
; line  3122
; line  3134
; line  3175
; line  3341
; line  3343
; line  3361
; line  3445
; line  3448
; line  3486
; line  3760
; line  3762
; line  3779
; line  3816
; line  3854
; line  3856
; line  3857
; line  3875
; line  3912
; line  3965
; line  3967
; line  3968
; line  3991
; line  4053
; line  4117
; line  4119
; line  4120
; line  4139
; line  4189
; line  4248
; line  4250
; line  4251
; line  4284
; line  4375
; line  4441
; line  4522
; line  4524
; line  4525
; line  4526
; line  4543
; line  4594
; line  4640
; line  4642
; line  4643
; line  4663
; line  4720
; line  4781
; line  4783
; line  4784
; line  4807
; line  4870
; line  4939
; line  4941
; line  4942
; line  4966
; line  5035
; line  5108
; line  5110
; line  5111
; line  5138
; line  5218
; line  5300
; line  5302
; line  5303
; line  5326
; line  5390
; line  5453
; line  5455
; line  5456
; line  5479
; line  5546
; line  5612
; line  5614
; line  5615
; line  5643
; line  5722
; line  5801
; line  5803
; line  5804
; line  5826
; line  5887
; line  5951
; line  5953
; line  5954
; line  5976
; line  6038
; line  6106
; line  6108
; line  6109
; line  6134
; line  6225
; line  6227
; line  6231
; line  6236
; line  6239
; line  6242
; line  6243
; line  6244
; line  6245
; line  6246
; line  6247
; line  6248
; line  6249
; line  6250
; line  6251
; line  6252
; line  6253
; line  6254
; line  6255
; line  6256
; line  6257
; line  6258
; line  6259
; line  6260
; line  6261
; line  6262
; line  6263
; line  6264
; line  6265
; line  6266
; line  6267
; line  6268
; line  6271
; line  6272
; line  6273
; line  6274
; line  6275
; line  6276
; line  6277
; line  6280
; line  6281
; line  6282
; line  6283
; line  6284
; line  6285
; line  6286
; line  6287
; line  6288
; line  6289
; line  6290
; line  6291
; line  6292
; line  6295
; line  6296
; line  6297
; line  6298
; line  6299
; line  6302
; line  6303
; line  6304
; line  6305
; line  6306
; line  6307
; line  6308
; line  6311
; line  6312
; line  6313
; line  6314
; line  6315
; line  6316
; line  6317
; line  6318
; line  6319
; line  6322
; line  6323
; line  6324
; line  6325
; line  6326
; line  6327
; line  6328
; line  6331
; line  6332
; line  6333
; line  6334
; line  6335
; line  6336
; line  6337
; line  6338
; line  6339
; line  6340
; line  6341
; line  6342
; line  6343
; line  6344
; line  6345
; line  6346
; line  6347
; line  6348
; line  6349
; line  6350
; line  6351
; line  6352
; line  6355
; line  6356
; line  6357
; line  6358
; line  6359
; line  6360
; line  6361
; line  6364
; line  6365
; line  6366
; line  6367
; line  6368
; line  6369
; line  6370
; line  6371
; line  6374
; line  6375
; line  6376
; line  6377
; line  6378
; line  6379
; line  6380
; line  6381
; line  6382
; line  6385
; line  6386
; line  6387
; line  6388
; line  6389
; line  6390
; line  6391
; line  6392
; line  6393
; line  6394
; line  6397
; line  6398
; line  6399
; line  6400
; line  6401
; line  6402
; line  6403
; line  6404
; line  6405
; line  6406
; line  6407
; line  6408
; line  6409
; line  6412
; line  6413
; line  6414
; line  6415
; line  6416
; line  6417
; line  6418
; line  6419
; line  6420
; line  6423
; line  6424
; line  6425
; line  6426
; line  6427
; line  6428
; line  6429
; line  6430
; line  6431
; line  6434
; line  6435
; line  6436
; line  6437
; line  6438
; line  6439
; line  6440
; line  6441
; line  6442
; line  6443
; line  6444
; line  6445
; line  6448
; line  6449
; line  6450
; line  6451
; line  6452
; line  6453
; line  6454
; line  6455
; line  6456
; line  6459
; line  6460
; line  6461
; line  6462
; line  6463
; line  6464
; line  6465
; line  6466
; line  6467
; line  6470
; line  6471
; line  6472
; line  6473
; line  6474
; line  6475
; line  6476
; line  6477
; line  6478
; line  6479
; line  6480
; line  6481
; line  6482
; line  6483
; line  6484
; line  6485
; line  6486
; line  6487
; line    79
; line    86
; line    93
; line   127
; line   149
; line   218
; line   284
; line   286
; line   287
; line   290
; line   291
; line   292
; line   293
; line   294
; line   295
; line   296
; line   297
; line    58
; line    62
; line    93
; line   101
; line   103
; line   108
; line   110
; line   111
; line   352
; line   354
; line   355
; line   356
; line   359
; line   360
; line   361
; line   362
; line   363
; line   364
; line   365
; line   366
; line   367
; line   368
; line   369
; line   370
; line   371
; line   373
; line   374
; line   376
; line   377
; line    37
; line    40
; line    41
; line    42
; line    43
; line    45
; line    47
; line    50
; line    51
; line    52
; line    53
; line    55
; line    57
; line    60
; line    61
; line    62
; line    63
; line    65
; line    67
; line    71
; line    72
; line    73
; line    74
; line    76
; line    78
; line    81
; line    82
; line    83
; line    84
; line    86
; line    88
; line    91
; line    92
; line    93
; line    94
; line    96
; line    98
; line   102
; line   103
; line   104
; line   105
; line   107
; line   109
; line   113
; line   114
; line   115
; line   116
; line   118
; line   120
; line   124
; line   125
; line   126
; line   127
; line   129
; line   131
; line   135
; line   136
; line   137
; line   138
; line   140
; line   142
; line   144
; line   145
; line   146
; line   147
; line   149
; line   151
; line   157
; line   160
; line   161
; line   162
; line   163
; line   165
; line   168
; line   169
; line   170
; line   171
; line   173
; line   176
; line   177
; line   178
; line   179
; line   181
; line   184
; line   185
; line   186
; line   187
; line   189
; line   192
; line   193
; line   194
; line   195
; line   197
; line   200
; line   201
; line   202
; line   203
; line   205
; line   208
; line   209
; line   210
; line   211
; line   217
; line   220
; line   221
; line   222
; line   223
; line   225
; line   228
; line   229
; line   230
; line   231
; line   239
; line   246
; line   253
; line   254
; line   256
; line   257
; line   258
; line   259
; line   260
; line   261
; line   264
; line   265
; line   266
; line   267
; line   268
; line   269
; line   273
; line   274
; line   275
; line   276
; line   277
; line   278
; line   282
; line   283
; line   284
; line   285
; line   286
; line   287
; line   290
; line   291
; line   292
; line   293
; line   294
; line   295
; line   299
; line   300
; line   301
; line   302
; line   303
; line   304
; line   308
; line   309
; line   310
; line   311
; line   312
; line   313
; line   316
; line   317
; line   318
; line   319
; line   320
; line   321
; line   324
; line   325
; line   326
; line   327
; line   328
; line   329
; line   332
; line   333
; line   334
; line   335
; line   336
; line   337
; line   341
; line   342
; line   343
; line   344
; line   345
; line   346
; line   350
; line   351
; line   353
; line   354
; line   355
; line   356
; line   358
; line   359
; line   360
; line   361
; line   363
; line   364
; line   365
; line   366
; line   368
; line   369
; line   370
; line   371
; line   373
; line   374
; line   375
; line   376
; line   378
; line   379
; line   380
; line   381
; line   383
; line   384
; line   385
; line   386
; line   388
; line   389
; line   390
; line   391
; line   393
; line   394
; line   395
; line   396
; line   400
; line   403

@@CODE	CSEG	BASE

@@CODEL	CSEG

@@BASE	CSEG	BASE
	END


; *** Code Information ***

; Target chip : R5F11AGJ
; Device file : V1.20 

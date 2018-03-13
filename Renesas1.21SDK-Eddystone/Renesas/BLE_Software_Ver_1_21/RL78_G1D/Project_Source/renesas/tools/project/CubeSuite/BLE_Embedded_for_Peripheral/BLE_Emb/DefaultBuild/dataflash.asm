; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:27

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\driver\dataflash\dataflas
;             h.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_E
;             XMEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_R
;             BLE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMP
;             LE,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_
;             HOCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECL
;             IB -i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\
;             ..\src\driver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\.
;             .\..\..\src\driver\dataflash\cs -i..\..\..\..\..\src\driver\dataf
;             lash -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i
;             ..\..\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\.
;             .\..\..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\
;             ..\..\..\..\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf 
;             -i..\..\..\..\..\src\driver\port -i..\..\..\..\..\src\driver\rf -
;             i..\..\..\..\..\src\driver\uart -i..\..\..\..\..\src\driver\push_
;             sw -i..\..\..\..\..\src\driver\push_state -i..\..\..\..\..\src\dr
;             iver\pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..
;             \..\bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i.
;             .\..\..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src
;             \sample_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -z
;             ps -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\src\driver\dataflash\dataflash.c
; Asm-file  : DefaultBuild\dataflash.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		01D0H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, dataflash.c
$DGS	MOD_NAM, dataflash,	00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, DFL_DATA,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, DFL_CNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@RLINIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INITL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATAL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CALT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, DFL_CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@BASE,	U,	U,	00H,	078H,	00H,	00H
$DGS	ENM_TAG, .26fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		022H
$DGS	MEB_ENM, _FDL_OK,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_BUSY,	0FFH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_INITIALIZATION,	02H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_REJECTED,	03H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_ABORTED,	04H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_PARAMETER,	05H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_STANDBY,	06H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_ERASE,	01AH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_BLANK_VERIFY,	01BH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_WRITE,	01CH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _FDL_ERR_CONFIGURATION,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		01H
$DGS	ENM_TAG, .38fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		033H
$DGS	MEB_ENM, _EEL_OK,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_BUSY,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_CONFIGURATION,	082H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_INITIALIZATION,	083H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_ACCESS_LOCKED,	084H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_PARAMETER,	085H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_VERIFY,	086H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_REJECTED,	087H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_NO_INSTANCE,	088H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_POOL_FULL,	089H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_POOL_INCONSISTENT,	08AH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_POOL_EXHAUSTED,	08BH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_ERR_INTERNAL,	08CH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 022H,		01H
$DGS	STR_STR, .28fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0AH,		03EH
$DGS	MEB_STR, _eel_pool_bytes_u16,	00H,	0FFFFH,	0EH,	08H,	00H,	00H
$DGS	MEB_STR, _fdl_pool_bytes_u16,	02H,	0FFFFH,	0EH,	08H,	00H,	00H
$DGS	MEB_STR, _fdl_delay_u16,	04H,	0FFFFH,	0EH,	08H,	00H,	00H
$DGS	MEB_STR, _eel_pool_blocks_u08,	06H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _fdl_pool_blocks_u08,	07H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _fx_MHz_u08,	08H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _wide_voltage_mode_u08,	09H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		0AH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 033H,		0AH
$DGS	STR_STR, _bd_addr,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		044H
$DGS	MEB_STR, _addr,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	06H,	06H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 03EH,		06H
$DGS	ENM_TAG, .43fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		04CH
$DGS	MEB_ENM, _DF_STAT_UNINIT,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _DF_STAT_STOP,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _DF_STAT_START,	02H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _DF_STAT_PROC,	03H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 044H,		01H
$DGS	ENM_TAG, .36fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		058H
$DGS	MEB_ENM, _EEL_CMD_UNDEFINED,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_CMD_STARTUP,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_CMD_WRITE,	02H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_CMD_READ,	03H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_CMD_REFRESH,	04H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_CMD_VERIFY,	05H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_CMD_FORMAT,	06H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _EEL_CMD_SHUTDOWN,	07H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 04CH,		01H
$DGS	STR_STR, .39fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 05H,		063H
$DGS	MEB_STR, _address_pu08,	00H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _identifier_u08,	02H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _command_enu,	03H,	0FFFFH,	0AH,	08H,	01H,	00H
$DGS	AUX_STR, 04CH,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _status_enu,	04H,	0FFFFH,	0AH,	08H,	01H,	00H
$DGS	AUX_STR, 022H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		05H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 058H,		05H
$DGS	STR_STR, _df_errno,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		069H
$DGS	MEB_STR, _eel,		00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _df,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 063H,		02H
$DGS	ENM_TAG, .23fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		06FH
$DGS	MEB_ENM, _DF_READ,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _DF_WRITE,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 069H,		01H
$DGS	LAB_SYM, bs_F0137,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0137,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0136,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0136,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_F0134,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0134,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_F0135,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0135,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0133,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0133,	U,	U,	00H,	06H,	00H,	00H
$DGS	STA_SYM, _testadr,	U,	U,	0D008H,	03H,	01H,	00H
$DGS	AUX_STR, 03EH,		00H,	06H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _df_stat,	U,	U,	0AH,	03H,	01H,	00H
$DGS	AUX_STR, 044H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _df_cmd,	U,	U,	0AH,	03H,	01H,	00H
$DGS	AUX_STR, 04CH,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _df_req,	U,	U,	08H,	03H,	01H,	00H
$DGS	AUX_STR, 058H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _errno_list,	U,	U,	0D008H,	03H,	01H,	03H
$DGS	AUX_STR, 063H,		00H,	018H,	0CH,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _dataflash_init,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	094H,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 09DH,		02H,	08AH
$DGS	REG_VAR, _errno,	06H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	REG_VAR, _fal_status,	07H,	0FFFFH,	010AH,	04H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0EH,		00H,	08CH
$DGS	BEG_BLK, ??bb01_dataflash_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 016H,		00H,	00H
$DGS	END_BLK, ??eb01_dataflash_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 019H
$DGS	END_BLK, ??eb00_dataflash_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01BH
$DGS	END_FUN, ??ef_dataflash_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 022H
$DGS	GLV_SYM, _dataflash_start,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0BCH,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0D0H,		02H,	09AH
$DGS	REG_PAR, _mode,		06H,	0FFFFH,	0510CH,	011H,	00H,	00H
$DGS	REG_VAR, _errno,	07H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	09CH
$DGS	BEG_BLK, ??bb01_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 014H,		00H,	09EH
$DGS	BEG_BLK, ??bb02_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01AH,		00H,	0A0H
$DGS	BEG_BLK, ??bb03_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 026H,		00H,	0A8H
$DGS	END_BLK, ??eb03_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 030H
$DGS	END_BLK, ??eb02_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 031H
$DGS	END_BLK, ??eb01_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 032H
$DGS	BEG_BLK, ??bb04_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 036H,		00H,	0AAH
$DGS	BEG_BLK, ??bb05_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 038H,		00H,	0AEH
$DGS	END_BLK, ??eb05_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 03BH
$DGS	BEG_BLK, ??bb06_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 03DH,		00H,	0B4H
$DGS	END_BLK, ??eb06_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 040H
$DGS	END_BLK, ??eb04_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 041H
$DGS	BEG_BLK, ??bb07_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 043H,		00H,	00H
$DGS	END_BLK, ??eb07_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 046H
$DGS	END_BLK, ??eb00_dataflash_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 047H
$DGS	END_FUN, ??ef_dataflash_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 04DH
$DGS	GLV_SYM, _dataflash_stop,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0D4H,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_stop,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 012EH,		02H,	0C2H
$DGS	REG_PAR, _mode,		06H,	0FFFFH,	0510CH,	011H,	00H,	00H
$DGS	REG_VAR, _errno,	07H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	0C4H
$DGS	BEG_BLK, ??bb01_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 011H,		00H,	0C6H
$DGS	BEG_BLK, ??bb02_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 013H,		00H,	0CAH
$DGS	END_BLK, ??eb02_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 020H
$DGS	BEG_BLK, ??bb03_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 022H,		00H,	00H
$DGS	END_BLK, ??eb03_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 025H
$DGS	END_BLK, ??eb01_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 026H
$DGS	END_BLK, ??eb00_dataflash_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 027H
$DGS	END_FUN, ??ef_dataflash_stop,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 02DH
$DGS	GLV_SYM, _dataflash_rw,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0F9H,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_rw,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 016FH,		04H,	0DFH
$DGS	FUN_ARG, _mode,		02H,	0FFFFH,	0500CH,	09H,	00H,	00H
$DGS	FUN_ARG, _rw,		0AH,	0FFFFH,	0500AH,	09H,	01H,	00H
$DGS	AUX_STR, 069H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	FUN_ARG, _id,		0CH,	0FFFFH,	0500CH,	09H,	00H,	00H
$DGS	FUN_ARG, _addr,		0EH,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _errno,	01H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	0E1H
$DGS	BEG_BLK, ??bb01_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 012H,		00H,	0E3H
$DGS	BEG_BLK, ??bb02_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 014H,		00H,	0E7H
$DGS	END_BLK, ??eb02_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb03_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01AH,		00H,	0EFH
$DGS	END_BLK, ??eb03_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01CH
$DGS	END_BLK, ??eb01_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01EH
$DGS	END_BLK, ??eb00_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01FH
$DGS	BEG_BLK, ??bb04_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 021H,		00H,	0F3H
$DGS	END_BLK, ??eb04_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 023H
$DGS	BEG_BLK, ??bb05_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 025H,		00H,	00H
$DGS	END_BLK, ??eb05_dataflash_rw,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 027H
$DGS	END_FUN, ??ef_dataflash_rw,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 02DH
$DGS	GLV_SYM, _dataflash_cleanup,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0119H,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_cleanup,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01ADH,		02H,	0FFH
$DGS	REG_PAR, _mode,		06H,	0FFFFH,	0510CH,	011H,	00H,	00H
$DGS	REG_VAR, _errno,	07H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	0101H
$DGS	BEG_BLK, ??bb01_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 013H,		00H,	0103H
$DGS	BEG_BLK, ??bb02_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 015H,		00H,	0107H
$DGS	END_BLK, ??eb02_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 018H
$DGS	BEG_BLK, ??bb03_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01BH,		00H,	010FH
$DGS	END_BLK, ??eb03_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01DH
$DGS	END_BLK, ??eb01_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01FH
$DGS	END_BLK, ??eb00_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 020H
$DGS	BEG_BLK, ??bb04_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 022H,		00H,	0113H
$DGS	END_BLK, ??eb04_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 024H
$DGS	BEG_BLK, ??bb05_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 026H,		00H,	00H
$DGS	END_BLK, ??eb05_dataflash_cleanup,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 028H
$DGS	END_FUN, ??ef_dataflash_cleanup,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 02EH
$DGS	GLV_SYM, _dataflash_format,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	013DH,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_format,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01ECH,		02H,	011FH
$DGS	REG_PAR, _mode,		06H,	0FFFFH,	0510CH,	011H,	00H,	00H
$DGS	REG_VAR, _errno,	07H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	0121H
$DGS	BEG_BLK, ??bb01_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	0125H
$DGS	END_BLK, ??eb01_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	BEG_BLK, ??bb02_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 015H,		00H,	0127H
$DGS	BEG_BLK, ??bb03_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 017H,		00H,	012BH
$DGS	END_BLK, ??eb03_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 021H
$DGS	BEG_BLK, ??bb04_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 023H,		00H,	0133H
$DGS	END_BLK, ??eb04_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 026H
$DGS	END_BLK, ??eb02_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 027H
$DGS	END_BLK, ??eb00_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 028H
$DGS	BEG_BLK, ??bb05_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 02AH,		00H,	0137H
$DGS	END_BLK, ??eb05_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 02CH
$DGS	BEG_BLK, ??bb06_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 02EH,		00H,	00H
$DGS	END_BLK, ??eb06_dataflash_format,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 030H
$DGS	END_FUN, ??ef_dataflash_format,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 036H
$DGS	GLV_SYM, _dataflash_continue,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	015AH,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_continue,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 022DH,		04H,	0144H
$DGS	FUN_ARG, _fin_flg,	02H,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _errno,	01H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 09H,		00H,	0146H
$DGS	BEG_BLK, ??bb01_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 013H,		00H,	014AH
$DGS	END_BLK, ??eb01_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 015H
$DGS	BEG_BLK, ??bb02_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 034H,		00H,	014CH
$DGS	BEG_BLK, ??bb03_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 039H,		00H,	0152H
$DGS	END_BLK, ??eb03_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 049H
$DGS	END_BLK, ??eb02_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 04AH
$DGS	BEG_BLK, ??bb04_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 04CH,		00H,	00H
$DGS	END_BLK, ??eb04_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 04FH
$DGS	END_BLK, ??eb00_dataflash_continue,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 051H
$DGS	END_FUN, ??ef_dataflash_continue,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 057H
$DGS	GLV_SYM, _dataflash_get_space,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0169H,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_get_space,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 028FH,		04H,	0163H
$DGS	FUN_ARG, _wsize,	02H,	0FFFFH,	0DH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _errno,	01H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	AUT_VAR, _status,	00H,	0FFFFH,	0AH,	01H,	01H,	00H
$DGS	AUX_STR, 022H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_get_space,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 07H,		00H,	00H
$DGS	END_BLK, ??eb00_dataflash_get_space,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0CH
$DGS	END_FUN, ??ef_dataflash_get_space,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 012H
$DGS	GLV_SYM, _dataflash_getver,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0185H,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_getver,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 02ACH,		08H,	0173H
$DGS	FUN_ARG, _ver,		06H,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _errno,	05H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	AUT_VAR, _len,		04H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	AUT_VAR, _string,	00H,	0FFFFH,	0CH,	01H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	BEG_BLK, ??bb00_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	0175H
$DGS	BEG_BLK, ??bb01_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0DH,		00H,	0177H
$DGS	BEG_BLK, ??bb02_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 010H,		00H,	017DH
$DGS	END_BLK, ??eb02_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 012H
$DGS	END_BLK, ??eb01_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	BEG_BLK, ??bb03_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 016H,		00H,	00H
$DGS	END_BLK, ??eb03_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 018H
$DGS	END_BLK, ??eb00_dataflash_getver,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01AH
$DGS	END_FUN, ??ef_dataflash_getver,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 020H
$DGS	GLV_SYM, _dataflash_is_stopped,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	018BH,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_is_stopped,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 02D6H,		00H,	018BH
$DGS	END_FUN, ??ef_dataflash_is_stopped,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 07H
$DGS	STA_SYM, _dataflash_errno,	U,	U,	0CH,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	019CH,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_errno,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 02E9H,		02H,	0192H
$DGS	REG_PAR, _eel_errno,	06H,	0FFFFH,	0510AH,	011H,	01H,	00H
$DGS	AUX_STR, 022H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	REG_VAR, _idx,		07H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_dataflash_errno,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	0194H
$DGS	BEG_BLK, ??bb01_dataflash_errno,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 07H,		00H,	00H
$DGS	END_BLK, ??eb01_dataflash_errno,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 09H
$DGS	END_BLK, ??eb00_dataflash_errno,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	END_FUN, ??ef_dataflash_errno,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0CH
$DGS	STA_SYM, _dataflash_busy_handler,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01A6H,	01H,	00H
$DGS	BEG_FUN, ??bf_dataflash_busy_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 02FFH,		00H,	01A0H
$DGS	BEG_BLK, ??bb00_dataflash_busy_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 03H,		00H,	00H
$DGS	END_BLK, ??eb00_dataflash_busy_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05H
$DGS	END_FUN, ??ef_dataflash_busy_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 06H
$DGS	GLV_SYM, _flash_get_bda,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01D0H,	01H,	00H
$DGS	BEG_FUN, ??bf_flash_get_bda,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0312H,		04H,	01AEH
$DGS	FUN_ARG, _bda,		02H,	0FFFFH,	08H,	09H,	01H,	01H
$DGS	AUX_STR, 03EH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _ii,		01H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	AUT_VAR, _invalid,	00H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	01B0H
$DGS	BEG_BLK, ??bb01_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0BH,		00H,	01B2H
$DGS	BEG_BLK, ??bb02_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0EH,		00H,	01B4H
$DGS	BEG_BLK, ??bb03_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 010H,		00H,	01BEH
$DGS	END_BLK, ??eb03_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	END_BLK, ??eb02_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 014H
$DGS	END_BLK, ??eb01_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 015H
$DGS	END_BLK, ??eb00_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb04_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01BH,		00H,	01C0H
$DGS	BEG_BLK, ??bb05_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01EH,		00H,	01C2H
$DGS	BEG_BLK, ??bb06_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 022H,		00H,	01CAH
$DGS	END_BLK, ??eb06_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 024H
$DGS	END_BLK, ??eb05_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 025H
$DGS	END_BLK, ??eb04_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 026H
$DGS	BEG_BLK, ??bb07_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 029H,		00H,	00H
$DGS	END_BLK, ??eb07_flash_get_bda,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 02CH
$DGS	END_FUN, ??ef_flash_get_bda,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 02DH
$DGS	GLV_SYM, _EEL_Execute,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _memset,	U,	U,	01H,	02H,	01H,	06H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	04H
$DGS	GLV_SYM, _plf_hoco_start,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _fdl_descriptor_str,	U,	U,	0D008H,	02H,	01H,	00H
$DGS	AUX_STR, 033H,		00H,	0AH,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _FDL_Init,	U,	U,	0AH,	02H,	01H,	02H
$DGS	AUX_FUN, 013H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _FDL_Open,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _EEL_Init,	U,	U,	0AH,	02H,	01H,	02H
$DGS	AUX_FUN, 022H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _plf_hoco_stop,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _EEL_Open,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _EEL_Close,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _EEL_Handler,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _EEL_GetSpace,	U,	U,	0AH,	02H,	01H,	02H
$DGS	AUX_FUN, 022H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, @@indao,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, @@inado,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _EEL_GetVersionString,	U,	U,	0CH,	02H,	01H,	06H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	08H

	EXTRN	_EEL_Execute
	EXTRN	_memset
	EXTRN	_plf_hoco_start
	EXTRN	_fdl_descriptor_str
	EXTRN	_FDL_Init
	EXTRN	_FDL_Open
	EXTRN	_EEL_Init
	EXTRN	_plf_hoco_stop
	EXTRN	_EEL_Open
	EXTRN	_EEL_Close
	EXTRN	_EEL_Handler
	EXTRN	_EEL_GetSpace
	EXTRN	@@indao
	EXTRN	@@inado
	EXTRN	_EEL_GetVersionString
	PUBLIC	_dataflash_init
	PUBLIC	_dataflash_start
	PUBLIC	_dataflash_stop
	PUBLIC	_dataflash_rw
	PUBLIC	_dataflash_cleanup
	PUBLIC	_dataflash_format
	PUBLIC	_dataflash_continue
	PUBLIC	_dataflash_get_space
	PUBLIC	_dataflash_getver
	PUBLIC	_dataflash_is_stopped
	PUBLIC	_flash_get_bda

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

DFL_DATA	DSEG	BASEP
_df_stat:	DS	(1)
_df_cmd:	DS	(1)
_df_req:	DS	(5)
	DS	(1)

@@R_INIS	CSEG	UNIT64KP

@@INIS	DSEG	SADDRP

@@DATS	DSEG	SADDRP

DFL_CNST	CSEG	PAGE64KP
_testadr:	DB	0BCH	; 188
	DB	09AH	; 154
	DB	078H	; 120
	DB	056H	; 86
	DB	034H	; 52
	DB	012H	; 18
_errno_list:	DB	00H	; 0
	DB	00H	; 0
	DB	01H	; 1
	DB	00H	; 0
	DB	083H	; 131
	DB	05H	; 5
	DB	084H	; 132
	DB	06H	; 6
	DB	086H	; 134
	DB	07H	; 7
	DB	085H	; 133
	DB	08H	; 8
	DB	087H	; 135
	DB	09H	; 9
	DB	088H	; 136
	DB	0AH	; 10
	DB	089H	; 137
	DB	0BH	; 11
	DB	08AH	; 138
	DB	0CH	; 12
	DB	08BH	; 139
	DB	0DH	; 13
	DB	08CH	; 140
	DB	0EH	; 14

@@RLINIT	CSEG	UNIT64KP

@@INITL	DSEG	UNIT64KP

@@DATAL	DSEG	UNIT64KP

@@CALT	CSEG	CALLT0

; Sub-Routines created by CC78K0R

DFL_CODE	CSEG
bs_F0137:
	movw	ax,#loww (_df_req)				;[INF] 3, 1
	br	!!_EEL_Execute					;[INF] 4, 3
es_F0137:

DFL_CODE	CSEG
bs_S0136:
	mov	a,[hl+4]					;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	addw	ax,[hl+6]					;[INF] 3, 1
	movw	de,ax						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0136:

DFL_CODE	CSEG
bs_F0134:
	mov	x,!_df_req+4					;[INF] 3, 1
	clrb	a						;[INF] 1, 1
	call	!!_dataflash_errno				;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	h,a						;[INF] 1, 1
	ret							;[INF] 1, 6
es_F0134:

DFL_CODE	CSEG
bs_F0135:
	mov	x,!_df_req+4					;[INF] 3, 1
	clrb	a						;[INF] 1, 1
	call	!!_dataflash_errno				;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	[hl+1],a					;[INF] 2, 1
	ret							;[INF] 1, 6
es_F0135:

DFL_CODE	CSEG
bs_S0133:
	movw	ax,[hl+2]					;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[hl+1]					;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	addw	ax,de						;[INF] 1, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[de]						;[INF] 1, 1
	inc	a						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0133:

; *** Sub-Routine Information ***
;
; $SUB bs_S0133
;      CODE SIZE= 12 bytes
;
; $SUB bs_F0134
;      CODE SIZE= 11 bytes
;
; $SUB bs_F0135
;      CODE SIZE= 12 bytes
;
; $SUB bs_S0136
;      CODE SIZE= 9 bytes
;
; $SUB bs_F0137
;      CODE SIZE= 7 bytes

; End of Sub-Routines

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
; line   686
; line   689
; line   692
; line   711
; line   727
; line    41
; line    42
; line    43
; line    44
; line    66
; line    87
; line    98
; line   113
; line    62
; line    75
; line    90
; line   111
; line   124
; line   138
; line   153
; line   167
; line   180
; line    41
; line    42
; line    43
; line    69
; line    77
; line    95
; line   104
; line    51
; line    62
; line    74
; line    87
; line    99
; line   112
; line   126
; line   139
; line    85
; line   103
; line   106
; line   107
; line   121
; line   129
; line   130
; line   132
; line   133
; line    89
; line    97
; line   104
; line   106
; line   107
; line   108
; line   110
; line   112
; line   113
; line   114
; line   115
; line   120
; line   121
; line   123
; line   124
; line   125
; line   126
; line   127
; line   128
; line   137
; line   139
; line   157

DFL_CODE	CSEG
_dataflash_init:
$DGL	1,131
	push	hl						;[INF] 1, 1
??bf_dataflash_init:
; line   159
$DGL	0,3
	mov	l,#0FH	; 15 					;[INF] 2, 1
; line   163
$DGL	0,7
	movw	ax,#05H	; 5 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_df_req)				;[INF] 3, 1
	call	!!_memset					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   166
$DGL	0,10
	call	!!_plf_hoco_start				;[INF] 4, 3
; line   168
$DGL	0,12
	movw	ax,#loww (_fdl_descriptor_str)			;[INF] 3, 1
	mov	c,#highw (_fdl_descriptor_str)			;[INF] 2, 1
	clrb	b						;[INF] 1, 1
	call	!!_FDL_Init					;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	h,a						;[INF] 1, 1
; line   169
$DGL	0,13
	cmp0	a						;[INF] 1, 1
	bnz	$?L0003						;[INF] 2, 4
; line   170
??bb00_dataflash_init:
; line   173
$DGL	0,17
	call	!!_FDL_Open					;[INF] 4, 3
; line   176
$DGL	0,20
	call	!!_EEL_Init					;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	!_df_req+4,a					;[INF] 3, 1
; line   177
$DGL	0,21
	cmp0	!_df_req+4					;[INF] 3, 1
	sknz							;[INF] 2, 1
; line   178
??bb01_dataflash_init:
; line   180
$DGL	0,24
	oneb	!_df_stat					;[INF] 3, 1
??eb01_dataflash_init:
; line   181
?L0005:
; line   182
$DGL	0,26
	mov	x,!_df_req+4					;[INF] 3, 1
	clrb	a						;[INF] 1, 1
	call	!!_dataflash_errno				;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	l,a						;[INF] 1, 1
??eb00_dataflash_init:
; line   183
?L0003:
; line   184
$DGL	0,28
	call	!!_plf_hoco_stop				;[INF] 4, 3
; line   186
$DGL	0,30
	movw	ax,hl						;[INF] 1, 1
	clrb	a						;[INF] 1, 1
	movw	bc,ax						;[INF] 1, 1
; line   190
; line   190
$DGL	0,34
??ef_dataflash_init:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_init:
; line   208
_dataflash_start:
$DGL	1,148
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_dataflash_start:
; line   210
$DGL	0,3
	mov	h,#03H	; 3 					;[INF] 2, 1
; line   212
$DGL	0,5
	cmp	!_df_stat,#01H	; 1 				;[INF] 4, 1
	bnz	$?L0018						;[INF] 2, 4
; line   213
??bb00_dataflash_start:
; line   215
$DGL	0,8
	call	!!_plf_hoco_start				;[INF] 4, 3
; line   216
$DGL	0,9
	call	!!_EEL_Open					;[INF] 4, 3
; line   219
$DGL	0,12
	oneb	!_df_cmd					;[INF] 3, 1
; line   220
$DGL	0,13
	oneb	!_df_req+3					;[INF] 3, 1
; line   224
$DGL	0,17
	call	$!bs_F0137					;[INF] 3, 3
; line   226
$DGL	0,19
	mov	a,l						;[INF] 1, 1
	inc	a						;[INF] 1, 1
	bnz	$?L0015						;[INF] 2, 4
; line   227
??bb01_dataflash_start:
; line   229
$DGL	0,22
	call	!!_dataflash_busy_handler			;[INF] 4, 3
; line   232
$DGL	0,25
	cmp	!_df_req+4,#08AH	; 138 			;[INF] 4, 1
	bnz	$?L0015						;[INF] 2, 4
; line   233
??bb02_dataflash_start:
; line   235
$DGL	0,28
	mov	!_df_req+3,#06H	; 6 				;[INF] 4, 1
; line   239
$DGL	0,32
	call	$!bs_F0137					;[INF] 3, 3
; line   242
$DGL	0,35
	call	!!_dataflash_busy_handler			;[INF] 4, 3
; line   244
$DGL	0,37
	cmp0	!_df_req+4					;[INF] 3, 1
	bnz	$?L0015						;[INF] 2, 4
; line   245
??bb03_dataflash_start:
; line   247
$DGL	0,40
	oneb	!_df_req+3					;[INF] 3, 1
; line   251
$DGL	0,44
	call	$!bs_F0137					;[INF] 3, 3
; line   253
$DGL	0,46
	call	!!_dataflash_busy_handler			;[INF] 4, 3
??eb03_dataflash_start:
; line   255
?L0015:
??eb02_dataflash_start:
; line   256
??eb01_dataflash_start:
; line   257
; line   259
$DGL	0,52
	call	$!bs_F0134					;[INF] 3, 3
; line   260
$DGL	0,53
	cmp0	a						;[INF] 1, 1
	bnz	$?L0017						;[INF] 2, 4
; line   261
??bb04_dataflash_start:
; line   262
$DGL	0,55
	mov	a,l						;[INF] 1, 1
	inc	a						;[INF] 1, 1
	bnz	$?L0019						;[INF] 2, 4
; line   263
??bb05_dataflash_start:
; line   265
$DGL	0,58
	mov	!_df_stat,#02H	; 2 				;[INF] 4, 1
??eb05_dataflash_start:
; line   267
$DGL	0,60
	br	$?L0018						;[INF] 2, 3
?L0019:
; line   268
??bb06_dataflash_start:
; line   270
$DGL	0,63
	mov	!_df_stat,#03H	; 3 				;[INF] 4, 1
??eb06_dataflash_start:
; line   271
??eb04_dataflash_start:
; line   273
$DGL	0,66
	br	$?L0018						;[INF] 2, 3
?L0017:
; line   274
??bb07_dataflash_start:
; line   276
$DGL	0,69
	call	!!_plf_hoco_stop				;[INF] 4, 3
??eb07_dataflash_start:
; line   277
?L0018:
??eb00_dataflash_start:
; line   278
; line   280
$DGL	0,73
	mov	a,h						;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   284
; line   284
$DGL	0,77
??ef_dataflash_start:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_start:
; line   302
_dataflash_stop:
$DGL	1,188
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_dataflash_stop:
; line   304
$DGL	0,3
	mov	h,#03H	; 3 					;[INF] 2, 1
; line   306
$DGL	0,5
	cmp	!_df_stat,#02H	; 2 				;[INF] 4, 1
	bnz	$?L0028						;[INF] 2, 4
; line   307
??bb00_dataflash_stop:
; line   309
$DGL	0,8
	mov	!_df_cmd,#07H	; 7 				;[INF] 4, 1
; line   310
$DGL	0,9
	mov	!_df_req+3,#07H	; 7 				;[INF] 4, 1
; line   314
$DGL	0,13
	call	$!bs_F0137					;[INF] 3, 3
; line   316
$DGL	0,15
	call	$!bs_F0134					;[INF] 3, 3
; line   317
$DGL	0,16
	cmp0	a						;[INF] 1, 1
	bnz	$?L0028						;[INF] 2, 4
; line   318
??bb01_dataflash_stop:
; line   319
$DGL	0,18
	mov	a,l						;[INF] 1, 1
	inc	a						;[INF] 1, 1
	bnz	$?L0027						;[INF] 2, 4
; line   320
??bb02_dataflash_stop:
; line   328
$DGL	0,27
	call	!!_EEL_Close					;[INF] 4, 3
; line   329
$DGL	0,28
	call	!!_plf_hoco_stop				;[INF] 4, 3
; line   332
$DGL	0,31
	oneb	!_df_stat					;[INF] 3, 1
??eb02_dataflash_stop:
; line   334
$DGL	0,33
	br	$?L0028						;[INF] 2, 3
?L0027:
; line   335
??bb03_dataflash_stop:
; line   337
$DGL	0,36
	mov	!_df_stat,#03H	; 3 				;[INF] 4, 1
??eb03_dataflash_stop:
; line   338
?L0028:
??eb01_dataflash_stop:
; line   339
??eb00_dataflash_stop:
; line   340
; line   342
$DGL	0,41
	mov	a,h						;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   346
; line   346
$DGL	0,45
??ef_dataflash_stop:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_stop:
; line   367
_dataflash_rw:
$DGL	1,212
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_dataflash_rw:
; line   371
$DGL	0,5
	cmp	!_df_stat,#02H	; 2 				;[INF] 4, 1
	bnz	$?L0031						;[INF] 2, 4
; line   372
??bb00_dataflash_rw:
; line   373
$DGL	0,7
	mov	a,[hl+10]	; rw 				;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0033						;[INF] 2, 4
	movw	ax,#03H	; 3 					;[INF] 3, 1
	br	$?L0034						;[INF] 2, 3
?L0033:
	onew	ax						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
?L0034:
	mov	a,x						;[INF] 1, 1
	mov	!_df_cmd,a					;[INF] 3, 1
; line   374
$DGL	0,8
	movw	ax,[hl+14]	; addr 				;[INF] 2, 1
	movw	!_df_req,ax					;[INF] 3, 1
; line   375
$DGL	0,9
	mov	a,[hl+12]	; id 				;[INF] 2, 1
	mov	!_df_req+2,a					;[INF] 3, 1
; line   376
$DGL	0,10
	mov	a,!_df_cmd					;[INF] 3, 1
	mov	!_df_req+3,a					;[INF] 3, 1
; line   380
$DGL	0,14
	call	$!bs_F0137					;[INF] 3, 3
; line   382
$DGL	0,16
	call	$!bs_F0135					;[INF] 3, 3
; line   383
$DGL	0,17
	cmp0	a						;[INF] 1, 1
	bnz	$?L0040						;[INF] 2, 4
; line   384
??bb01_dataflash_rw:
; line   385
$DGL	0,19
	mov	a,[hl+2]	; mode 				;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0037						;[INF] 2, 4
; line   386
??bb02_dataflash_rw:
; line   388
$DGL	0,22
	mov	!_df_stat,#03H	; 3 				;[INF] 4, 1
??eb02_dataflash_rw:
; line   391
$DGL	0,25
	br	$?L0040						;[INF] 2, 3
?L0037:
; line   392
??bb03_dataflash_rw:
; line   393
$DGL	0,27
	call	!!_dataflash_busy_handler			;[INF] 4, 3
??eb03_dataflash_rw:
; line   394
??eb01_dataflash_rw:
; line   396
??eb00_dataflash_rw:
; line   398
$DGL	0,32
	br	$?L0040						;[INF] 2, 3
?L0031:
	cmp	!_df_stat,#03H	; 3 				;[INF] 4, 1
	bnz	$?L0039						;[INF] 2, 4
; line   399
??bb04_dataflash_rw:
; line   400
$DGL	0,34
	mov	[hl+1],#01H	; errno,1 			;[INF] 3, 1
??eb04_dataflash_rw:
; line   402
$DGL	0,36
	br	$?L0040						;[INF] 2, 3
?L0039:
; line   403
??bb05_dataflash_rw:
; line   404
$DGL	0,38
	mov	[hl+1],#03H	; errno,3 			;[INF] 3, 1
??eb05_dataflash_rw:
; line   405
?L0040:
; line   407
$DGL	0,41
	mov	a,[hl+1]	; errno 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   411
; line   411
$DGL	0,45
??ef_dataflash_rw:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_rw:
; line   429
_dataflash_cleanup:
$DGL	1,249
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_dataflash_cleanup:
; line   433
$DGL	0,5
	cmp	!_df_stat,#02H	; 2 				;[INF] 4, 1
	bnz	$?L0043						;[INF] 2, 4
; line   434
??bb00_dataflash_cleanup:
; line   440
$DGL	0,12
	mov	!_df_cmd,#04H	; 4 				;[INF] 4, 1
; line   441
$DGL	0,13
	mov	!_df_req+3,#04H	; 4 				;[INF] 4, 1
; line   443
$DGL	0,15
	call	$!bs_F0137					;[INF] 3, 3
; line   445
$DGL	0,17
	call	$!bs_F0134					;[INF] 3, 3
; line   446
$DGL	0,18
	cmp0	a						;[INF] 1, 1
	bnz	$?L0050						;[INF] 2, 4
; line   447
??bb01_dataflash_cleanup:
; line   448
$DGL	0,20
	mov	a,l						;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0047						;[INF] 2, 4
; line   449
??bb02_dataflash_cleanup:
; line   451
$DGL	0,23
	mov	!_df_stat,#03H	; 3 				;[INF] 4, 1
??eb02_dataflash_cleanup:
; line   454
$DGL	0,26
	br	$?L0050						;[INF] 2, 3
?L0047:
; line   455
??bb03_dataflash_cleanup:
; line   456
$DGL	0,28
	call	!!_dataflash_busy_handler			;[INF] 4, 3
??eb03_dataflash_cleanup:
; line   457
??eb01_dataflash_cleanup:
; line   459
??eb00_dataflash_cleanup:
; line   461
$DGL	0,33
	br	$?L0050						;[INF] 2, 3
?L0043:
	cmp	!_df_stat,#03H	; 3 				;[INF] 4, 1
	bnz	$?L0049						;[INF] 2, 4
; line   462
??bb04_dataflash_cleanup:
; line   463
$DGL	0,35
	mov	h,#01H	; 1 					;[INF] 2, 1
??eb04_dataflash_cleanup:
; line   465
$DGL	0,37
	br	$?L0050						;[INF] 2, 3
?L0049:
; line   466
??bb05_dataflash_cleanup:
; line   467
$DGL	0,39
	mov	h,#03H	; 3 					;[INF] 2, 1
??eb05_dataflash_cleanup:
; line   468
?L0050:
; line   470
$DGL	0,42
	mov	a,h						;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   474
; line   474
$DGL	0,46
??ef_dataflash_cleanup:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_cleanup:
; line   492
_dataflash_format:
$DGL	1,281
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_dataflash_format:
; line   496
$DGL	0,5
	cmp	!_df_stat,#01H	; 1 				;[INF] 4, 1
	bz	$?L0055						;[INF] 2, 4
	cmp	!_df_stat,#02H	; 2 				;[INF] 4, 1
	bnz	$?L0053						;[INF] 2, 4
?L0055:
; line   497
??bb00_dataflash_format:
; line   498
$DGL	0,7
	cmp	!_df_stat,#01H	; 1 				;[INF] 4, 1
	bnz	$?L0056						;[INF] 2, 4
; line   499
??bb01_dataflash_format:
; line   500
$DGL	0,9
	call	!!_plf_hoco_start				;[INF] 4, 3
; line   501
$DGL	0,10
	call	!!_EEL_Open					;[INF] 4, 3
??eb01_dataflash_format:
; line   502
?L0056:
; line   503
$DGL	0,12
	mov	!_df_cmd,#06H	; 6 				;[INF] 4, 1
; line   504
$DGL	0,13
	mov	!_df_req+3,#06H	; 6 				;[INF] 4, 1
; line   508
$DGL	0,17
	call	$!bs_F0137					;[INF] 3, 3
; line   510
$DGL	0,19
	call	$!bs_F0134					;[INF] 3, 3
; line   511
$DGL	0,20
	cmp0	a						;[INF] 1, 1
	bnz	$?L0063						;[INF] 2, 4
; line   512
??bb02_dataflash_format:
; line   513
$DGL	0,22
	mov	a,l						;[INF] 1, 1
	inc	a						;[INF] 1, 1
	bnz	$?L0060						;[INF] 2, 4
; line   514
??bb03_dataflash_format:
; line   516
$DGL	0,25
	call	!!_dataflash_busy_handler			;[INF] 4, 3
; line   519
$DGL	0,28
	call	!!_EEL_Close					;[INF] 4, 3
; line   520
$DGL	0,29
	call	!!_plf_hoco_stop				;[INF] 4, 3
; line   523
$DGL	0,32
	oneb	!_df_stat					;[INF] 3, 1
??eb03_dataflash_format:
; line   525
$DGL	0,34
	br	$?L0063						;[INF] 2, 3
?L0060:
; line   526
??bb04_dataflash_format:
; line   528
$DGL	0,37
	mov	!_df_stat,#03H	; 3 				;[INF] 4, 1
??eb04_dataflash_format:
; line   529
??eb02_dataflash_format:
; line   530
??eb00_dataflash_format:
; line   532
$DGL	0,41
	br	$?L0063						;[INF] 2, 3
?L0053:
	cmp	!_df_stat,#03H	; 3 				;[INF] 4, 1
	bnz	$?L0062						;[INF] 2, 4
; line   533
??bb05_dataflash_format:
; line   534
$DGL	0,43
	mov	h,#01H	; 1 					;[INF] 2, 1
??eb05_dataflash_format:
; line   536
$DGL	0,45
	br	$?L0063						;[INF] 2, 3
?L0062:
; line   537
??bb06_dataflash_format:
; line   538
$DGL	0,47
	mov	h,#03H	; 3 					;[INF] 2, 1
??eb06_dataflash_format:
; line   539
?L0063:
; line   541
$DGL	0,50
	mov	a,h						;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   545
; line   545
$DGL	0,54
??ef_dataflash_format:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_format:
; line   557
_dataflash_continue:
$DGL	1,317
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_dataflash_continue:
; line   559
$DGL	0,3
	mov	[hl+1],#03H	; errno,3 			;[INF] 3, 1
; line   564
$DGL	0,8
	cmp	!_df_stat,#03H	; 3 				;[INF] 4, 1
	bnz	$?L0071						;[INF] 2, 4
; line   565
??bb00_dataflash_continue:
; line   574
$DGL	0,18
	cmp	!_df_req+4,#01H	; 1 				;[INF] 4, 1
	sknz							;[INF] 2, 1
; line   575
??bb01_dataflash_continue:
; line   576
$DGL	0,20
	call	!!_EEL_Handler					;[INF] 4, 3
??eb01_dataflash_continue:
; line   577
?L0068:
; line   580
$DGL	0,24
	call	$!bs_F0135					;[INF] 3, 3
; line   607
$DGL	0,51
	cmp	!_df_req+4,#01H	; 1 				;[INF] 4, 1
	bz	$?L0070						;[INF] 2, 4
; line   608
??bb02_dataflash_continue:
; line   610
$DGL	0,54
	movw	ax,[hl+2]	; fin_flg 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	[de+0],#01H	; 1 				;[INF] 3, 1
; line   612
$DGL	0,56
	mov	a,!_df_cmd					;[INF] 3, 1
	sarw	ax,8						;[INF] 2, 1
	onew	bc						;[INF] 1, 1
	subw	ax,#06H	; 6 					;[INF] 3, 1
	subw	ax,bc						;[INF] 1, 1
	bh	$?L0074						;[INF] 3, 4
; line   613
??bb03_dataflash_continue:
; line   614
; line   617
$DGL	0,61
	call	!!_EEL_Close					;[INF] 4, 3
; line   618
$DGL	0,62
	call	!!_plf_hoco_stop				;[INF] 4, 3
; line   622
$DGL	0,66
	oneb	!_df_stat					;[INF] 3, 1
; line   623
$DGL	0,67
	br	$?L0071						;[INF] 2, 3
; line   624
?L0074:
; line   627
$DGL	0,71
	mov	!_df_stat,#02H	; 2 				;[INF] 4, 1
; line   628
$DGL	0,72
	br	$?L0071						;[INF] 2, 3
??eb03_dataflash_continue:
; line   629
??eb02_dataflash_continue:
; line   631
?L0070:
; line   632
??bb04_dataflash_continue:
; line   634
$DGL	0,78
	movw	ax,[hl+2]	; fin_flg 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	[de+0],#00H	; 0 				;[INF] 3, 1
??eb04_dataflash_continue:
; line   635
?L0071:
??eb00_dataflash_continue:
; line   637
; line   639
$DGL	0,83
	mov	a,[hl+1]	; errno 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   643
; line   643
$DGL	0,87
??ef_dataflash_continue:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_continue:
; line   655
_dataflash_get_space:
$DGL	1,346
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_dataflash_get_space:
; line   657
$DGL	0,3
	mov	[hl+1],#03H	; errno,3 			;[INF] 3, 1
; line   660
$DGL	0,6
	cmp	!_df_stat,#02H	; 2 				;[INF] 4, 1
	bnz	$?L0079						;[INF] 2, 4
; line   661
??bb00_dataflash_get_space:
; line   662
$DGL	0,8
	movw	ax,[hl+2]	; wsize 			;[INF] 2, 1
	call	!!_EEL_GetSpace					;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	[hl],a	; status 				;[INF] 1, 1
; line   663
$DGL	0,9
	cmp0	a						;[INF] 1, 1
	bnz	$?L0081						;[INF] 2, 4
	movw	ax,[hl+2]	; wsize 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	call	!@@indao					;[INF] 3, 3
	br	$?L0082						;[INF] 2, 3
?L0081:
	clrw	ax						;[INF] 1, 1
?L0082:
	movw	bc,ax						;[INF] 1, 1
	movw	ax,[hl+2]	; wsize 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	movw	ax,bc						;[INF] 1, 1
	call	!@@inado					;[INF] 3, 3
; line   665
$DGL	0,11
	mov	a,[hl]	; status 				;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	call	!!_dataflash_errno				;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	[hl+1],a	; errno 			;[INF] 2, 1
??eb00_dataflash_get_space:
; line   666
?L0079:
; line   668
$DGL	0,14
	mov	a,[hl+1]	; errno 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   672
; line   672
$DGL	0,18
??ef_dataflash_get_space:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_get_space:
; line   684
_dataflash_getver:
$DGL	1,361
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#06H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_dataflash_getver:
; line   686
$DGL	0,3
	mov	[hl+5],#03H	; errno,3 			;[INF] 3, 1
; line   690
$DGL	0,7
	cmp	!_df_stat,#01H	; 1 				;[INF] 4, 1
	bz	$?L0087						;[INF] 2, 4
	cmp	!_df_stat,#02H	; 2 				;[INF] 4, 1
	bnz	$?L0085						;[INF] 2, 4
?L0087:
; line   691
??bb00_dataflash_getver:
; line   692
$DGL	0,9
	call	!!_EEL_GetVersionString				;[INF] 4, 3
	movw	ax,bc						;[INF] 1, 1
	movw	[hl],ax	; string 				;[INF] 1, 1
	mov	a,e						;[INF] 1, 1
	mov	[hl+2],a	; string 			;[INF] 2, 1
; line   695
$DGL	0,12
	mov	[hl+4],#00H	; len,0 			;[INF] 3, 1
?L0088:
	mov	a,[hl+4]	; len 				;[INF] 2, 1
	cmp	a,#018H	; 24 					;[INF] 2, 1
	bnc	$?L0089						;[INF] 2, 4
; line   696
??bb01_dataflash_getver:
; line   697
$DGL	0,14
	mov	a,[hl+4]	; len 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	addw	ax,[hl+0]	; string 			;[INF] 3, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[hl+2]	; string 			;[INF] 2, 1
	mov	ES,a						;[INF] 2, 1
	mov	a,ES:[de]					;[INF] 2, 2
	mov	c,a						;[INF] 1, 1
	call	$!bs_S0136					;[INF] 3, 3
	mov	a,c						;[INF] 1, 1
	mov	[de],a						;[INF] 1, 1
; line   698
$DGL	0,15
	call	$!bs_S0136					;[INF] 3, 3
	mov	a,[de]						;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0089						;[INF] 2, 4
; line   699
??bb02_dataflash_getver:
; line   700
??eb02_dataflash_getver:
; line   701
??eb01_dataflash_getver:
; line   702
$DGL	0,19
	inc	[hl+4]	; len 					;[INF] 3, 2
	br	$?L0088						;[INF] 2, 3
?L0089:
; line   704
$DGL	0,21
	mov	a,[hl+4]	; len 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	incw	ax						;[INF] 1, 1
	mov	a,x						;[INF] 1, 1
	mov	[hl+4],a	; len 				;[INF] 2, 1
?L0093:
	mov	a,[hl+4]	; len 				;[INF] 2, 1
	cmp	a,#018H	; 24 					;[INF] 2, 1
	bnc	$?L0094						;[INF] 2, 4
; line   705
??bb03_dataflash_getver:
; line   706
$DGL	0,23
	call	$!bs_S0136					;[INF] 3, 3
	mov	[de+0],#00H	; 0 				;[INF] 3, 1
??eb03_dataflash_getver:
; line   707
$DGL	0,24
	inc	[hl+4]	; len 					;[INF] 3, 2
	br	$?L0093						;[INF] 2, 3
?L0094:
; line   708
$DGL	0,25
	mov	[hl+5],#00H	; errno,0 			;[INF] 3, 1
??eb00_dataflash_getver:
; line   709
?L0085:
; line   711
$DGL	0,28
	mov	a,[hl+5]	; errno 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   715
; line   715
$DGL	0,32
??ef_dataflash_getver:
	addw	sp,#08H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_getver:
; line   726
_dataflash_is_stopped:
$DGL	1,389
??bf_dataflash_is_stopped:
; line   728
$DGL	0,3
	cmp0	!_df_stat					;[INF] 3, 1
	bz	$?L0100						;[INF] 2, 4
	cmp	!_df_stat,#01H	; 1 				;[INF] 4, 1
	bnz	$?L0098						;[INF] 2, 4
?L0100:
	onew	ax						;[INF] 1, 1
	br	$?L0099						;[INF] 2, 3
?L0098:
	clrw	ax						;[INF] 1, 1
?L0099:
	movw	bc,ax						;[INF] 1, 1
; line   732
; line   732
$DGL	0,7
??ef_dataflash_is_stopped:
	ret							;[INF] 1, 6
??ee_dataflash_is_stopped:
; line   745
_dataflash_errno:
$DGL	1,395
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_dataflash_errno:
; line   748
$DGL	0,4
	mov	h,#00H	; 0 					;[INF] 2, 1
?L0103:
	mov	a,h						;[INF] 1, 1
	cmp	a,#0CH	; 12 					;[INF] 2, 1
	bnc	$?L0104						;[INF] 2, 4
; line   749
??bb00_dataflash_errno:
; line   750
$DGL	0,6
	clrb	x						;[INF] 1, 1
	shrw	ax,7						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	mov	ES,#highw (_errno_list)				;[INF] 2, 1
	mov	a,ES:_errno_list[bc]				;[INF] 4, 2
	cmp	a,l						;[INF] 2, 1
	bnz	$?L0106						;[INF] 2, 4
; line   751
??bb01_dataflash_errno:
; line   752
$DGL	0,8
	mov	a,ES:_errno_list+1[bc]				;[INF] 4, 2
	shrw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	br	$?L0102						;[INF] 2, 3
??eb01_dataflash_errno:
; line   753
?L0106:
??eb00_dataflash_errno:
; line   754
$DGL	0,10
	inc	h						;[INF] 1, 1
	br	$?L0103						;[INF] 2, 3
?L0104:
; line   755
$DGL	0,11
	movw	bc,#0FH	; 15 					;[INF] 3, 1
; line   756
?L0102:
; line   756
$DGL	0,12
??ef_dataflash_errno:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_dataflash_errno:
; line   767
_dataflash_busy_handler:
$DGL	1,412
??bf_dataflash_busy_handler:
; line   768
$DGL	0,2
?L0110:
	cmp	!_df_req+4,#01H	; 1 				;[INF] 4, 1
	bnz	$?L0111						;[INF] 2, 4
; line   769
??bb00_dataflash_busy_handler:
; line   770
$DGL	0,4
	call	!!_EEL_Handler					;[INF] 4, 3
??eb00_dataflash_busy_handler:
; line   771
$DGL	0,5
	br	$?L0110						;[INF] 2, 3
?L0111:
; line   772
$DGL	0,6
??ef_dataflash_busy_handler:
	ret							;[INF] 1, 6
??ee_dataflash_busy_handler:
; line   786
_flash_get_bda:
$DGL	1,422
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_flash_get_bda:
; line   788
$DGL	0,3
	mov	[hl+0],#01H	; invalid,1 			;[INF] 3, 1
; line   792
$DGL	0,7
	clrw	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_start				;[INF] 4, 3
	cmp0	c						;[INF] 1, 1
	bnz	$?L0114						;[INF] 2, 4
; line   793
??bb00_flash_get_bda:
; line   795
$DGL	0,10
	movw	ax,[hl+2]	; bda 				;[INF] 2, 1
	push	ax						;[INF] 1, 1
	onew	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_rw					;[INF] 4, 3
	addw	sp,#06H	; 6 					;[INF] 2, 1
	cmp0	c						;[INF] 1, 1
	bnz	$?L0119						;[INF] 2, 4
; line   796
??bb01_flash_get_bda:
; line   798
$DGL	0,13
	mov	[hl+1],#00H	; ii,0 				;[INF] 3, 1
?L0118:
	mov	a,[hl+1]	; ii 				;[INF] 2, 1
	cmp	a,#06H	; 6 					;[INF] 2, 1
	bnc	$?L0119						;[INF] 2, 4
; line   799
??bb02_flash_get_bda:
; line   800
$DGL	0,15
	call	$!bs_S0133					;[INF] 3, 3
	bz	$?L0121						;[INF] 2, 4
; line   801
??bb03_flash_get_bda:
; line   802
$DGL	0,17
	mov	[hl+0],#00H	; invalid,0 			;[INF] 3, 1
; line   803
$DGL	0,18
	br	$?L0119						;[INF] 2, 3
??eb03_flash_get_bda:
; line   804
?L0121:
??eb02_flash_get_bda:
; line   805
$DGL	0,20
	inc	[hl+1]	; ii 					;[INF] 3, 2
	br	$?L0118						;[INF] 2, 3
?L0119:
??eb01_flash_get_bda:
; line   806
; line   807
$DGL	0,22
	clrw	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_stop				;[INF] 4, 3
??eb00_flash_get_bda:
; line   808
?L0114:
; line   811
$DGL	0,26
	mov	a,[hl]	; invalid 				;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0126						;[INF] 2, 4
; line   812
??bb04_flash_get_bda:
; line   814
$DGL	0,29
	mov	[hl+1],#00H	; ii,0 				;[INF] 3, 1
?L0125:
	mov	a,[hl+1]	; ii 				;[INF] 2, 1
	cmp	a,#06H	; 6 					;[INF] 2, 1
	bnc	$?L0126						;[INF] 2, 4
; line   815
??bb05_flash_get_bda:
; line   816
$DGL	0,31
	mov	a,[hl+1]	; ii 				;[INF] 2, 1
	mov	b,a						;[INF] 1, 1
	mov	ES,#03H	; 3 					;[INF] 2, 1
	mov	a,ES:64512[b]					;[INF] 4, 2
	mov	c,a						;[INF] 1, 1
	movw	ax,[hl+2]	; bda 				;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[hl+1]	; ii 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	addw	ax,de						;[INF] 1, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,c						;[INF] 1, 1
	mov	[de],a						;[INF] 1, 1
; line   818
$DGL	0,33
	call	$!bs_S0133					;[INF] 3, 3
	skz							;[INF] 2, 1
; line   819
??bb06_flash_get_bda:
; line   820
$DGL	0,35
	mov	[hl+0],#00H	; invalid,0 			;[INF] 3, 1
??eb06_flash_get_bda:
; line   821
?L0128:
??eb05_flash_get_bda:
; line   822
$DGL	0,37
	inc	[hl+1]	; ii 					;[INF] 3, 2
	br	$?L0125						;[INF] 2, 3
?L0126:
??eb04_flash_get_bda:
; line   823
; line   825
$DGL	0,40
	mov	a,[hl]	; invalid 				;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0130						;[INF] 2, 4
; line   826
??bb07_flash_get_bda:
; line   828
$DGL	0,43
	movw	ax,[hl+2]	; bda 				;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	clrw	bc						;[INF] 1, 1
	mov	ES,#highw (_testadr)				;[INF] 2, 1
	mov	x,#06H	; 6 					;[INF] 2, 1
?L0132:
	mov	a,ES:_testadr[bc]				;[INF] 4, 2
	incw	bc						;[INF] 1, 1
	mov	[de],a						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	bnz	$?L0132						;[INF] 2, 4
??eb07_flash_get_bda:
; line   829
?L0130:
; line   830
$DGL	0,45
??ef_flash_get_bda:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_flash_get_bda:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\driver\dataflash
;	\dataflash.c
;
; $FUNC dataflash_init(157)
;	bc=(void)
;	CODE SIZE= 76 bytes, CLOCK_SIZE= 58 clocks, STACK_SIZE= 10 bytes
;
; $CALL memset(163)
;	bc=(pointer:ax, int:[sp+4], unsigned int:[sp+6])
;
; $CALL plf_hoco_start(166)
;	void=(void)
;
; $CALL FDL_Init(168)
;	bc=(pointer:ax,bc)
;
; $CALL FDL_Open(173)
;	void=(void)
;
; $CALL EEL_Init(176)
;	bc=(void)
;
; $CALL dataflash_errno(182)
;	bc=(int:ax)
;
; $CALL plf_hoco_stop(184)
;	void=(void)
;
; $FUNC dataflash_start(208)
;	bc=(unsigned char mode:x)
;	CODE SIZE= 99 bytes, CLOCK_SIZE= 112 clocks, STACK_SIZE= 10 bytes
;
; $CALL plf_hoco_start(215)
;	void=(void)
;
; $CALL EEL_Open(216)
;	void=(void)
;
; $CALL EEL_Execute(224)
;	void=(pointer:ax)
;
; $CALL dataflash_busy_handler(229)
;	void=(void)
;
; $CALL EEL_Execute(239)
;	void=(pointer:ax)
;
; $CALL dataflash_busy_handler(242)
;	void=(void)
;
; $CALL EEL_Execute(251)
;	void=(pointer:ax)
;
; $CALL dataflash_busy_handler(253)
;	void=(void)
;
; $CALL dataflash_errno(259)
;	bc=(int:ax)
;
; $CALL plf_hoco_stop(276)
;	void=(void)
;
; $FUNC dataflash_stop(302)
;	bc=(unsigned char mode:x)
;	CODE SIZE= 54 bytes, CLOCK_SIZE= 65 clocks, STACK_SIZE= 10 bytes
;
; $CALL EEL_Execute(314)
;	void=(pointer:ax)
;
; $CALL dataflash_errno(316)
;	bc=(int:ax)
;
; $CALL EEL_Close(328)
;	void=(void)
;
; $CALL plf_hoco_stop(329)
;	void=(void)
;
; $FUNC dataflash_rw(367)
;	bc=(unsigned char mode:x, char rw:[sp+4], unsigned char id:[sp+6], 
;	    pointer addr:[sp+8])
;	CODE SIZE= 93 bytes, CLOCK_SIZE= 94 clocks, STACK_SIZE= 14 bytes
;
; $CALL EEL_Execute(380)
;	void=(pointer:ax)
;
; $CALL dataflash_errno(382)
;	bc=(int:ax)
;
; $CALL dataflash_busy_handler(393)
;	void=(void)
;
; $FUNC dataflash_cleanup(429)
;	bc=(unsigned char mode:x)
;	CODE SIZE= 59 bytes, CLOCK_SIZE= 73 clocks, STACK_SIZE= 10 bytes
;
; $CALL EEL_Execute(443)
;	void=(pointer:ax)
;
; $CALL dataflash_errno(445)
;	bc=(int:ax)
;
; $CALL dataflash_busy_handler(456)
;	void=(void)
;
; $FUNC dataflash_format(492)
;	bc=(unsigned char mode:x)
;	CODE SIZE= 90 bytes, CLOCK_SIZE= 96 clocks, STACK_SIZE= 10 bytes
;
; $CALL plf_hoco_start(500)
;	void=(void)
;
; $CALL EEL_Open(501)
;	void=(void)
;
; $CALL EEL_Execute(508)
;	void=(pointer:ax)
;
; $CALL dataflash_errno(510)
;	bc=(int:ax)
;
; $CALL dataflash_busy_handler(516)
;	void=(void)
;
; $CALL EEL_Close(519)
;	void=(void)
;
; $CALL plf_hoco_stop(520)
;	void=(void)
;
; $FUNC dataflash_continue(557)
;	bc=(pointer fin_flg:ax)
;	CODE SIZE= 87 bytes, CLOCK_SIZE= 76 clocks, STACK_SIZE= 14 bytes
;
; $CALL EEL_Handler(576)
;	void=(void)
;
; $CALL dataflash_errno(580)
;	bc=(int:ax)
;
; $CALL EEL_Close(617)
;	void=(void)
;
; $CALL plf_hoco_stop(618)
;	void=(void)
;
; $FUNC dataflash_get_space(655)
;	bc=(pointer wsize:ax)
;	CODE SIZE= 62 bytes, CLOCK_SIZE= 55 clocks, STACK_SIZE= 10 bytes
;
; $CALL EEL_GetSpace(662)
;	bc=(pointer:ax)
;
; $CALL dataflash_errno(665)
;	bc=(int:ax)
;
; $FUNC dataflash_getver(684)
;	bc=(pointer ver:ax)
;	CODE SIZE= 109 bytes, CLOCK_SIZE= 119 clocks, STACK_SIZE= 14 bytes
;
; $CALL EEL_GetVersionString(692)
;	bc,de=(void)
;
; $FUNC dataflash_is_stopped(726)
;	bc=(void)
;	CODE SIZE= 17 bytes, CLOCK_SIZE= 22 clocks, STACK_SIZE= 0 bytes
;
; $FUNC dataflash_errno(745)
;	bc=(unsigned char eel_errno:x)
;	CODE SIZE= 40 bytes, CLOCK_SIZE= 39 clocks, STACK_SIZE= 2 bytes
;
; $FUNC dataflash_busy_handler(767)
;	void=(void)
;	CODE SIZE= 13 bytes, CLOCK_SIZE= 17 clocks, STACK_SIZE= 4 bytes
;
; $CALL EEL_Handler(770)
;	void=(void)
;
; $FUNC flash_get_bda(786)
;	void=(pointer bda:ax)
;	CODE SIZE= 138 bytes, CLOCK_SIZE= 153 clocks, STACK_SIZE= 16 bytes
;
; $CALL dataflash_start(792)
;	bc=(int:ax)
;
; $CALL dataflash_rw(795)
;	bc=(int:ax, int:[sp+4], int:[sp+6], pointer:[sp+8])
;
; $CALL dataflash_stop(807)
;	bc=(int:ax)

; Target chip : R5F11AGJ
; Device file : V1.20 

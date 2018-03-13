; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:19

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\arch\rl78\arch_main.c -oD
;             efaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_EXMEM_NO
;             T_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_RBLE,CFG
;             _USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMPLE,USE_
;             SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_HOCO_8M
;             HZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECLIB -i..
;             \..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\..\src\
;             driver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\..\..\..
;             \src\driver\dataflash\cs -i..\..\..\..\..\src\driver\dataflash -i
;             ..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i..\..\.
;             .\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\..\..\..
;             \..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\..\..\.
;             .\..\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf -i..\..
;             \..\..\..\src\driver\port -i..\..\..\..\..\src\driver\rf -i..\..\
;             ..\..\..\src\driver\uart -i..\..\..\..\..\src\driver\push_sw -i..
;             \..\..\..\..\src\driver\push_state -i..\..\..\..\..\src\driver\pk
;             tmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..\..\ble
;             ip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i..\..\..
;             \..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src\sample
;             _app\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -zps -mm 
;             -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\src\arch\rl78\arch_main.c
; Asm-file  : DefaultBuild\arch_main.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 02H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		0DFH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, arch_main.c
$DGS	MOD_NAM, arch_main,	00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, ACS_TBL,	U,	U,	00H,	078H,	00H,	00H
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
$DGS	STR_STR, _atts_desc,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0AH,		01EH
$DGS	MEB_STR, _type,		00H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _maxlength,	02H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _length,	03H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _taskid,	04H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _perm,		06H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _value,	08H,	0FFFFH,	01H,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		0AH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		0AH
$DGS	STR_STR, _device_name,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 042H,		025H
$DGS	MEB_STR, _namelen,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _name,		01H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	041H,	041H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		042H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 01EH,		042H
$DGS	STR_STR, _ke_msg_handler,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		02CH
$DGS	MEB_STR, _id,		00H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _func,		02H,	0FFFFH,	04H,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 025H,		06H
$DGS	STR_STR, _RBLE_CORE_SEL_PROF_HANDLER_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		034H
$DGS	MEB_STR, _prof_handler,	00H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 025H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _handler_size_num,	02H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 02CH,		04H
$DGS	STR_STR, _RBLE_PROF_VERSION_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		03CH
$DGS	MEB_STR, _major_ver,	00H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _minor_ver,	02H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 034H,		04H
$DGS	STR_STR, _ke_state_handler,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		043H
$DGS	MEB_STR, _msg_table,	00H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 025H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _msg_cnt,	02H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 03CH,		04H
$DGS	STR_STR, _ke_task_desc,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0AH,		04FH
$DGS	MEB_STR, _state_handler,	00H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 03CH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _default_handler,	02H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 03CH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _state,	04H,	0FFFFH,	0DH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _state_max,	06H,	0FFFFH,	0500DH,	08H,	00H,	00H
$DGS	MEB_STR, _idx_max,	08H,	0FFFFH,	0500DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		0AH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 043H,		0AH
$DGS	STR_STR, _bd_addr,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		055H
$DGS	MEB_STR, _addr,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	06H,	06H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 04FH,		06H
$DGS	GLV_SYM, _assert_err,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	06AH,	01H,	00H
$DGS	BEG_FUN, ??bf_assert_err,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 08AH,		08H,	060H
$DGS	FUN_ARG, _condition,	06H,	0FFFFH,	02H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _file,		0EH,	0FFFFH,	02H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _line,		010H,	0FFFFH,	05003H,	09H,	00H,	00H
$DGS	AUT_VAR, _dbg_assert_block,	05H,	0FFFFH,	0100CH,	01H,	00H,	00H
$DGS	AUT_VAR, _assert_time,	00H,	0FFFFH,	0100FH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_assert_err,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	062H
$DGS	BEG_BLK, ??bb01_assert_err,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	00H
$DGS	END_BLK, ??eb01_assert_err,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	END_BLK, ??eb00_assert_err,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	END_FUN, ??ef_assert_err,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	GLV_SYM, _assert_warn,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	075H,	01H,	00H
$DGS	BEG_FUN, ??bf_assert_warn,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0A0H,		02H,	075H
$DGS	FUN_ARG, _condition,	00H,	0FFFFH,	02H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _file,		08H,	0FFFFH,	02H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _line,		0AH,	0FFFFH,	05003H,	09H,	00H,	00H
$DGS	END_FUN, ??ef_assert_warn,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 05H
$DGS	GLV_SYM, _platform_reset_ent,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	087H,	01H,	00H
$DGS	BEG_FUN, ??bf_platform_reset_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0A7H,		0AH,	07DH
$DGS	FUN_ARG, _error,	06H,	0FFFFH,	0FH,	09H,	00H,	00H
$DGS	AUT_VAR, _Func_Data,	04H,	0FFFFH,	0DH,	01H,	00H,	00H
$DGS	AUT_VAR, _Func,		00H,	0FFFFH,	01H,	01H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	BEG_BLK, ??bb00_platform_reset_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	081H
$DGS	END_BLK, ??eb00_platform_reset_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01CH
$DGS	BEG_BLK, ??bb01_platform_reset_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 020H,		00H,	00H
$DGS	END_BLK, ??eb01_platform_reset_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 022H
$DGS	END_FUN, ??ef_platform_reset_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 02DH
$DGS	GLV_SYM, _arch_main_ent,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0AFH,	01H,	00H
$DGS	BEG_FUN, ??bf_arch_main_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0DDH,		06H,	08DH
$DGS	AUT_VAR, _public_addr,	00H,	0FFFFH,	08H,	01H,	01H,	00H
$DGS	AUX_STR, 04FH,		00H,	06H,	00H,	00H,	00H,	00H,	00H
$DGS	BEG_BLK, ??bb00_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05BH,		00H,	08FH
$DGS	BEG_BLK, ??bb01_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05BH,		00H,	095H
$DGS	END_BLK, ??eb01_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05BH
$DGS	END_BLK, ??eb00_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05BH
$DGS	BEG_BLK, ??bb02_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08BH,		00H,	097H
$DGS	BEG_BLK, ??bb03_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 094H,		00H,	099H
$DGS	BEG_BLK, ??bb04_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 094H,		00H,	09DH
$DGS	END_BLK, ??eb04_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 094H
$DGS	BEG_BLK, ??bb05_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 097H,		00H,	09FH
$DGS	BEG_BLK, ??bb06_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 09AH,		00H,	0A1H
$DGS	BEG_BLK, ??bb07_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 09DH,		00H,	00H
$DGS	END_BLK, ??eb07_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0A3H
$DGS	END_BLK, ??eb06_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0A4H
$DGS	END_BLK, ??eb05_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0A5H
$DGS	END_BLK, ??eb03_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0A7H
$DGS	END_BLK, ??eb02_arch_main_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AAH
$DGS	END_FUN, ??ef_arch_main_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0ABH
$DGS	GLV_SYM, _variables_init,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0B5H,	01H,	00H
$DGS	BEG_FUN, ??bf_variables_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 018AH,		02H,	0B5H
$DGS	END_FUN, ??ef_variables_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 014H
$DGS	STA_SYM, _host_db_init,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0C3H,	01H,	00H
$DGS	BEG_FUN, ??bf_host_db_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01A0H,		00H,	0B9H
$DGS	BEG_BLK, ??bb00_host_db_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 03H,		00H,	0BDH
$DGS	END_BLK, ??eb00_host_db_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05H
$DGS	BEG_BLK, ??bb01_host_db_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 07H,		00H,	00H
$DGS	END_BLK, ??eb01_host_db_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	END_FUN, ??ef_host_db_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 020H
$DGS	GLV_SYM, _sleep_check_enable,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0C9H,	01H,	00H
$DGS	BEG_FUN, ??bf_sleep_check_enable,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01C3H,		00H,	0C9H
$DGS	END_FUN, ??ef_sleep_check_enable,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0CH
$DGS	GLV_SYM, _sleep_cont_ent,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0D4H,	01H,	00H
$DGS	BEG_FUN, ??bf_sleep_cont_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01D2H,		02H,	0CEH
$DGS	REG_VAR, _ret,		06H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_sleep_cont_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 011H,		00H,	00H
$DGS	END_BLK, ??eb00_sleep_cont_ent,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 014H
$DGS	END_FUN, ??ef_sleep_cont_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	GLV_SYM, _RBLE_User_Set_Params,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0DEH,	01H,	00H
$DGS	BEG_FUN, ??bf_RBLE_User_Set_Params,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01EBH,		02H,	0DEH
$DGS	FUN_ARG, _param_id,	00H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _param_len,	08H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _param_data,	0AH,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_FUN, ??ef_RBLE_User_Set_Params,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	STA_SYM, L0048,		?L0048,	U,	05002H,	03H,	00H,	03H
$DGS	GLV_SYM, _ke_mem_heap_ent,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	0107BH,	0107BH,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _access_table_ent,	U,	U,	0500FH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	028H,	0AH,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, ?ke_malloc,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _clk_table_ent,	U,	U,	0500DH,	02H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	02H,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _TASK_DESC_ent,	U,	U,	05008H,	02H,	01H,	03H
$DGS	AUX_STR, 043H,		00H,	0AH,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _ke_evt_hdlr_ent,	U,	U,	05001H,	02H,	01H,	027H
$DGS	AUX_STR, 00H,		00H,	04H,	01H,	00H,	00H,	00H,	08H
$DGS	GLV_SYM, _lld_evt_time_get,	U,	U,	0FH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _clk_waitfunc,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _ble_connection_max,	U,	U,	03H,	02H,	00H,	00H
$DGS	GLV_SYM, _ke_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rwble_set_mem,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _peak_init,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _plf_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _spi_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _PacketMonitorFunc_Ptr,	U,	U,	01H,	02H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	GLV_SYM, _sleep_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _dataflash_init,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _flash_get_bda,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rwble_disable,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rf_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _input_rand_value,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rwble_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rwble_enable,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _R_Systeminit,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _led_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _RBLE_App_Init,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rwble_schedule,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rwble_sleep,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _wakeup_ready,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _wakeup_finish,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _sleep_load_data,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _loco_cal_period,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _task_id_max,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _ATT_HOST_DB_SIZE,	U,	U,	0500DH,	02H,	00H,	00H
$DGS	GLV_SYM, _ATT_PRF_DB_SIZE,	U,	U,	0500DH,	02H,	00H,	00H
$DGS	GLV_SYM, _atts_desc_list,	U,	U,	08H,	02H,	01H,	01H
$DGS	AUX_STR, 013H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _atts_desc_list_host,	U,	U,	05008H,	02H,	01H,	03H
$DGS	AUX_STR, 013H,		00H,	0AH,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _memcpy,	U,	U,	01H,	02H,	01H,	06H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	04H
$DGS	GLV_SYM, _atts_desc_list_prf,	U,	U,	05008H,	02H,	01H,	03H
$DGS	AUX_STR, 013H,		00H,	0AH,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, @@divuw,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _ATT_LAST_IDX,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _rble_core_sel_handler_table_ent,	U,	U,	05008H,	02H,	01H,	03H
$DGS	AUX_STR, 02CH,		00H,	04H,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _rble_core_sel_handler_table,	U,	U,	08H,	02H,	01H,	01H
$DGS	AUX_STR, 02CH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _prof_init_table_ent,	U,	U,	05001H,	02H,	01H,	027H
$DGS	AUX_STR, 00H,		00H,	04H,	01H,	00H,	00H,	00H,	08H
$DGS	GLV_SYM, _prof_init_table,	U,	U,	01H,	02H,	01H,	025H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	09H
$DGS	GLV_SYM, _rble_prof_version_table_ent,	U,	U,	05008H,	02H,	01H,	03H
$DGS	AUX_STR, 034H,		00H,	04H,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _rble_prof_version_table,	U,	U,	08H,	02H,	01H,	01H
$DGS	AUX_STR, 034H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _gap_dev_name,	U,	U,	08H,	02H,	01H,	00H
$DGS	AUX_STR, 01EH,		00H,	042H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _gap_discovery_scan_time,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_dev_search_scan_intv,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_dev_search_scan_window,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_lim_adv_timeout,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_scan_fast_intv,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_scan_fast_window,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_init_conn_min_intv,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_init_conn_max_intv,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_conn_min_ce_length,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_conn_max_ce_length,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_conn_slave_latency,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_dev_supervision_timeout,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_resolvable_private_addr_intv,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gap_appearance_char_val,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gatt_service_changed_ind_en,	U,	U,	0DH,	02H,	00H,	00H
$DGS	GLV_SYM, _gatt_service_changed,	U,	U,	0CH,	02H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	04H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _APP_Check_sleep,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _dataflash_is_stopped,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H

	EXTRN	_clk_table_ent
	EXTRN	_TASK_DESC_ent
	EXTRN	_ke_evt_hdlr_ent
	EXTRN	_lld_evt_time_get
	EXTRN	_clk_waitfunc
	EXTRN	_ble_connection_max
	EXTRN	_ke_init
	EXTRN	_rwble_set_mem
	EXTRN	_peak_init
	EXTRN	_plf_init
	EXTRN	_spi_init
	EXTRN	_PacketMonitorFunc_Ptr
	EXTRN	_sleep_init
	EXTRN	_dataflash_init
	EXTRN	_flash_get_bda
	EXTRN	_rwble_disable
	EXTRN	_rf_init
	EXTRN	_input_rand_value
	EXTRN	_rwble_init
	EXTRN	_rwble_enable
	EXTRN	_R_Systeminit
	EXTRN	_led_init
	EXTRN	_RBLE_App_Init
	EXTRN	_rwble_schedule
	EXTRN	_rwble_sleep
	EXTRN	_wakeup_ready
	EXTRN	_wakeup_finish
	EXTRN	_sleep_load_data
	EXTRN	_loco_cal_period
	EXTRN	_task_id_max
	EXTRN	_ATT_HOST_DB_SIZE
	EXTRN	_ATT_PRF_DB_SIZE
	EXTRN	?ke_malloc
	EXTRN	_atts_desc_list
	EXTRN	_atts_desc_list_host
	EXTRN	_memcpy
	EXTRN	_atts_desc_list_prf
	EXTRN	@@divuw
	EXTRN	_ATT_LAST_IDX
	EXTRN	_rble_core_sel_handler_table_ent
	EXTRN	_rble_core_sel_handler_table
	EXTRN	_prof_init_table_ent
	EXTRN	_prof_init_table
	EXTRN	_rble_prof_version_table_ent
	EXTRN	_rble_prof_version_table
	EXTRN	_gap_dev_name
	EXTRN	_gap_discovery_scan_time
	EXTRN	_gap_dev_search_scan_intv
	EXTRN	_gap_dev_search_scan_window
	EXTRN	_gap_lim_adv_timeout
	EXTRN	_gap_scan_fast_intv
	EXTRN	_gap_scan_fast_window
	EXTRN	_gap_init_conn_min_intv
	EXTRN	_gap_init_conn_max_intv
	EXTRN	_gap_conn_min_ce_length
	EXTRN	_gap_conn_max_ce_length
	EXTRN	_gap_conn_slave_latency
	EXTRN	_gap_dev_supervision_timeout
	EXTRN	_gap_resolvable_private_addr_intv
	EXTRN	_gap_appearance_char_val
	EXTRN	_gatt_service_changed_ind_en
	EXTRN	_gatt_service_changed
	EXTRN	_APP_Check_sleep
	EXTRN	_dataflash_is_stopped
	PUBLIC	_ke_mem_heap_ent
	PUBLIC	_access_table_ent
	PUBLIC	_assert_err
	PUBLIC	_assert_warn
	PUBLIC	_platform_reset_ent
	PUBLIC	_arch_main_ent
	PUBLIC	_variables_init
	PUBLIC	_sleep_check_enable
	PUBLIC	_sleep_cont_ent
	PUBLIC	_RBLE_User_Set_Params

@@BITS	BSEG

ACS_TBL	CSEG	MIRRORP
_access_table_ent:	DG	_arch_main_ent
	DG	_platform_reset_ent
	DG	_sleep_cont_ent
	DW	00000H,00000H	; 0
	DG	_RBLE_User_Set_Params
	DW	mirlw (_clk_table_ent)
	DW	0FH	; 15
	DW	mirlw (_TASK_DESC_ent)
	DW	0FH	; 15
	DW	mirlw (_ke_evt_hdlr_ent)
	DW	0FH	; 15
	DW	loww (_ke_mem_heap_ent)
	DW	0FH	; 15
	DW	loww (_ke_mem_heap_ent+4219)
	DW	0FH	; 15
?L0048:	DB	'Renesas-BLE'
	DB	00H

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

@@DATA	DSEG	BASEP
_ke_mem_heap_ent:	DS	(4219)
	DS	(1)

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
; line   125
; line   103
; line   106
; line   107
; line   121
; line   129
; line   130
; line   132
; line   133
; line   111
; line   119
; line   129
; line   136
; line   145
; line   686
; line   689
; line   692
; line   711
; line   727
; line   161
; line   164
; line   230
; line   239
; line   251
; line   260
; line   269
; line   283
; line   294
; line   302
; line    55
; line    56
; line    63
; line    82
; line    93
; line   104
; line   113
; line   120
; line    48
; line    49
; line    58
; line    65
; line    82
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
; line    41
; line    81
; line    98
; line   115
; line   135
; line   152
; line   169
; line   180
; line   191
; line   202
; line   212
; line   223
; line    21
; line    27
; line    28
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
; line    36
; line    37
; line    38
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
; line    44
; line    45
; line    46
; line    52
; line    54
; line    55
; line    56
; line    57
; line    58
; line    59
; line    60
; line    61
; line    62
; line    63
; line    64
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
; line    66
; line    76
; line    77
; line    78
; line    79
; line    80
; line    84
; line    85
; line    86
; line    90
; line    91
; line    92
; line    93
; line    94
; line    96
; line    97
; line    98
; line    99
; line    10
; line    11
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
; line    86
; line    87
; line    88
; line    90
; line    91
; line    62
; line    67
; line    72
; line    73
; line    74
; line    79
; line    80
; line    81
; line    82
; line    83
; line    33
; line    39
; line    40
; line    41
; line    42
; line    43
; line    45
; line    52
; line    53
; line    54
; line    58
; line    62
; line    93
; line   101
; line   103
; line   108
; line   110
; line   111
; line   352
; line   353
; line   354
; line   355
; line   356
; line   357
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
; line    25
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
; line    44
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
; line    61
; line    63
; line    64
; line    65
; line    66
; line    67
; line    68
; line    69
; line    70
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
; line    87
; line    88
; line    89
; line    90
; line    91
; line    92
; line    93
; line   103
; line   111
; line   117
; line   123
; line   124
; line   125
; line   127
; line   128
; line   129
; line   130
; line   132
; line   133
; line   134
; line   135
; line   137
; line   138
; line   139
; line   140
; line   142
; line   143
; line   144
; line   145
; line   147
; line   148
; line   149
; line   150
; line   152
; line   153
; line   154
; line   155
; line   157
; line   158
; line   159
; line   160
; line   162
; line   163
; line   164
; line   165
; line   167
; line   168
; line   169
; line   170
; line   172
; line   173
; line   174
; line   175
; line   177
; line   178
; line   179
; line   180
; line   182
; line   183
; line   184
; line   185
; line   187
; line   188
; line   189
; line   190
; line   192
; line   193
; line   194
; line   195
; line   197
; line   198
; line   199
; line   200
; line   202
; line   203
; line   204
; line   205
; line   207
; line   208
; line   209
; line   210
; line   212
; line   213
; line   214
; line   215
; line   217
; line   218
; line   219
; line   220
; line   222
; line   223
; line   224
; line   225
; line   227
; line   228
; line   229
; line   230
; line   232
; line   233
; line   234
; line   235
; line   237
; line   238
; line   239
; line   240
; line   242
; line   243
; line   244
; line   245
; line   247
; line   248
; line   249
; line   250
; line   252
; line   253
; line   254
; line   255
; line   257
; line   258
; line   259
; line   260
; line   262
; line   263
; line   264
; line   265
; line   267
; line   268
; line   269
; line   270
; line   272
; line   273
; line   274
; line   275
; line   277
; line   278
; line   279
; line   280
; line    29
; line    41
; line    42
; line    74
; line    79
; line    80
; line    81
; line    83
; line    84
; line    85
; line    87
; line    88
; line   106
; line    91
; line    95
; line    96
; line    97
; line    98
; line    99
; line   106
; line   108
; line   110
; line   111
; line   112
; line   116
; line   118
; line   119
; line   120
; line   121
; line   122
; line   123
; line   138

@@CODEL	CSEG
_assert_err:
$DGL	1,85
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#06H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_assert_err:
; line   139
$DGL	0,2
	mov	[hl+5],#01H	; dbg_assert_block,1 		;[INF] 3, 1
; line   145
$DGL	0,8
??bb00_assert_err:
??bb01_assert_err:
	di							;[INF] 3, 4
??eb01_assert_err:
??eb00_assert_err:
; line   146
$DGL	0,9
	call	!!_lld_evt_time_get				;[INF] 4, 3
	movw	ax,bc						;[INF] 1, 1
	movw	[hl],ax	; assert_time 				;[INF] 1, 1
	movw	ax,de						;[INF] 1, 1
	movw	[hl+2],ax	; assert_time 			;[INF] 2, 1
; line   147
$DGL	0,10
?L0006:
	mov	a,[hl+5]	; dbg_assert_block 		;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0006						;[INF] 2, 4
; line   148
$DGL	0,11
??ef_assert_err:
	addw	sp,#08H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_assert_err:
; line   160
_assert_warn:
$DGL	1,106
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_assert_warn:
; line   164
$DGL	0,5
??ef_assert_warn:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_assert_warn:
; line   167
_platform_reset_ent:
$DGL	1,117
	push	hl						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#06H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_platform_reset_ent:
; line   173
$DGL	0,7
	movw	ax,[hl+8]	; error 			;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	movw	ax,[hl+6]	; error 			;[INF] 2, 1
	movw	de,#01H	; 1 					;[INF] 3, 1
	xchw	ax,bc						;[INF] 1, 1
	cmpw	ax,#00H	; 0 					;[INF] 3, 1
	bnz	$?L0012						;[INF] 2, 4
	movw	ax,bc						;[INF] 1, 1
	subw	ax,de						;[INF] 1, 1
	bz	$?L0013						;[INF] 2, 4
	subw	ax,#0FDH	; 253 				;[INF] 3, 1
	bz	$?L0014						;[INF] 2, 4
	subw	ax,de						;[INF] 1, 1
	bz	$?L0014						;[INF] 2, 4
	br	$?L0012						;[INF] 2, 3
; line   174
??bb00_platform_reset_ent:
; line   176
?L0013:
; line   178
$DGL	0,12
	set1	P12.0						;[INF] 3, 2
; line   179
$DGL	0,13
	set1	P14.7						;[INF] 3, 2
; line   180
$DGL	0,14
	br	$?L0012						;[INF] 2, 3
; line   184
?L0014:
; line   187
$DGL	0,21
	clr1	P12.0						;[INF] 3, 2
; line   188
$DGL	0,22
	clr1	P14.7						;[INF] 3, 2
; line   189
; line   192
; line   193
??eb00_platform_reset_ent:
; line   194
?L0012:
; line   197
$DGL	0,31
	clrw	ax						;[INF] 1, 1
	movw	[hl+4],ax	; Func_Data 			;[INF] 2, 1
?L0022:
	movw	ax,[hl+4]	; Func_Data 			;[INF] 2, 1
	cmpw	ax,#03E8H	; 1000 				;[INF] 3, 1
	bnc	$?L0023						;[INF] 2, 4
; line   198
??bb01_platform_reset_ent:
; line   199
$DGL	0,33
	movw	ax,#06H	; 6 					;[INF] 3, 1
	call	!!_clk_waitfunc					;[INF] 4, 3
??eb01_platform_reset_ent:
; line   200
$DGL	0,34
	incw	[hl+4]	; Func_Data 				;[INF] 3, 2
	br	$?L0022						;[INF] 2, 3
?L0023:
; line   205
$DGL	0,39
	clrw	ax						;[INF] 1, 1
	decw	ax						;[INF] 1, 1
	movw	[hl+4],ax	; Func_Data 			;[INF] 2, 1
; line   206
$DGL	0,40
	movw	ax,hl						;[INF] 1, 1
	addw	ax,#04H						;[INF] 3, 1
	movw	[hl],ax	; Func 					;[INF] 1, 1
	mov	[hl+2],#0FH	; Func,15 			;[INF] 3, 1
; line   207
$DGL	0,41
	movw	ax,[hl]	; Func 					;[INF] 1, 1
	push	ax						;[INF] 1, 1
	mov	a,#0FH	; 15 					;[INF] 2, 1
	mov	CS,a						;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	call	ax						;[INF] 2, 3
; line   210
; line   211
$DGL	0,45
??ef_platform_reset_ent:
	addw	sp,#0AH						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_platform_reset_ent:
; line   221
_arch_main_ent:
$DGL	1,135
	push	hl						;[INF] 1, 1
	subw	sp,#06H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_arch_main_ent:
; line   225
$DGL	0,5
	mov	!RPECTL,#080H	; 128 				;[INF] 4, 1
; line   234
$DGL	0,14
	onew	ax						;[INF] 1, 1
	movw	!_ble_connection_max,ax				;[INF] 3, 1
; line   237
$DGL	0,17
	call	!!_ke_init					;[INF] 4, 3
; line   238
$DGL	0,18
	call	!!_rwble_set_mem				;[INF] 4, 3
; line   247
$DGL	0,27
	call	!!_variables_init				;[INF] 4, 3
; line   250
$DGL	0,30
	call	!!_host_db_init					;[INF] 4, 3
; line   254
$DGL	0,34
	clrw	ax						;[INF] 1, 1
	call	!!_peak_init					;[INF] 4, 3
; line   260
$DGL	0,40
	onew	ax						;[INF] 1, 1
	call	!!_plf_init					;[INF] 4, 3
; line   265
$DGL	0,45
	call	!!_spi_init					;[INF] 4, 3
; line   274
$DGL	0,54
	clrw	ax						;[INF] 1, 1
	movw	!_PacketMonitorFunc_Ptr,ax			;[INF] 3, 1
	clrb	!_PacketMonitorFunc_Ptr+2			;[INF] 3, 1
; line   278
$DGL	0,58
	call	!!_sleep_init					;[INF] 4, 3
; line   281
$DGL	0,61
	call	!!_dataflash_init				;[INF] 4, 3
; line   288
$DGL	0,68
	movw	ax,hl						;[INF] 1, 1
	call	!!_flash_get_bda				;[INF] 4, 3
; line   296
$DGL	0,76
	call	!!_rwble_disable				;[INF] 4, 3
; line   299
$DGL	0,79
	movw	ax,#040H	; 64 				;[INF] 3, 1
	call	!!_rf_init					;[INF] 4, 3
; line   302
$DGL	0,82
	movw	ax,#03H	; 3 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#0FC00H	; -1024 			;[INF] 3, 1
	push	ax						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	call	!!_input_rand_value				;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   305
$DGL	0,85
	movw	ax,#05H	; 5 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,hl						;[INF] 1, 1
	call	!!_rwble_init					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line   308
$DGL	0,88
	call	!!_rwble_enable					;[INF] 4, 3
; line   311
$DGL	0,91
?L0027:
??bb00_arch_main_ent:
??bb01_arch_main_ent:
	ei							;[INF] 3, 4
??eb01_arch_main_ent:
??eb00_arch_main_ent:
?L0029:
?L0028:
; line   313
$DGL	0,93
	call	!!_R_Systeminit					;[INF] 4, 3
; line   315
$DGL	0,95
	call	!!_led_init					;[INF] 4, 3
; line   345
$DGL	0,125
	call	!!_RBLE_App_Init				;[INF] 4, 3
; line   358
?L0030:
; line   359
??bb02_arch_main_ent:
; line   365
$DGL	0,145
	call	!!_rwble_schedule				;[INF] 4, 3
; line   368
$DGL	0,148
?L0032:
??bb03_arch_main_ent:
PUSH PSW
??bb04_arch_main_ent:
	di							;[INF] 3, 4
??eb04_arch_main_ent:
; line   370
$DGL	0,150
	call	!!_rwble_sleep					;[INF] 4, 3
	clrb	b						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	cmpw	ax,bc						;[INF] 1, 1
	sknz							;[INF] 2, 1
	br	!!?L0035					;[INF] 4, 3
; line   371
??bb05_arch_main_ent:
; line   373
$DGL	0,153
	call	!!_sleep_check_enable				;[INF] 4, 3
	clrb	b						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	cmpw	ax,bc						;[INF] 1, 1
	sknz							;[INF] 2, 1
	br	!!?L0037					;[INF] 4, 3
; line   374
??bb06_arch_main_ent:
; line   376
$DGL	0,156
	call	!!_wakeup_ready					;[INF] 4, 3
	clrb	b						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	cmpw	ax,bc						;[INF] 1, 1
	sknz							;[INF] 2, 1
	br	!!?L0039					;[INF] 4, 3
; line   377
??bb07_arch_main_ent:
; line   379
$DGL	0,159
stop
; line   382
$DGL	0,162
	call	!!_wakeup_finish				;[INF] 4, 3
??eb07_arch_main_ent:
; line   383
?L0039:
?L0040:
??eb06_arch_main_ent:
; line   384
?L0037:
?L0038:
??eb05_arch_main_ent:
; line   385
?L0035:
?L0036:
; line   387
$DGL	0,167
POP PSW
??eb03_arch_main_ent:
?L0034:
?L0033:
; line   389
$DGL	0,169
	call	!!_sleep_load_data				;[INF] 4, 3
??eb02_arch_main_ent:
; line   390
$DGL	0,170
	br	!!?L0030					;[INF] 4, 3
?L0031:
; line   391
$DGL	0,171
??ef_arch_main_ent:
	addw	sp,#06H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_arch_main_ent:
; line   394
_variables_init:
$DGL	1,175
	push	hl						;[INF] 1, 1
??bf_variables_init:
; line   396
$DGL	0,3
	movw	ax,#0640H	; 1600 				;[INF] 3, 1
	movw	!_loco_cal_period,ax				;[INF] 3, 1
; line   397
$DGL	0,4
	movw	ax,#012H	; 18 				;[INF] 3, 1
	movw	!_task_id_max,ax				;[INF] 3, 1
; line   400
$DGL	0,7
	movw	ax,!_ATT_HOST_DB_SIZE				;[INF] 3, 1
	addw	ax,!_ATT_PRF_DB_SIZE				;[INF] 3, 1
	callt	[?ke_malloc]					;[INF] 2, 5
	movw	ax,bc						;[INF] 1, 1
	movw	!_atts_desc_list,ax				;[INF] 3, 1
; line   402
$DGL	0,9
	movw	ax,!_ATT_HOST_DB_SIZE				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	hl,#mirlw (_atts_desc_list_host)		;[INF] 3, 1
	push	hl						;[INF] 1, 1
	movw	ax,!_atts_desc_list				;[INF] 3, 1
	call	!!_memcpy					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   403
$DGL	0,10
	movw	ax,!_ATT_PRF_DB_SIZE				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	hl,#mirlw (_atts_desc_list_prf)			;[INF] 3, 1
	push	hl						;[INF] 1, 1
	movw	ax,!_ATT_HOST_DB_SIZE				;[INF] 3, 1
	mov	c,#0AH	; 10 					;[INF] 2, 1
	call	!@@divuw					;[INF] 3, 3
	addw	ax,ax						;[INF] 1, 1
	movw	bc,ax						;[INF] 1, 1
	shlw	ax,2						;[INF] 2, 1
	addw	ax,bc						;[INF] 1, 1
	addw	ax,!_atts_desc_list				;[INF] 3, 1
	call	!!_memcpy					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   405
$DGL	0,12
	movw	ax,!_ATT_HOST_DB_SIZE				;[INF] 3, 1
	addw	ax,!_ATT_PRF_DB_SIZE				;[INF] 3, 1
	mov	c,#0AH	; 10 					;[INF] 2, 1
	call	!@@divuw					;[INF] 3, 3
	movw	!_ATT_LAST_IDX,ax				;[INF] 3, 1
; line   407
$DGL	0,14
	movw	ax,#mirlw (_rble_core_sel_handler_table_ent)	;[INF] 3, 1
	movw	!_rble_core_sel_handler_table,ax		;[INF] 3, 1
; line   411
$DGL	0,18
	movw	ax,#mirlw (_prof_init_table_ent)		;[INF] 3, 1
	movw	!_prof_init_table,ax				;[INF] 3, 1
; line   412
$DGL	0,19
	movw	ax,#mirlw (_rble_prof_version_table_ent)	;[INF] 3, 1
	movw	!_rble_prof_version_table,ax			;[INF] 3, 1
; line   413
$DGL	0,20
??ef_variables_init:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_variables_init:
; line   416
_host_db_init:
$DGL	1,181
??bf_host_db_init:
; line   417
$DGL	0,2
	mov	ES,#03H	; 3 					;[INF] 2, 1
	cmp0	ES:!0FC06H					;[INF] 4, 2
	bz	$?L0045						;[INF] 2, 4
	cmp	ES:!0FC06H,#042H	; 66 			;[INF] 5, 2
	bnc	$?L0045						;[INF] 2, 4
; line   418
??bb00_host_db_init:
; line   419
$DGL	0,4
	mov	c,#042H	; 66 					;[INF] 2, 1
?L0047:
	dec	c						;[INF] 1, 1
	mov	a,ES:64518[c]					;[INF] 4, 2
	mov	_gap_dev_name[c],a				;[INF] 3, 1
	bnz	$?L0047						;[INF] 2, 4
??eb00_host_db_init:
; line   421
$DGL	0,6
	br	$?L0046						;[INF] 2, 3
?L0045:
; line   422
??bb01_host_db_init:
; line   423
$DGL	0,8
	mov	!_gap_dev_name,#0BH	; 11 			;[INF] 4, 1
; line   424
$DGL	0,9
	movw	ax,#0BH	; 11 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#mirlw (?L0048)				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_gap_dev_name+1)			;[INF] 3, 1
	call	!!_memcpy					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
??eb01_host_db_init:
; line   425
?L0046:
; line   426
$DGL	0,11
	movw	de,!_atts_desc_list				;[INF] 3, 1
	mov	a,!_gap_dev_name				;[INF] 3, 1
	mov	[de+33],a					;[INF] 2, 1
; line   428
$DGL	0,13
	movw	ax,#0300H	; 768 				;[INF] 3, 1
	movw	!_gap_discovery_scan_time,ax			;[INF] 3, 1
; line   429
$DGL	0,14
	movw	ax,#012H	; 18 				;[INF] 3, 1
	movw	!_gap_dev_search_scan_intv,ax			;[INF] 3, 1
; line   430
$DGL	0,15
	movw	!_gap_dev_search_scan_window,ax			;[INF] 3, 1
; line   431
$DGL	0,16
	movw	ax,#0C00H	; 3072 				;[INF] 3, 1
	movw	!_gap_lim_adv_timeout,ax			;[INF] 3, 1
; line   432
$DGL	0,17
	movw	ax,#030H	; 48 				;[INF] 3, 1
	movw	!_gap_scan_fast_intv,ax				;[INF] 3, 1
; line   433
$DGL	0,18
	movw	!_gap_scan_fast_window,ax			;[INF] 3, 1
; line   434
$DGL	0,19
	mov	x,#018H	; 24 					;[INF] 2, 1
	movw	!_gap_init_conn_min_intv,ax			;[INF] 3, 1
; line   435
$DGL	0,20
	mov	x,#028H	; 40 					;[INF] 2, 1
	movw	!_gap_init_conn_max_intv,ax			;[INF] 3, 1
; line   436
$DGL	0,21
	clrw	ax						;[INF] 1, 1
	movw	!_gap_conn_min_ce_length,ax			;[INF] 3, 1
; line   437
$DGL	0,22
	decw	ax						;[INF] 1, 1
	movw	!_gap_conn_max_ce_length,ax			;[INF] 3, 1
; line   438
$DGL	0,23
	clrw	ax						;[INF] 1, 1
	movw	!_gap_conn_slave_latency,ax			;[INF] 3, 1
; line   439
$DGL	0,24
	movw	ax,#07D0H	; 2000 				;[INF] 3, 1
	movw	!_gap_dev_supervision_timeout,ax		;[INF] 3, 1
; line   440
$DGL	0,25
	movw	ax,#03A98H	; 15000 			;[INF] 3, 1
	movw	!_gap_resolvable_private_addr_intv,ax		;[INF] 3, 1
; line   441
$DGL	0,26
	clrw	ax						;[INF] 1, 1
	movw	!_gap_appearance_char_val,ax			;[INF] 3, 1
; line   442
$DGL	0,27
	movw	!_gatt_service_changed_ind_en,ax		;[INF] 3, 1
; line   443
$DGL	0,28
	oneb	!_gatt_service_changed				;[INF] 3, 1
; line   444
$DGL	0,29
	clrb	!_gatt_service_changed+1			;[INF] 3, 1
; line   445
$DGL	0,30
	mov	!_gatt_service_changed+2,#0FFH	; 255 		;[INF] 4, 1
; line   446
$DGL	0,31
	mov	!_gatt_service_changed+3,#0FFH	; 255 		;[INF] 4, 1
; line   447
$DGL	0,32
??ef_host_db_init:
	ret							;[INF] 1, 6
??ee_host_db_init:
; line   451
_sleep_check_enable:
$DGL	1,195
??bf_sleep_check_enable:
; line   461
$DGL	0,11
	clrw	bc						;[INF] 1, 1
; line   462
; line   462
$DGL	0,12
??ef_sleep_check_enable:
	ret							;[INF] 1, 6
??ee_sleep_check_enable:
; line   466
_sleep_cont_ent:
$DGL	1,201
	push	hl						;[INF] 1, 1
??bf_sleep_cont_ent:
; line   467
$DGL	0,2
	mov	l,#01H	; 1 					;[INF] 2, 1
; line   473
$DGL	0,8
	call	!!_APP_Check_sleep				;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	l,a						;[INF] 1, 1
; line   481
$DGL	0,16
	dec	a						;[INF] 1, 1
	bnz	$?L0053						;[INF] 2, 4
; line   482
??bb00_sleep_cont_ent:
; line   484
$DGL	0,19
	call	!!_dataflash_is_stopped				;[INF] 4, 3
	mov	a,c						;[INF] 1, 1
	mov	l,a						;[INF] 1, 1
??eb00_sleep_cont_ent:
; line   485
?L0053:
; line   487
$DGL	0,22
	movw	ax,hl						;[INF] 1, 1
	clrb	a						;[INF] 1, 1
	movw	bc,ax						;[INF] 1, 1
; line   488
; line   488
$DGL	0,23
??ef_sleep_cont_ent:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_sleep_cont_ent:
; line   491
_RBLE_User_Set_Params:
$DGL	1,212
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_RBLE_User_Set_Params:
; line   492
$DGL	0,2
	clrw	bc						;[INF] 1, 1
; line   493
; line   493
$DGL	0,3
??ef_RBLE_User_Set_Params:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_RBLE_User_Set_Params:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\arch\rl78\arch_m
;	ain.c
;
; $FUNC assert_err(138)
;	void=(pointer condition:ax, pointer file:[sp+4], short line:[sp+6])
;	CODE SIZE= 31 bytes, CLOCK_SIZE= 30 clocks, STACK_SIZE= 14 bytes
;
; $CALL lld_evt_time_get(146)
;	bc,de=(void)
;
; $FUNC assert_warn(160)
;	void=(pointer condition:ax, pointer file:[sp+4], short line:[sp+6])
;	CODE SIZE= 8 bytes, CLOCK_SIZE= 11 clocks, STACK_SIZE= 4 bytes
;
; $FUNC platform_reset_ent(167)
;	void=(unsigned long error:ax,bc)
;	CODE SIZE= 97 bytes, CLOCK_SIZE= 85 clocks, STACK_SIZE= 16 bytes
;
; $CALL clk_waitfunc(199)
;	void=(int:ax)
;
; $CALL Func(207)
;	void=(void)
;
; $FUNC arch_main_ent(221)
;	void=(void)
;	CODE SIZE= 181 bytes, CLOCK_SIZE= 135 clocks, STACK_SIZE= 16 bytes
;
; $CALL ke_init(237)
;	void=(void)
;
; $CALL rwble_set_mem(238)
;	void=(void)
;
; $CALL variables_init(247)
;	void=(void)
;
; $CALL host_db_init(250)
;	void=(void)
;
; $CALL peak_init(254)
;	bc=(unsigned short:ax)
;
; $CALL plf_init(260)
;	void=(int:ax)
;
; $CALL spi_init(265)
;	void=(void)
;
; $CALL sleep_init(278)
;	void=(void)
;
; $CALL dataflash_init(281)
;	bc=(void)
;
; $CALL flash_get_bda(288)
;	void=(pointer:ax)
;
; $CALL rwble_disable(296)
;	void=(void)
;
; $CALL rf_init(299)
;	void=(unsigned short:ax)
;
; $CALL input_rand_value(302)
;	void=(unsigned short:ax, unsigned long:[sp+4])
;
; $CALL rwble_init(305)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL rwble_enable(308)
;	void=(void)
;
; $CALL R_Systeminit(313)
;	void=(void)
;
; $CALL led_init(315)
;	void=(void)
;
; $CALL RBLE_App_Init(345)
;	bc=(void)
;
; $CALL rwble_schedule(365)
;	void=(void)
;
; $CALL rwble_sleep(370)
;	bc=(void)
;
; $CALL sleep_check_enable(373)
;	bc=(void)
;
; $CALL wakeup_ready(376)
;	bc=(void)
;
; $CALL wakeup_finish(382)
;	void=(void)
;
; $CALL sleep_load_data(389)
;	void=(void)
;
; $FUNC variables_init(394)
;	void=(void)
;	CODE SIZE= 106 bytes, CLOCK_SIZE= 61 clocks, STACK_SIZE= 10 bytes
;
; $CALL ke_malloc(400)
;	bc=(unsigned int:ax)
;
; $CALL memcpy(402)
;	bc=(pointer:ax, pointer:[sp+4], unsigned int:[sp+6])
;
; $CALL memcpy(403)
;	bc=(pointer:ax, pointer:[sp+4], unsigned int:[sp+6])
;
; $FUNC host_db_init(416)
;	void=(void)
;	CODE SIZE= 144 bytes, CLOCK_SIZE= 75 clocks, STACK_SIZE= 8 bytes
;
; $CALL memcpy(424)
;	bc=(pointer:ax, pointer:[sp+4], unsigned int:[sp+6])
;
; $FUNC sleep_check_enable(451)
;	bc=(void)
;	CODE SIZE= 2 bytes, CLOCK_SIZE= 7 clocks, STACK_SIZE= 0 bytes
;
; $FUNC sleep_cont_ent(466)
;	bc=(void)
;	CODE SIZE= 23 bytes, CLOCK_SIZE= 27 clocks, STACK_SIZE= 6 bytes
;
; $CALL APP_Check_sleep(473)
;	bc=(void)
;
; $CALL dataflash_is_stopped(484)
;	bc=(void)
;
; $FUNC RBLE_User_Set_Params(491)
;	bc=(unsigned char param_id:x, unsigned char param_len:[sp+4], 
;	    pointer param_data:[sp+6])
;	CODE SIZE= 9 bytes, CLOCK_SIZE= 12 clocks, STACK_SIZE= 4 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

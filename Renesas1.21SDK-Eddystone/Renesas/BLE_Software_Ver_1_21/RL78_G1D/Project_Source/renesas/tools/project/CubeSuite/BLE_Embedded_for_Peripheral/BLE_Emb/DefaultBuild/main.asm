; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:24

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\arch\rl78\main.c -oDefaul
;             tBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_EXMEM_NOT_PRE
;             SENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_RBLE,CFG_USE_
;             EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMPLE,USE_SAMPL
;             E_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_HOCO_8MHZ,CL
;             K_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECLIB -i..\..\.
;             .\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\..\src\drive
;             r\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\..\..\..\src\
;             driver\dataflash\cs -i..\..\..\..\..\src\driver\dataflash -i..\..
;             \..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i..\..\..\..\
;             ..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\..\..\..\..\s
;             rc\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\..\..\..\..\
;             src\driver\led_onoff -i..\..\..\..\..\src\driver\plf -i..\..\..\.
;             .\..\src\driver\port -i..\..\..\..\..\src\driver\rf -i..\..\..\..
;             \..\src\driver\uart -i..\..\..\..\..\src\driver\push_sw -i..\..\.
;             .\..\..\src\driver\push_state -i..\..\..\..\..\src\driver\pktmon 
;             -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..\..\bleip\sr
;             c\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i..\..\..\..\.
;             .\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src\sample_app\
;             seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -zps -mm -mi0 
;             -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\src\arch\rl78\main.c
; Asm-file  : DefaultBuild\main.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		085H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, main.c
$DGS	MOD_NAM, main,		00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, MAINCNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, MAINDATA,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNSTL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@RLINIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INITL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATAL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CALT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, MAINCODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@BASE,	U,	U,	00H,	078H,	00H,	00H
$DGS	STR_STR, _ke_msg_handler,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		01AH
$DGS	MEB_STR, _id,		00H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _func,		02H,	0FFFFH,	04H,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		06H
$DGS	STR_STR, _ke_state_handler,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		021H
$DGS	MEB_STR, _msg_table,	00H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 013H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _msg_cnt,	02H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 01AH,		04H
$DGS	STR_STR, _ke_task_desc,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0AH,		02DH
$DGS	MEB_STR, _state_handler,	00H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 01AH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _default_handler,	02H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 01AH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _state,	04H,	0FFFFH,	0DH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _state_max,	06H,	0FFFFH,	0500DH,	08H,	00H,	00H
$DGS	MEB_STR, _idx_max,	08H,	0FFFFH,	0500DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		0AH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 021H,		0AH
$DGS	STR_STR, _RBLE_PROF_VERSION_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		035H
$DGS	MEB_STR, _major_ver,	00H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _minor_ver,	02H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 02DH,		04H
$DGS	STR_STR, _RBLE_CORE_SEL_PROF_HANDLER_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		03DH
$DGS	MEB_STR, _prof_handler,	00H,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 013H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _handler_size_num,	02H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 035H,		04H
$DGS	LAB_SYM, bs_S0020,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0020,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0019,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0019,	U,	U,	00H,	06H,	00H,	00H
$DGS	GLV_SYM, _init_data_section_area,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	047H,	01H,	00H
$DGS	BEG_FUN, ??bf_init_data_section_area,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0C2H,		00H,	047H
$DGS	END_FUN, ??ef_init_data_section_area,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 034H
$DGS	GLV_SYM, _main,		U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	052H,	01H,	00H
$DGS	BEG_FUN, ??bf_main,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0F8H,		04H,	04CH
$DGS	AUT_VAR, _offset_addr,	00H,	0FFFFH,	0FH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_main,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 07FH,		00H,	00H
$DGS	END_BLK, ??eb00_main,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 082H
$DGS	END_FUN, ??ef_main,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 083H
$DGS	GLV_SYM, _arch_main,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	059H,	01H,	00H
$DGS	BEG_FUN, ??bf_arch_main,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01A4H,		04H,	059H
$DGS	AUT_VAR, _func_addr,	00H,	0FFFFH,	0FH,	01H,	00H,	00H
$DGS	END_FUN, ??ef_arch_main,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 07H
$DGS	GLV_SYM, _platform_reset,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	061H,	01H,	00H
$DGS	BEG_FUN, ??bf_platform_reset,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01ADH,		08H,	061H
$DGS	FUN_ARG, _error,	04H,	0FFFFH,	0FH,	09H,	00H,	00H
$DGS	AUT_VAR, _func_addr,	00H,	0FFFFH,	0FH,	01H,	00H,	00H
$DGS	END_FUN, ??ef_platform_reset,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 07H
$DGS	GLV_SYM, _wakeup_init,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	067H,	01H,	00H
$DGS	BEG_FUN, ??bf_wakeup_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01B7H,		00H,	067H
$DGS	END_FUN, ??ef_wakeup_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0DH
$DGS	GLV_SYM, _sleep_cont,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	06EH,	01H,	00H
$DGS	BEG_FUN, ??bf_sleep_cont,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01C6H,		04H,	06EH
$DGS	AUT_VAR, _func_addr,	00H,	0FFFFH,	0FH,	01H,	00H,	00H
$DGS	END_FUN, ??ef_sleep_cont,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 06H
$DGS	GLV_SYM, _peak_start,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	074H,	01H,	00H
$DGS	BEG_FUN, ??bf_peak_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01CFH,		00H,	074H
$DGS	END_FUN, ??ef_peak_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 06H
$DGS	GLV_SYM, _peak_end,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	07AH,	01H,	00H
$DGS	BEG_FUN, ??bf_peak_end,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01D8H,		00H,	07AH
$DGS	END_FUN, ??ef_peak_end,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 06H
$DGS	GLV_SYM, _RBLE_User_Set_Params_call_func,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	085H,	01H,	00H
$DGS	BEG_FUN, ??bf_RBLE_User_Set_Params_call_func,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01E0H,		06H,	085H
$DGS	FUN_ARG, _param_id,	04H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _param_len,	0CH,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _param_data,	0EH,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _func_addr,	00H,	0FFFFH,	0FH,	01H,	00H,	00H
$DGS	END_FUN, ??ef_RBLE_User_Set_Params_call_func,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 06H
$DGS	GLV_SYM, _access_table,	U,	U,	0FH,	026H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _ke_evt_hdlr,	U,	U,	01H,	026H,	01H,	025H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	09H
$DGS	GLV_SYM, _TASK_DESC,	U,	U,	08H,	026H,	01H,	01H
$DGS	AUX_STR, 021H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _ke_mem_heap,	U,	U,	0CH,	026H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _ke_mem_heap_end,	U,	U,	0CH,	026H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _clk_table,	U,	U,	0DH,	026H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _ble_connection_max,	U,	U,	03H,	026H,	00H,	00H
$DGS	GLV_SYM, @@lnd0o,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _@RTARG4,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, @@luadd,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _@RTARG0,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, @@indao,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _memset,	U,	U,	01H,	02H,	01H,	06H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	04H
$DGS	GLV_SYM, _access_table_ent,	U,	U,	0500FH,	02H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _@RTARG2,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _rble_core_handler,	U,	U,	08H,	02H,	01H,	01H
$DGS	AUX_STR, 013H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _rble_core_sel_handler_table,	U,	U,	08H,	02H,	01H,	01H
$DGS	AUX_STR, 035H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	GLV_SYM, _prof_init_table,	U,	U,	01H,	02H,	01H,	025H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	09H
$DGS	GLV_SYM, _rble_prof_version_table,	U,	U,	08H,	02H,	01H,	01H
$DGS	AUX_STR, 02DH,		00H,	02H,	00H,	00H,	00H,	00H,	01H

	EXTRN	@@lnd0o
	EXTRN	_@RTARG4
	EXTRN	@@luadd
	EXTRN	_@RTARG0
	EXTRN	@@indao
	EXTRN	_memset
	EXTRN	_access_table_ent
	EXTRN	_@RTARG2
	EXTRN	_rble_core_handler
	EXTRN	_rble_core_sel_handler_table
	EXTRN	_prof_init_table
	EXTRN	_rble_prof_version_table
	PUBLIC	_access_table
	PUBLIC	_ke_evt_hdlr
	PUBLIC	_TASK_DESC
	PUBLIC	_ke_mem_heap
	PUBLIC	_ke_mem_heap_end
	PUBLIC	_clk_table
	PUBLIC	_ble_connection_max
	PUBLIC	_init_data_section_area
	PUBLIC	_main
	PUBLIC	_arch_main
	PUBLIC	_platform_reset
	PUBLIC	_wakeup_init
	PUBLIC	_sleep_cont
	PUBLIC	_peak_start
	PUBLIC	_peak_end
	PUBLIC	_RBLE_User_Set_Params_call_func

@@BITS	BSEG

MAINCNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

MAINDATA	DSEG	BASEP
_access_table:	DS	(2)
_ke_evt_hdlr:	DS	(2)
_TASK_DESC:	DS	(2)
_ke_mem_heap:	DS	(2)
_ke_mem_heap_end:	DS	(2)
_clk_table:	DS	(2)
_ble_connection_max:	DS	(2)

@@R_INIS	CSEG	UNIT64KP

@@INIS	DSEG	SADDRP

@@DATS	DSEG	SADDRP

@@CNSTL	CSEG	PAGE64KP

@@RLINIT	CSEG	UNIT64KP

@@INITL	DSEG	UNIT64KP

@@DATAL	DSEG	UNIT64KP

@@CALT	CSEG	CALLT0

; Sub-Routines created by CC78K0R

MAINCODE	CSEG
bs_S0020:
	movw	de,ax						;[INF] 1, 1
	call	!@@lnd0o					;[INF] 3, 3
	movw	ax,[hl]						;[INF] 1, 1
	movw	_@RTARG4,ax					;[INF] 2, 1
	movw	ax,[hl+2]					;[INF] 2, 1
	call	!@@luadd					;[INF] 3, 3
	movw	ax,_@RTARG0					;[INF] 2, 1
	ret							;[INF] 1, 6
es_S0020:

MAINCODE	CSEG
bs_S0019:
	mov	a,[de+2]					;[INF] 2, 1
	mov	x,a						;[INF] 1, 1
	mov	a,[de+3]					;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	call	!@@indao					;[INF] 3, 3
	movw	[hl],ax						;[INF] 1, 1
	xchw	ax,bc						;[INF] 1, 1
	movw	[hl+2],ax					;[INF] 2, 1
	ret							;[INF] 1, 6
es_S0019:

; *** Sub-Routine Information ***
;
; $SUB bs_S0019
;      CODE SIZE= 14 bytes
;
; $SUB bs_S0020
;      CODE SIZE= 15 bytes

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
; line    33
; line    39
; line    40
; line    41
; line    42
; line    43
; line    52
; line    53
; line    54
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
; line   111
; line   119
; line   129
; line   136
; line   145
; line    55
; line    56
; line    63
; line    82
; line    93
; line   104
; line   113
; line   120
; line    48
; line    58
; line    65
; line    82
; line   103
; line   106
; line   121
; line   129
; line   130
; line   132
; line   133
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
; line    85
; line    86
; line    87
; line    88
; line    89
; line    92
; line    94
; line    95
; line    96
; line    97
; line    98
; line    99
; line   122
; line   124
; line   125
; line   126
; line   127
; line   136
; line   137
; line   138
; line   139
; line   194

MAINCODE	CSEG
_init_data_section_area:
$DGL	1,65
??bf_init_data_section_area:
; line   243
$DGL	0,50
	movw	ax,#0960H	; 2400 				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	ax,#0B310H	; -19696 			;[INF] 3, 1
	call	!!_memset					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   245
$DGL	0,52
??ef_init_data_section_area:
	ret							;[INF] 1, 6
??ee_init_data_section_area:
; line   248
_main:
$DGL	1,71
	push	hl						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_main:
; line   249
$DGL	0,2
	clrw	ax						;[INF] 1, 1
	movw	[hl],ax	; offset_addr 				;[INF] 1, 1
	movw	[hl+2],ax	; offset_addr 			;[INF] 2, 1
; line   251
$DGL	0,4
	call	!!_init_data_section_area			;[INF] 4, 3
; line   259
$DGL	0,12
	movw	_@RTARG0,#mirlw (_access_table_ent)		;[INF] 4, 1
	movw	_@RTARG2,#0FH	; 15 				;[INF] 4, 1
	movw	ax,[hl]	; offset_addr 				;[INF] 1, 1
	movw	_@RTARG4,ax					;[INF] 2, 1
	movw	ax,[hl+2]	; offset_addr 			;[INF] 2, 1
	call	!@@luadd					;[INF] 3, 3
	movw	ax,_@RTARG0					;[INF] 2, 1
	movw	!_access_table,ax				;[INF] 3, 1
; line   262
$DGL	0,15
	addw	ax,#014H	; 20 				;[INF] 3, 1
	call	$!bs_S0020					;[INF] 3, 3
	movw	!_clk_table,ax					;[INF] 3, 1
; line   263
$DGL	0,16
	movw	ax,!_access_table				;[INF] 3, 1
	addw	ax,#01CH	; 28 				;[INF] 3, 1
	call	$!bs_S0020					;[INF] 3, 3
	movw	!_ke_evt_hdlr,ax				;[INF] 3, 1
; line   264
$DGL	0,17
	movw	ax,!_access_table				;[INF] 3, 1
	addw	ax,#018H	; 24 				;[INF] 3, 1
	call	$!bs_S0020					;[INF] 3, 3
	movw	!_TASK_DESC,ax					;[INF] 3, 1
; line   267
$DGL	0,20
	movw	ax,!_access_table				;[INF] 3, 1
	addw	ax,#020H	; 32 				;[INF] 3, 1
	movw	de,ax						;[INF] 1, 1
	call	!@@indao					;[INF] 3, 3
	movw	!_ke_mem_heap,ax				;[INF] 3, 1
; line   268
$DGL	0,21
	movw	ax,!_access_table				;[INF] 3, 1
	addw	ax,#024H	; 36 				;[INF] 3, 1
	movw	de,ax						;[INF] 1, 1
	call	!@@indao					;[INF] 3, 3
	movw	!_ke_mem_heap_end,ax				;[INF] 3, 1
; line   271
$DGL	0,24
	clrw	ax						;[INF] 1, 1
	movw	!_rble_core_handler,ax				;[INF] 3, 1
; line   272
$DGL	0,25
	movw	!_rble_core_sel_handler_table,ax		;[INF] 3, 1
; line   276
$DGL	0,29
	movw	!_prof_init_table,ax				;[INF] 3, 1
; line   277
$DGL	0,30
	movw	!_rble_prof_version_table,ax			;[INF] 3, 1
; line   374
??bb00_main:
; line   376
$DGL	0,129
	call	!!_arch_main					;[INF] 4, 3
??eb00_main:
; line   377
; line   378
$DGL	0,131
??ef_main:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_main:
; line   420
_arch_main:
$DGL	1,82
	push	hl						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_arch_main:
; line   423
$DGL	0,4
	movw	de,!_access_table				;[INF] 3, 1
	call	$!bs_S0019					;[INF] 3, 3
; line   424
$DGL	0,5
	mov	a,[hl+2]	; func_addr 			;[INF] 2, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,[hl]	; func_addr 				;[INF] 1, 1
	call	ax						;[INF] 2, 3
; line   425
; line   426
; line   426
$DGL	0,7
??ef_arch_main:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_arch_main:
; line   429
_platform_reset:
$DGL	1,89
	push	hl						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_platform_reset:
; line   432
$DGL	0,4
	movw	ax,!_access_table				;[INF] 3, 1
	addw	ax,#04H	; 4 					;[INF] 3, 1
	movw	de,ax						;[INF] 1, 1
	call	$!bs_S0019					;[INF] 3, 3
; line   433
$DGL	0,5
	movw	ax,[hl]	; func_addr 				;[INF] 1, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[hl+2]	; func_addr 			;[INF] 2, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,[hl+6]	; error 			;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	movw	ax,[hl+4]	; error 			;[INF] 2, 1
	call	de						;[INF] 2, 3
; line   434
; line   435
; line   435
$DGL	0,7
??ef_platform_reset:
	addw	sp,#08H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_platform_reset:
; line   439
_wakeup_init:
$DGL	1,97
??bf_wakeup_init:
; line   451
$DGL	0,13
??ef_wakeup_init:
	ret							;[INF] 1, 6
??ee_wakeup_init:
; line   454
_sleep_cont:
$DGL	1,103
	push	hl						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_sleep_cont:
; line   457
$DGL	0,4
	movw	ax,!_access_table				;[INF] 3, 1
	addw	ax,#08H	; 8 					;[INF] 3, 1
	movw	de,ax						;[INF] 1, 1
	call	$!bs_S0019					;[INF] 3, 3
; line   458
$DGL	0,5
	mov	a,[hl+2]	; func_addr 			;[INF] 2, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,[hl]	; func_addr 				;[INF] 1, 1
	call	ax						;[INF] 2, 3
	clrb	b						;[INF] 1, 1
; line   459
; line   459
$DGL	0,6
??ef_sleep_cont:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_sleep_cont:
; line   463
_peak_start:
$DGL	1,110
??bf_peak_start:
; line   468
$DGL	0,6
??ef_peak_start:
	ret							;[INF] 1, 6
??ee_peak_start:
; line   472
_peak_end:
$DGL	1,116
??bf_peak_end:
; line   477
$DGL	0,6
??ef_peak_end:
	ret							;[INF] 1, 6
??ee_peak_end:
; line   480
_RBLE_User_Set_Params_call_func:
$DGL	1,122
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_RBLE_User_Set_Params_call_func:
; line   483
$DGL	0,4
	movw	ax,!_access_table				;[INF] 3, 1
	addw	ax,#010H	; 16 				;[INF] 3, 1
	movw	de,ax						;[INF] 1, 1
	call	$!bs_S0019					;[INF] 3, 3
; line   484
$DGL	0,5
	movw	ax,[hl+14]	; param_data 			;[INF] 2, 1
	push	ax						;[INF] 1, 1
	mov	a,[hl+12]	; param_len 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	movw	ax,[hl]	; func_addr 				;[INF] 1, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[hl+2]	; func_addr 			;[INF] 2, 1
	mov	CS,a						;[INF] 2, 1
	mov	a,[hl+4]	; param_id 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	call	de						;[INF] 2, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
	clrb	b						;[INF] 1, 1
; line   485
; line   485
$DGL	0,6
??ef_RBLE_User_Set_Params_call_func:
	addw	sp,#06H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_RBLE_User_Set_Params_call_func:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\�u�@��\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\arch\rl78\main.c
;
; $FUNC init_data_section_area(194)
;	void=(void)
;	CODE SIZE= 16 bytes, CLOCK_SIZE= 15 clocks, STACK_SIZE= 8 bytes
;
; $CALL memset(243)
;	bc=(pointer:ax, int:[sp+4], unsigned int:[sp+6])
;
; $FUNC main(248)
;	void=(void)
;	CODE SIZE= 115 bytes, CLOCK_SIZE= 117 clocks, STACK_SIZE= 14 bytes
;
; $CALL init_data_section_area(251)
;	void=(void)
;
; $CALL arch_main(376)
;	void=(void)
;
; $FUNC arch_main(420)
;	void=(void)
;	CODE SIZE= 23 bytes, CLOCK_SIZE= 37 clocks, STACK_SIZE= 14 bytes
;
; $CALL func_addr(424)
;	void=(void)
;
; $FUNC platform_reset(429)
;	void=(unsigned long error:ax,bc)
;	CODE SIZE= 35 bytes, CLOCK_SIZE= 45 clocks, STACK_SIZE= 18 bytes
;
; $CALL func_addr(433)
;	void=(unsigned long:ax,bc)
;
; $FUNC wakeup_init(439)
;	void=(void)
;	CODE SIZE= 1 bytes, CLOCK_SIZE= 6 clocks, STACK_SIZE= 0 bytes
;
; $FUNC sleep_cont(454)
;	bc=(void)
;	CODE SIZE= 28 bytes, CLOCK_SIZE= 40 clocks, STACK_SIZE= 14 bytes
;
; $CALL func_addr(458)
;	bc=(void)
;
; $FUNC peak_start(463)
;	void=(void)
;	CODE SIZE= 1 bytes, CLOCK_SIZE= 6 clocks, STACK_SIZE= 0 bytes
;
; $FUNC peak_end(472)
;	void=(void)
;	CODE SIZE= 1 bytes, CLOCK_SIZE= 6 clocks, STACK_SIZE= 0 bytes
;
; $FUNC RBLE_User_Set_Params_call_func(480)
;	bc=(unsigned char param_id:x, unsigned char param_len:[sp+4], 
;	    pointer param_data:[sp+6])
;	CODE SIZE= 44 bytes, CLOCK_SIZE= 50 clocks, STACK_SIZE= 16 bytes
;
; $CALL func_addr(484)
;	bc=(int:ax, int:[sp+4], pointer:[sp+6])

; Target chip : R5F11AGJ
; Device file : V1.20 
; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:33

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\QFlash
;             .c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_EX
;             MEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_RB
;             LE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMPL
;             E,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_H
;             OCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECLI
;             B -i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\.
;             .\src\driver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\..
;             \..\..\src\driver\dataflash\cs -i..\..\..\..\..\src\driver\datafl
;             ash -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i.
;             .\..\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\..
;             \..\..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\.
;             .\..\..\..\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf -
;             i..\..\..\..\..\src\driver\port -i..\..\..\..\..\src\driver\rf -i
;             ..\..\..\..\..\src\driver\uart -i..\..\..\..\..\src\driver\push_s
;             w -i..\..\..\..\..\src\driver\push_state -i..\..\..\..\..\src\dri
;             ver\pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..\
;             ..\bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i..
;             \..\..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src\
;             sample_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -zp
;             s -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\QFlash.c
; Asm-file  : DefaultBuild\QFlash.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 02H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		087H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, QFlash.c
$DGS	MOD_NAM, QFlash,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	STR_STR, _RBLE_BD_ADDR_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		019H
$DGS	MEB_STR, _addr,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	06H,	06H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		06H
$DGS	STR_STR, _RBLE_SET_ADV_PARAM_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 010H,		027H
$DGS	MEB_STR, _adv_intv_min,	00H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _adv_intv_max,	02H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _adv_type,	04H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _own_addr_type,	05H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _direct_addr_type,	06H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _direct_addr,	07H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	06H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _adv_chnl_map,	0DH,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _adv_filt_policy,	0EH,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _reserved,	0FH,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		010H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 019H,		010H
$DGS	STR_STR, _RBLE_ADV_DATA_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 01FH,		02DH
$DGS	MEB_STR, _data,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	01FH,	01FH,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		01FH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 027H,		01FH
$DGS	STR_STR, _RBLE_SET_ADV_DATA_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 020H,		034H
$DGS	MEB_STR, _adv_data_len,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _adv_data,	01H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 027H,		00H,	01FH,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		020H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 02DH,		020H
$DGS	STR_STR, _RBLE_SCAN_RSP_DATA_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 01FH,		03AH
$DGS	MEB_STR, _data,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	01FH,	01FH,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		01FH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 034H,		01FH
$DGS	STR_STR, _RBLE_SET_SCAN_RSP_DATA_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 020H,		041H
$DGS	MEB_STR, _scan_rsp_data_len,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _data,		01H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 034H,		00H,	01FH,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		020H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 03AH,		020H
$DGS	STR_STR, _RBLE_ADV_INFO_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 050H,		04BH
$DGS	MEB_STR, _adv_param,	00H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 019H,		00H,	010H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _adv_data,	010H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 02DH,		00H,	020H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _scan_rsp_data,	030H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 03AH,		00H,	020H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		050H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 041H,		050H
$DGS	STR_STR, .21fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0BH,		05AH
$DGS	MEB_STR, _Mark,		00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Adv_Interval,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Adv_Range,	02H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _LED_Switch,	03H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _LED_Color,	04H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _LED_Count,	05H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Sound_Switch,	06H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Sound_Count,	07H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Mod_Time,	08H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Auto_Rec,	09H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Auto_Rec_ID,	0AH,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		0BH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 04BH,		0BH
$DGS	STR_STR, .22fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 03H,		061H
$DGS	MEB_STR, _Mark,		00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Left_Button,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _Right_Button,	02H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		03H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 05AH,		03H
$DGS	GLV_SYM, _Write_Data_flash,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	06EH,	01H,	00H
$DGS	BEG_FUN, ??bf_Write_Data_flash,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 012H,		02H,	068H
$DGS	FUN_ARG, _Arr,		00H,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _id,		08H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	BEG_BLK, ??bb00_Write_Data_flash,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 016H,		00H,	00H
$DGS	END_BLK, ??eb00_Write_Data_flash,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01AH
$DGS	END_FUN, ??ef_Write_Data_flash,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01CH
$DGS	GLV_SYM, _Read_Data_flash,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	07BH,	01H,	00H
$DGS	BEG_FUN, ??bf_Read_Data_flash,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 02FH,		02H,	075H
$DGS	FUN_ARG, _Arr,		00H,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _id,		08H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	BEG_BLK, ??bb00_Read_Data_flash,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 015H,		00H,	00H
$DGS	END_BLK, ??eb00_Read_Data_flash,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 019H
$DGS	END_FUN, ??ef_Read_Data_flash,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01BH
$DGS	GLV_SYM, _Push_Data_to_G1D,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	081H,	01H,	00H
$DGS	BEG_FUN, ??bf_Push_Data_to_G1D,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 04BH,		00H,	081H
$DGS	END_FUN, ??ef_Push_Data_to_G1D,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 069H
$DGS	GLV_SYM, _Stop_Data_flash,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	087H,	01H,	00H
$DGS	BEG_FUN, ??bf_Stop_Data_flash,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0B4H,		00H,	087H
$DGS	END_FUN, ??ef_Stop_Data_flash,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 012H
$DGS	GLV_SYM, _L_Seting_Data,	U,	U,	08H,	026H,	01H,	00H
$DGS	AUX_STR, 04BH,		00H,	0BH,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _R_Seting_Data,	U,	U,	08H,	026H,	01H,	00H
$DGS	AUX_STR, 04BH,		00H,	0BH,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _ButtSet,	U,	U,	08H,	026H,	01H,	00H
$DGS	AUX_STR, 05AH,		00H,	03H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _temp,		U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	032H,	032H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _x,		U,	U,	0CH,	026H,	00H,	00H
$DGS	GLV_SYM, _Readtemp,	U,	U,	0CH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	032H,	032H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _dataflash_start,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _dataflash_rw,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _dataflash_stop,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _Eddystone_URL_N_flash,	U,	U,	08H,	02H,	01H,	00H
$DGS	AUX_STR, 041H,		00H,	050H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _Eddystone_URL_L_flash,	U,	U,	08H,	02H,	01H,	00H
$DGS	AUX_STR, 041H,		00H,	050H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _Eddystone_URL_R_flash,	U,	U,	08H,	02H,	01H,	00H
$DGS	AUX_STR, 041H,		00H,	050H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _Eddystone_UID_N_flash,	U,	U,	08H,	02H,	01H,	00H
$DGS	AUX_STR, 041H,		00H,	050H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _Eddystone_UID_L_flash,	U,	U,	08H,	02H,	01H,	00H
$DGS	AUX_STR, 041H,		00H,	050H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _Eddystone_UID_R_flash,	U,	U,	08H,	02H,	01H,	00H
$DGS	AUX_STR, 041H,		00H,	050H,	00H,	00H,	00H,	00H,	00H

	EXTRN	_dataflash_start
	EXTRN	_dataflash_rw
	EXTRN	_dataflash_stop
	EXTRN	_Eddystone_URL_N_flash
	EXTRN	_Eddystone_URL_L_flash
	EXTRN	_Eddystone_URL_R_flash
	EXTRN	_Eddystone_UID_N_flash
	EXTRN	_Eddystone_UID_L_flash
	EXTRN	_Eddystone_UID_R_flash
	PUBLIC	_L_Seting_Data
	PUBLIC	_R_Seting_Data
	PUBLIC	_ButtSet
	PUBLIC	_temp
	PUBLIC	_x
	PUBLIC	_Readtemp
	PUBLIC	_Write_Data_flash
	PUBLIC	_Read_Data_flash
	PUBLIC	_Push_Data_to_G1D
	PUBLIC	_Stop_Data_flash

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP
	DB	00H	; 0
	DB	(49)
	DB	00H	; 0
	DB	00H	; 0
	DB	(49)
	DB	(1)

@@INIT	DSEG	BASEP
_temp:	DS	(50)
_x:	DS	(1)
_Readtemp:	DS	(50)
	DS	(1)

@@DATA	DSEG	BASEP
_L_Seting_Data:	DS	(11)
	DS	(1)
_R_Seting_Data:	DS	(11)
	DS	(1)
_ButtSet:	DS	(3)
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
; line    27
; line    33
; line    60
; line    62
; line    63
; line    64
; line    71
; line    76
; line   108
; line   686
; line   689
; line   692
; line   711
; line   727
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
; line     8
; line     9
; line    10
; line    12
; line    13
; line    13
; line    14
; line    16
; line    18

@@CODEL	CSEG
_Write_Data_flash:
$DGL	1,97
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_Write_Data_flash:
; line    38
$DGL	0,21
	clrw	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_start				;[INF] 4, 3
	cmp0	c						;[INF] 1, 1
	bnz	$?L0003						;[INF] 2, 4
; line    39
??bb00_Write_Data_flash:
; line    40
$DGL	0,23
	movw	ax,[hl]	; Arr 					;[INF] 1, 1
	push	ax						;[INF] 1, 1
	mov	a,[hl+8]	; id 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	onew	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_rw					;[INF] 4, 3
	addw	sp,#06H	; 6 					;[INF] 2, 1
; line    42
$DGL	0,25
	clrw	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_stop				;[INF] 4, 3
??eb00_Write_Data_flash:
; line    43
?L0003:
; line    45
$DGL	0,28
??ef_Write_Data_flash:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_Write_Data_flash:
; line    47
_Read_Data_flash:
$DGL	1,110
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_Read_Data_flash:
; line    66
$DGL	0,20
	clrw	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_start				;[INF] 4, 3
	cmp0	c						;[INF] 1, 1
	bnz	$?L0007						;[INF] 2, 4
; line    67
??bb00_Read_Data_flash:
; line    68
$DGL	0,22
	movw	ax,[hl]	; Arr 					;[INF] 1, 1
	push	ax						;[INF] 1, 1
	mov	a,[hl+8]	; id 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_rw					;[INF] 4, 3
	addw	sp,#06H	; 6 					;[INF] 2, 1
; line    70
$DGL	0,24
	clrw	ax						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	call	!!_dataflash_stop				;[INF] 4, 3
??eb00_Read_Data_flash:
; line    71
?L0007:
; line    73
$DGL	0,27
??ef_Read_Data_flash:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_Read_Data_flash:
; line    75
_Push_Data_to_G1D:
$DGL	1,123
??bf_Push_Data_to_G1D:
; line    82
$DGL	0,8
	movw	ax,#09H	; 9 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_Eddystone_URL_N_flash)		;[INF] 3, 1
	call	!!_Read_Data_flash				;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line    83
$DGL	0,9
	movw	ax,#0DH	; 13 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_Eddystone_URL_L_flash)		;[INF] 3, 1
	call	!!_Read_Data_flash				;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line    84
$DGL	0,10
	movw	ax,#0EH	; 14 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_Eddystone_URL_R_flash)		;[INF] 3, 1
	call	!!_Read_Data_flash				;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line    86
$DGL	0,12
	movw	ax,#0AH	; 10 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_Eddystone_UID_N_flash)		;[INF] 3, 1
	call	!!_Read_Data_flash				;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line    87
$DGL	0,13
	movw	ax,#0BH	; 11 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_Eddystone_UID_L_flash)		;[INF] 3, 1
	call	!!_Read_Data_flash				;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line    88
$DGL	0,14
	movw	ax,#0CH	; 12 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_Eddystone_UID_R_flash)		;[INF] 3, 1
	call	!!_Read_Data_flash				;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line   179
$DGL	0,105
??ef_Push_Data_to_G1D:
	ret							;[INF] 1, 6
??ee_Push_Data_to_G1D:
; line   180
_Stop_Data_flash:
$DGL	1,129
??bf_Stop_Data_flash:
; line   197
$DGL	0,18
??ef_Stop_Data_flash:
	ret							;[INF] 1, 6
??ee_Stop_Data_flash:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\rBLE\src\sample_app\QFlash.c
;
; $FUNC Write_Data_flash(18)
;	void=(pointer Arr:ax, unsigned char id:[sp+4])
;	CODE SIZE= 40 bytes, CLOCK_SIZE= 39 clocks, STACK_SIZE= 14 bytes
;
; $CALL dataflash_start(38)
;	bc=(int:ax)
;
; $CALL dataflash_rw(40)
;	bc=(int:ax, int:[sp+4], int:[sp+6], pointer:[sp+8])
;
; $CALL dataflash_stop(42)
;	bc=(int:ax)
;
; $FUNC Read_Data_flash(47)
;	void=(pointer Arr:ax, unsigned char id:[sp+4])
;	CODE SIZE= 39 bytes, CLOCK_SIZE= 38 clocks, STACK_SIZE= 14 bytes
;
; $CALL dataflash_start(66)
;	bc=(int:ax)
;
; $CALL dataflash_rw(68)
;	bc=(int:ax, int:[sp+4], int:[sp+6], pointer:[sp+8])
;
; $CALL dataflash_stop(70)
;	bc=(int:ax)
;
; $FUNC Push_Data_to_G1D(75)
;	void=(void)
;	CODE SIZE= 73 bytes, CLOCK_SIZE= 48 clocks, STACK_SIZE= 6 bytes
;
; $CALL Read_Data_flash(82)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL Read_Data_flash(83)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL Read_Data_flash(84)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL Read_Data_flash(86)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL Read_Data_flash(87)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL Read_Data_flash(88)
;	void=(pointer:ax, int:[sp+4])
;
; $FUNC Stop_Data_flash(180)
;	void=(void)
;	CODE SIZE= 1 bytes, CLOCK_SIZE= 6 clocks, STACK_SIZE= 0 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:31

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\consol
;             e.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_E
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
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\console.c
; Asm-file  : DefaultBuild\console.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		0D1H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, console.c
$DGS	MOD_NAM, console,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	STR_STR, .21fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		028H
$DGS	MEB_STR, _len,		00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _buf,		01H,	0FFFFH,	02H,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	01H,	01H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 021H,		02H
$DGS	STR_STR, .22fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 014H,		036H
$DGS	MEB_STR, _rx_callback,	00H,	0FFFFH,	01H,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	MEB_STR, _tx_callback,	04H,	0FFFFH,	01H,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	MEB_STR, _err_callback,	08H,	0FFFFH,	01H,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	MEB_STR, _rx_first_byte_callback,	0CH,	0FFFFH,	0CH,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	MEB_STR, _rx_cmp_callback,	010H,	0FFFFH,	0CH,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	END_STR, .eos,		014H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 028H,		014H
$DGS	LAB_SYM, bs_S0048,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0048,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_F0046,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0046,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_F0047,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0047,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_F0045,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0045,	U,	U,	00H,	06H,	00H,	00H
$DGS	STA_SYM, _in_buf,	U,	U,	0CH,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	014H,	014H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _in_buf_pos,	U,	U,	0CH,	03H,	00H,	00H
$DGS	STA_SYM, _print_buf,	U,	U,	02H,	03H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	0C8H,	0C8H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _is_write_blocked,	U,	U,	0CH,	03H,	00H,	00H
$DGS	STA_SYM, _console_in_task_id,	U,	U,	0DH,	03H,	00H,	00H
$DGS	STA_SYM, _console_send_msg,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	04EH,	01H,	00H
$DGS	BEG_FUN, ??bf_console_send_msg,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 054H,		04H,	04EH
$DGS	AUT_VAR, _msg,		02H,	0FFFFH,	08H,	01H,	01H,	01H
$DGS	AUX_STR, 021H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _size,		00H,	0FFFFH,	0DH,	01H,	00H,	00H
$DGS	END_FUN, ??ef_console_send_msg,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0FH
$DGS	STA_SYM, _console_char_in,	U,	U,	04H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	072H,	01H,	00H
$DGS	BEG_FUN, ??bf_console_char_in,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 066H,		04H,	058H
$DGS	FUN_ARG, _msgid,	02H,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	FUN_ARG, _param,	0AH,	0FFFFH,	01H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _dest_id,	0CH,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	FUN_ARG, _src_id,	0EH,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	AUT_VAR, _key,		01H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	05CH
$DGS	END_BLK, ??eb00_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 09H
$DGS	BEG_BLK, ??bb01_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0AH,		00H,	060H
$DGS	END_BLK, ??eb01_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0DH
$DGS	BEG_BLK, ??bb02_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0EH,		00H,	062H
$DGS	BEG_BLK, ??bb03_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0FH,		00H,	068H
$DGS	END_BLK, ??eb03_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 012H
$DGS	END_BLK, ??eb02_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	BEG_BLK, ??bb04_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 014H,		00H,	06CH
$DGS	END_BLK, ??eb04_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb05_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 019H,		00H,	00H
$DGS	END_BLK, ??eb05_console_char_in,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01BH
$DGS	END_FUN, ??ef_console_char_in,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 020H
$DGS	STA_SYM, _console_char_in_invalid,	U,	U,	04H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	082H,	01H,	00H
$DGS	BEG_FUN, ??bf_console_char_in_invalid,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 089H,		04H,	07CH
$DGS	FUN_ARG, _msgid,	02H,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	FUN_ARG, _param,	0AH,	0FFFFH,	01H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _dest_id,	0CH,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	FUN_ARG, _src_id,	0EH,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	AUT_VAR, _key,		01H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_console_char_in_invalid,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 07H,		00H,	00H
$DGS	END_BLK, ??eb00_console_char_in_invalid,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	END_FUN, ??ef_console_char_in_invalid,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0FH
$DGS	STA_SYM, _console_rx_done,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	088H,	01H,	00H
$DGS	BEG_FUN, ??bf_console_rx_done,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 09AH,		00H,	088H
$DGS	END_FUN, ??ef_console_rx_done,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	STA_SYM, _console_tx_done,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	08EH,	01H,	00H
$DGS	BEG_FUN, ??bf_console_tx_done,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 09FH,		00H,	08EH
$DGS	END_FUN, ??ef_console_tx_done,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	STA_SYM, _console_rx_error,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	094H,	01H,	00H
$DGS	BEG_FUN, ??bf_console_rx_error,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0A4H,		00H,	094H
$DGS	END_FUN, ??ef_console_rx_error,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	GLV_SYM, _Printf,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0A2H,	01H,	00H
$DGS	BEG_FUN, ??bf_Printf,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0B3H,		04H,	09CH
$DGS	FUN_ARG, _fmt,		02H,	0FFFFH,	02H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _args,		00H,	0FFFFH,	02H,	01H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	BEG_BLK, ??bb00_Printf,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	00H
$DGS	END_BLK, ??eb00_Printf,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	END_FUN, ??ef_Printf,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 016H
$DGS	GLV_SYM, _console_can_sleep,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0A8H,	01H,	00H
$DGS	BEG_FUN, ??bf_console_can_sleep,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0D2H,		00H,	0A8H
$DGS	END_FUN, ??ef_console_can_sleep,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	GLV_SYM, _console_init,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0C2H,	01H,	00H
$DGS	BEG_FUN, ??bf_console_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0DEH,		016H,	0B0H
$DGS	FUN_ARG, _enable_in,	014H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _task_id,	01CH,	0FFFFH,	0DH,	09H,	00H,	00H
$DGS	AUT_VAR, _param,	00H,	0FFFFH,	08H,	01H,	01H,	00H
$DGS	AUX_STR, 028H,		00H,	014H,	00H,	00H,	00H,	00H,	00H
$DGS	BEG_BLK, ??bb00_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	0B4H
$DGS	END_BLK, ??eb00_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0CH
$DGS	BEG_BLK, ??bb01_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0CH,		00H,	0B8H
$DGS	END_BLK, ??eb01_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0EH
$DGS	BEG_BLK, ??bb02_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 014H,		00H,	0BCH
$DGS	END_BLK, ??eb02_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb03_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 017H,		00H,	00H
$DGS	END_BLK, ??eb03_console_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 019H
$DGS	END_FUN, ??ef_console_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01AH
$DGS	GLV_SYM, _console_enable_in,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0C8H,	01H,	00H
$DGS	BEG_FUN, ??bf_console_enable_in,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0100H,		00H,	0C8H
$DGS	END_FUN, ??ef_console_enable_in,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 04H
$DGS	GLV_SYM, _console_disable_in,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0CEH,	01H,	00H
$DGS	BEG_FUN, ??bf_console_disable_in,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 010CH,		00H,	0CEH
$DGS	END_FUN, ??ef_console_disable_in,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 04H
$DGS	STA_SYM, L0008,		?L0008,	U,	05002H,	03H,	00H,	03H
$DGS	STA_SYM, L0015,		?L0015,	U,	05002H,	03H,	00H,	03H
$DGS	STA_SYM, L0016,		?L0016,	U,	05002H,	03H,	00H,	03H
$DGS	GLV_SYM, _console_state,	U,	U,	0DH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	02H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _console_in_enable_handler,	U,	U,	08H,	026H,	01H,	03H
$DGS	AUX_STR, 013H,		00H,	06H,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _console_in_disable_handler,	U,	U,	08H,	026H,	01H,	03H
$DGS	AUX_STR, 013H,		00H,	06H,	01H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _console_state_handler,	U,	U,	05008H,	026H,	01H,	03H
$DGS	AUX_STR, 01AH,		00H,	08H,	02H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _console_default_handler,	U,	U,	05008H,	026H,	01H,	00H
$DGS	AUX_STR, 01AH,		00H,	04H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, ?ke_msg_alloc,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, ?ke_msg_send,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, ?ke_msg_send_basic,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _ke_state_set,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _serial_read,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _memcpy,	U,	U,	01H,	02H,	01H,	06H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	04H
$DGS	GLV_SYM, _vsprintf,	U,	U,	04H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _strlen,	U,	U,	0EH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _serial_write,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _serial_init,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H

	EXTRN	_ke_state_set
	EXTRN	_serial_read
	EXTRN	?ke_msg_alloc
	EXTRN	_memcpy
	EXTRN	?ke_msg_send
	EXTRN	?ke_msg_send_basic
	EXTRN	_vsprintf
	EXTRN	_strlen
	EXTRN	_serial_write
	EXTRN	_serial_init
	PUBLIC	_console_state
	PUBLIC	_console_in_enable_handler
	PUBLIC	_console_in_disable_handler
	PUBLIC	_console_state_handler
	PUBLIC	_console_default_handler
	PUBLIC	_Printf
	PUBLIC	_console_can_sleep
	PUBLIC	_console_init
	PUBLIC	_console_enable_in
	PUBLIC	_console_disable_in

@@BITS	BSEG

@@CNST	CSEG	MIRRORP
_console_state_handler:	DW	loww (_console_in_enable_handler)
	DW	01H	; 1
	DW	loww (_console_in_disable_handler)
	DW	01H	; 1
_console_default_handler:	DW	00H	; 0
	DW	00H	; 0
?L0008:	DB	0AH
	DB	00H
?L0015:	DB	'%c %c'
	DB	00H
?L0016:	DB	'%c'
	DB	00H
	DB	(1)

@@R_INIT	CSEG	UNIT64KP
	DW	04401H	; 17409
	DG	_console_char_in
	DW	04401H	; 17409
	DG	_console_char_in_invalid

@@INIT	DSEG	BASEP
_console_in_enable_handler:	DS	(6)
_console_in_disable_handler:	DS	(6)

@@DATA	DSEG	BASEP
_in_buf:	DS	(20)
_in_buf_pos:	DS	(1)
_print_buf:	DS	(200)
_is_write_blocked:	DS	(1)
_console_in_task_id:	DS	(2)
_console_state:	DS	(4)

@@R_INIS	CSEG	UNIT64KP

@@INIS	DSEG	SADDRP

@@DATS	DSEG	SADDRP

@@CNSTL	CSEG	PAGE64KP

@@RLINIT	CSEG	UNIT64KP

@@INITL	DSEG	UNIT64KP

@@DATAL	DSEG	UNIT64KP

@@CALT	CSEG	CALLT0

; Sub-Routines created by CC78K0R

@@CODEL	CSEG
bs_S0048:
	mov	b,!_in_buf_pos					;[INF] 3, 1
	mov	a,_in_buf[b]					;[INF] 3, 1
	mov	[hl+1],a					;[INF] 2, 1
	ret							;[INF] 1, 6
es_S0048:

@@CODEL	CSEG
bs_F0046:
	clrw	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	mov	x,#011H	; 17 					;[INF] 2, 1
	call	!!_ke_state_set					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
	ret							;[INF] 1, 6
es_F0046:

@@CODEL	CSEG
bs_F0047:
	onew	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	mov	x,#011H	; 17 					;[INF] 2, 1
	call	!!_ke_state_set					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
	ret							;[INF] 1, 6
es_F0047:

@@CODEL	CSEG
bs_F0045:
	onew	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	mov	x,!_in_buf_pos					;[INF] 3, 1
	addw	ax,#loww (_in_buf)				;[INF] 3, 1
	call	!!_serial_read					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
	ret							;[INF] 1, 6
es_F0045:

; *** Sub-Routine Information ***
;
; $SUB bs_F0045
;      CODE SIZE= 14 bytes
;
; $SUB bs_F0046
;      CODE SIZE= 10 bytes
;
; $SUB bs_F0047
;      CODE SIZE= 10 bytes
;
; $SUB bs_S0048
;      CODE SIZE= 9 bytes

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
; line    62
; line    67
; line    55
; line    56
; line    63
; line    82
; line    93
; line   104
; line   113
; line   120
; line    17
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
; line    29
; line    30
; line    31
; line    32
; line    33
; line    34
; line    35
; line    36
; line    37
; line    39
; line    40
; line    41
; line    42
; line    43
; line    44
; line    45
; line    46
; line    47
; line    50
; line    52
; line    58
; line    59
; line    60
; line    61
; line    62
; line    63
; line    65
; line    66
; line    69
; line    70
; line    73
; line    74
; line    75
; line    78
; line    84

@@CODEL	CSEG
_console_send_msg:
$DGL	1,69
	push	hl						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_console_send_msg:
; line    88
$DGL	0,5
	mov	x,!_in_buf_pos					;[INF] 3, 1
	clrb	a						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	movw	[hl],ax	; size 					;[INF] 1, 1
; line    91
$DGL	0,8
	push	ax						;[INF] 1, 1
	movw	ax,#011H	; 17 				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,!_console_in_task_id				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#04402H	; 17410 			;[INF] 3, 1
	callt	[?ke_msg_alloc]					;[INF] 2, 5
	addw	sp,#06H	; 6 					;[INF] 2, 1
	movw	ax,bc						;[INF] 1, 1
	movw	[hl+2],ax	; msg 				;[INF] 2, 1
; line    92
$DGL	0,9
	movw	de,ax						;[INF] 1, 1
	mov	a,!_in_buf_pos					;[INF] 3, 1
	mov	[de],a						;[INF] 1, 1
; line    93
$DGL	0,10
	mov	x,!_in_buf_pos					;[INF] 3, 1
	clrb	a						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	de,#loww (_in_buf)				;[INF] 3, 1
	push	de						;[INF] 1, 1
	movw	ax,[hl+2]	; msg 				;[INF] 2, 1
	incw	ax						;[INF] 1, 1
	call	!!_memcpy					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line    95
$DGL	0,12
	movw	ax,[hl+2]	; msg 				;[INF] 2, 1
	callt	[?ke_msg_send]					;[INF] 2, 5
; line    97
$DGL	0,14
	clrb	!_in_buf_pos					;[INF] 3, 1
; line    98
$DGL	0,15
??ef_console_send_msg:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_console_send_msg:
; line   102
_console_char_in:
$DGL	1,78
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_console_char_in:
; line   105
$DGL	0,4
	call	$!bs_S0048					;[INF] 3, 3
; line   107
$DGL	0,6
	cmp	a,#0DH	; 13 					;[INF] 2, 1
	bz	$?L0007						;[INF] 2, 4
	mov	a,[hl+1]	; key 				;[INF] 2, 1
	cmp	a,#0AH	; 10 					;[INF] 2, 1
	bnz	$?L0005						;[INF] 2, 4
?L0007:
??bb00_console_char_in:
; line   108
$DGL	0,7
	mov	a,[hl+1]	; key 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	movw	ax,#mirlw (?L0008)				;[INF] 3, 1
	call	!!_Printf					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line   109
$DGL	0,8
	call	!!_console_send_msg				;[INF] 4, 3
??eb00_console_char_in:
; line   111
$DGL	0,10
	br	$?L0012						;[INF] 2, 3
?L0005:
	mov	a,[hl+1]	; key 				;[INF] 2, 1
	cmp	a,#01BH	; 27 					;[INF] 2, 1
	bnz	$?L0009						;[INF] 2, 4
??bb01_console_char_in:
; line   112
$DGL	0,11
	inc	!_in_buf_pos					;[INF] 3, 2
; line   113
$DGL	0,12
	call	!!_console_send_msg				;[INF] 4, 3
??eb01_console_char_in:
; line   115
$DGL	0,14
	br	$?L0012						;[INF] 2, 3
?L0009:
	mov	a,[hl+1]	; key 				;[INF] 2, 1
	cmp	a,#08H	; 8 					;[INF] 2, 1
	bnz	$?L0011						;[INF] 2, 4
??bb02_console_char_in:
; line   116
$DGL	0,15
	cmp0	!_in_buf_pos					;[INF] 3, 1
	bz	$?L0012						;[INF] 2, 4
??bb03_console_char_in:
; line   117
$DGL	0,16
	movw	ax,#08H	; 8 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	ax,#mirlw (?L0015)				;[INF] 3, 1
	call	!!_Printf					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   118
$DGL	0,17
	dec	!_in_buf_pos					;[INF] 3, 2
??eb03_console_char_in:
; line   119
??eb02_console_char_in:
; line   121
$DGL	0,20
	br	$?L0012						;[INF] 2, 3
?L0011:
??bb04_console_char_in:
; line   122
$DGL	0,21
	mov	a,[hl+1]	; key 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	movw	ax,#mirlw (?L0016)				;[INF] 3, 1
	call	!!_Printf					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line   123
$DGL	0,22
	inc	!_in_buf_pos					;[INF] 3, 2
??eb04_console_char_in:
; line   124
?L0012:
; line   126
$DGL	0,25
	cmp	!_in_buf_pos,#014H	; 20 			;[INF] 4, 1
	skc							;[INF] 2, 1
??bb05_console_char_in:
; line   127
$DGL	0,26
	clrb	!_in_buf_pos					;[INF] 3, 1
??eb05_console_char_in:
; line   128
?L0017:
; line   130
$DGL	0,29
	call	$!bs_F0045					;[INF] 3, 3
; line   132
$DGL	0,31
	clrw	bc						;[INF] 1, 1
; line   133
; line   133
$DGL	0,32
??ef_console_char_in:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_console_char_in:
; line   137
_console_char_in_invalid:
$DGL	1,114
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_console_char_in_invalid:
; line   140
$DGL	0,4
	call	$!bs_S0048					;[INF] 3, 3
; line   143
$DGL	0,7
	cmp	a,#01BH	; 27 					;[INF] 2, 1
	bnz	$?L0021						;[INF] 2, 4
??bb00_console_char_in_invalid:
; line   144
$DGL	0,8
	call	$!bs_F0046					;[INF] 3, 3
; line   145
$DGL	0,9
	call	!!_console_send_msg				;[INF] 4, 3
??eb00_console_char_in_invalid:
; line   146
?L0021:
; line   148
$DGL	0,12
	call	$!bs_F0045					;[INF] 3, 3
; line   150
$DGL	0,14
	clrw	bc						;[INF] 1, 1
; line   151
; line   151
$DGL	0,15
??ef_console_char_in_invalid:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_console_char_in_invalid:
; line   154
_console_rx_done:
$DGL	1,130
??bf_console_rx_done:
; line   155
$DGL	0,2
	movw	ax,#011H	; 17 				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	ax,#04401H	; 17409 			;[INF] 3, 1
	callt	[?ke_msg_send_basic]				;[INF] 2, 5
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   156
$DGL	0,3
??ef_console_rx_done:
	ret							;[INF] 1, 6
??ee_console_rx_done:
; line   159
_console_tx_done:
$DGL	1,136
??bf_console_tx_done:
; line   160
$DGL	0,2
	clrb	!_is_write_blocked				;[INF] 3, 1
; line   161
$DGL	0,3
??ef_console_tx_done:
	ret							;[INF] 1, 6
??ee_console_tx_done:
; line   164
_console_rx_error:
$DGL	1,142
??bf_console_rx_error:
; line   165
$DGL	0,2
	call	$!bs_F0045					;[INF] 3, 3
; line   166
$DGL	0,3
??ef_console_rx_error:
	ret							;[INF] 1, 6
??ee_console_rx_error:
; line   179
_Printf:
$DGL	1,148
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_Printf:
; line   183
$DGL	0,5
	clrw	ax						;[INF] 1, 1
	movw	[hl],ax	; args 					;[INF] 1, 1
; line   186
$DGL	0,8
?L0031:
	cmp0	!_is_write_blocked				;[INF] 3, 1
	bnz	$?L0031						;[INF] 2, 4
??bb00_Printf:
??eb00_Printf:
; line   191
$DGL	0,13
	movw	ax,hl						;[INF] 1, 1
	addw	ax,#0AH						;[INF] 3, 1
	movw	[hl],ax	; args 					;[INF] 1, 1
; line   194
$DGL	0,16
	push	ax						;[INF] 1, 1
	movw	ax,[hl+2]	; fmt 				;[INF] 2, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_print_buf)				;[INF] 3, 1
	call	!!_vsprintf					;[INF] 4, 3
	addw	sp,#04H	; 4 					;[INF] 2, 1
; line   195
$DGL	0,17
	clrw	ax						;[INF] 1, 1
	movw	[hl],ax	; args 					;[INF] 1, 1
; line   197
$DGL	0,19
	oneb	!_is_write_blocked				;[INF] 3, 1
; line   199
$DGL	0,21
	movw	ax,#loww (_print_buf)				;[INF] 3, 1
	call	!!_strlen					;[INF] 4, 3
	push	bc						;[INF] 1, 1
	movw	ax,#loww (_print_buf)				;[INF] 3, 1
	call	!!_serial_write					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line   200
$DGL	0,22
??ef_Printf:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_Printf:
; line   210
_console_can_sleep:
$DGL	1,162
??bf_console_can_sleep:
; line   211
$DGL	0,2
	cmp	!_is_write_blocked,#01H	; 1 			;[INF] 4, 1
	clrw	ax						;[INF] 1, 1
	addc	x,a						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line   212
; line   212
$DGL	0,3
??ef_console_can_sleep:
	ret							;[INF] 1, 6
??ee_console_can_sleep:
; line   222
_console_init:
$DGL	1,168
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#014H					;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_console_init:
; line   225
$DGL	0,4
	movw	ax,#loww (_console_tx_done)			;[INF] 3, 1
	movw	[hl+4],ax	; param 			;[INF] 2, 1
	mov	[hl+6],#highw (_console_tx_done)		;[INF] 3, 1 ; param
; line   226
$DGL	0,5
	movw	ax,#loww (_console_rx_error)			;[INF] 3, 1
	movw	[hl+8],ax	; param 			;[INF] 2, 1
	mov	[hl+10],#highw (_console_rx_error)		;[INF] 3, 1 ; param
; line   227
$DGL	0,6
	clrw	ax						;[INF] 1, 1
	movw	[hl+16],ax	; param 			;[INF] 2, 1
	mov	[hl+18],a	; param 			;[INF] 2, 1
; line   229
$DGL	0,8
	mov	a,[hl+20]	; enable_in 			;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0037						;[INF] 2, 4
??bb00_console_init:
; line   230
$DGL	0,9
	movw	ax,#loww (_console_rx_done)			;[INF] 3, 1
	movw	[hl],ax	; param 				;[INF] 1, 1
	mov	[hl+2],#highw (_console_rx_done)		;[INF] 3, 1 ; param
; line   231
$DGL	0,10
	clrb	!_in_buf_pos					;[INF] 3, 1
; line   232
$DGL	0,11
	movw	ax,[hl+28]	; task_id 			;[INF] 2, 1
	movw	!_console_in_task_id,ax				;[INF] 3, 1
??eb00_console_init:
; line   233
$DGL	0,12
	br	$?L0038						;[INF] 2, 3
?L0037:
??bb01_console_init:
; line   234
$DGL	0,13
	clrw	ax						;[INF] 1, 1
	movw	[hl],ax	; param 				;[INF] 1, 1
	mov	[hl+2],a	; param 			;[INF] 2, 1
??eb01_console_init:
; line   235
?L0038:
; line   237
$DGL	0,16
	clrb	!_is_write_blocked				;[INF] 3, 1
; line   239
$DGL	0,18
	movw	ax,hl						;[INF] 1, 1
	call	!!_serial_init					;[INF] 4, 3
; line   241
$DGL	0,20
	mov	a,[hl+20]	; enable_in 			;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0039						;[INF] 2, 4
??bb02_console_init:
; line   242
$DGL	0,21
	onew	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	ax,#loww (_in_buf)				;[INF] 3, 1
	call	!!_serial_read					;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line   243
$DGL	0,22
	call	$!bs_F0046					;[INF] 3, 3
??eb02_console_init:
; line   244
$DGL	0,23
	br	$?L0040						;[INF] 2, 3
?L0039:
??bb03_console_init:
; line   245
$DGL	0,24
	call	$!bs_F0047					;[INF] 3, 3
??eb03_console_init:
; line   246
?L0040:
; line   247
$DGL	0,26
??ef_console_init:
	addw	sp,#016H					;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_console_init:
; line   256
_console_enable_in:
$DGL	1,194
??bf_console_enable_in:
; line   257
$DGL	0,2
	call	$!bs_F0046					;[INF] 3, 3
; line   258
$DGL	0,3
	call	$!bs_F0045					;[INF] 3, 3
; line   259
$DGL	0,4
??ef_console_enable_in:
	ret							;[INF] 1, 6
??ee_console_enable_in:
; line   268
_console_disable_in:
$DGL	1,200
??bf_console_disable_in:
; line   269
$DGL	0,2
	clrb	!_in_buf_pos					;[INF] 3, 1
; line   270
$DGL	0,3
	call	$!bs_F0047					;[INF] 3, 3
; line   271
$DGL	0,4
??ef_console_disable_in:
	ret							;[INF] 1, 6
??ee_console_disable_in:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\rBLE\src\sample_app\console.
;	c
;
; $FUNC console_send_msg(84)
;	void=(void)
;	CODE SIZE= 66 bytes, CLOCK_SIZE= 51 clocks, STACK_SIZE= 16 bytes
;
; $CALL ke_msg_alloc(91)
;	bc=(unsigned short:ax, unsigned short:[sp+4], unsigned short:[sp+6], 
;	    unsigned short:[sp+8])
;
; $CALL memcpy(93)
;	bc=(pointer:ax, pointer:[sp+4], unsigned int:[sp+6])
;
; $CALL ke_msg_send(95)
;	void=(pointer:ax)
;
; $FUNC console_char_in(102)
;	bc=(unsigned short msgid:ax, pointer param:[sp+4], 
;	    unsigned short dest_id:[sp+6], unsigned short src_id:[sp+8])
;	CODE SIZE= 116 bytes, CLOCK_SIZE= 118 clocks, STACK_SIZE= 16 bytes
;
; $CALL Printf(108)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL console_send_msg(109)
;	void=(void)
;
; $CALL console_send_msg(113)
;	void=(void)
;
; $CALL Printf(117)
;	void=(pointer:ax, int:[sp+4], int:[sp+6])
;
; $CALL Printf(122)
;	void=(pointer:ax, int:[sp+4])
;
; $CALL serial_read(130)
;	void=(pointer:ax, unsigned short:[sp+4])
;
; $FUNC console_char_in_invalid(137)
;	bc=(unsigned short msgid:ax, pointer param:[sp+4], 
;	    unsigned short dest_id:[sp+6], unsigned short src_id:[sp+8])
;	CODE SIZE= 28 bytes, CLOCK_SIZE= 66 clocks, STACK_SIZE= 16 bytes
;
; $CALL ke_state_set(144)
;	void=(unsigned short:ax, unsigned short:[sp+4])
;
; $CALL console_send_msg(145)
;	void=(void)
;
; $CALL serial_read(148)
;	void=(pointer:ax, unsigned short:[sp+4])
;
; $FUNC console_rx_done(154)
;	void=(void)
;	CODE SIZE= 13 bytes, CLOCK_SIZE= 16 clocks, STACK_SIZE= 8 bytes
;
; $CALL ke_msg_send_basic(155)
;	void=(unsigned short:ax, unsigned short:[sp+4], unsigned short:[sp+6])
;
; $FUNC console_tx_done(159)
;	void=(void)
;	CODE SIZE= 4 bytes, CLOCK_SIZE= 7 clocks, STACK_SIZE= 0 bytes
;
; $FUNC console_rx_error(164)
;	void=(void)
;	CODE SIZE= 4 bytes, CLOCK_SIZE= 23 clocks, STACK_SIZE= 10 bytes
;
; $CALL serial_read(165)
;	void=(pointer:ax, unsigned short:[sp+4])
;
; $FUNC Printf(179)
;	void=(pointer fmt:ax, ...:[sp+4])
;	CODE SIZE= 56 bytes, CLOCK_SIZE= 43 clocks, STACK_SIZE= 14 bytes
;
; $CALL vsprintf(194)
;	bc=(pointer:ax, pointer:[sp+4], pointer:[sp+6])
;
; $CALL serial_write(199)
;	void=(pointer:ax, unsigned short:[sp+4])
;
; $CALL strlen(199)
;	bc=(pointer:ax)
;
; $FUNC console_can_sleep(210)
;	bc=(void)
;	CODE SIZE= 9 bytes, CLOCK_SIZE= 10 clocks, STACK_SIZE= 0 bytes
;
; $FUNC console_init(222)
;	void=(unsigned char enable_in:x, unsigned short task_id:[sp+4])
;	CODE SIZE= 89 bytes, CLOCK_SIZE= 92 clocks, STACK_SIZE= 34 bytes
;
; $CALL serial_init(239)
;	void=(pointer:ax)
;
; $CALL serial_read(242)
;	void=(pointer:ax, unsigned short:[sp+4])
;
; $CALL ke_state_set(243)
;	void=(unsigned short:ax, unsigned short:[sp+4])
;
; $CALL ke_state_set(245)
;	void=(unsigned short:ax, unsigned short:[sp+4])
;
; $FUNC console_enable_in(256)
;	void=(void)
;	CODE SIZE= 7 bytes, CLOCK_SIZE= 39 clocks, STACK_SIZE= 10 bytes
;
; $CALL ke_state_set(257)
;	void=(unsigned short:ax, unsigned short:[sp+4])
;
; $CALL serial_read(258)
;	void=(pointer:ax, unsigned short:[sp+4])
;
; $FUNC console_disable_in(268)
;	void=(void)
;	CODE SIZE= 7 bytes, CLOCK_SIZE= 23 clocks, STACK_SIZE= 10 bytes
;
; $CALL ke_state_set(270)
;	void=(unsigned short:ax, unsigned short:[sp+4])

; Target chip : R5F11AGJ
; Device file : V1.20 

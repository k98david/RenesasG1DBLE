; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:27

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\driver\uart\uart.c -oDefa
;             ultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_EXMEM_NOT_P
;             RESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_RBLE,CFG_US
;             E_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMPLE,USE_SAM
;             PLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_HOCO_8MHZ,
;             CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECLIB -i..\..
;             \..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\..\src\dri
;             ver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\..\..\..\sr
;             c\driver\dataflash\cs -i..\..\..\..\..\src\driver\dataflash -i..\
;             ..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i..\..\..\.
;             .\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\..\..\..\..
;             \src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\..\..\..\.
;             .\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf -i..\..\..
;             \..\..\src\driver\port -i..\..\..\..\..\src\driver\rf -i..\..\..\
;             ..\..\src\driver\uart -i..\..\..\..\..\src\driver\push_sw -i..\..
;             \..\..\..\src\driver\push_state -i..\..\..\..\..\src\driver\pktmo
;             n -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..\..\bleip\
;             src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i..\..\..\..
;             \..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src\sample_ap
;             p\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -zps -mm -mi
;             0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\src\driver\uart\uart.c
; Asm-file  : DefaultBuild\uart.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 02H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		0B4H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, uart.c
$DGS	MOD_NAM, uart,		00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, UARTDATA,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNSTL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@RLINIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INITL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATAL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CALT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, UARTCODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, UARTBASE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@VECT1A,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@VECT22,	U,	U,	00H,	078H,	00H,	00H
$DGS	STR_STR, .7fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 014H,		023H
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
$DGS	AUX_EOS, 015H,		014H
$DGS	STA_SYM, _stop_flg,	U,	U,	0CH,	03H,	00H,	00H
$DGS	STA_SYM, _uart_callback,	U,	U,	08H,	03H,	01H,	00H
$DGS	AUX_STR, 015H,		00H,	014H,	00H,	00H,	00H,	00H,	00H
$DGS	STA_SYM, _uart_port_init,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	02CH,	01H,	00H
$DGS	BEG_FUN, ??bf_uart_port_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 011EH,		00H,	02CH
$DGS	END_FUN, ??ef_uart_port_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	STA_SYM, _dma0_init,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	032H,	01H,	00H
$DGS	BEG_FUN, ??bf_dma0_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0138H,		00H,	032H
$DGS	END_FUN, ??ef_dma0_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	STA_SYM, _dma1_init,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	038H,	01H,	00H
$DGS	BEG_FUN, ??bf_dma1_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0152H,		00H,	038H
$DGS	END_FUN, ??ef_dma1_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	GLV_SYM, _serial_init,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	040H,	01H,	00H
$DGS	BEG_FUN, ??bf_serial_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 016DH,		02H,	040H
$DGS	REG_PAR, _param,	0103H,	0FFFFH,	0108H,	011H,	01H,	01H
$DGS	AUX_STR, 015H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_FUN, ??ef_serial_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 076H
$DGS	GLV_SYM, _serial_read,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	04DH,	01H,	00H
$DGS	BEG_FUN, ??bf_serial_read,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0219H,		02H,	047H
$DGS	FUN_ARG, _bufptr,	00H,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _size,		08H,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	BEG_BLK, ??bb00_serial_read,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0AH,		00H,	00H
$DGS	END_BLK, ??eb00_serial_read,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	END_FUN, ??ef_serial_read,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	GLV_SYM, _serial_write,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	066H,	01H,	00H
$DGS	BEG_FUN, ??bf_serial_write,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 022FH,		02H,	054H
$DGS	FUN_ARG, _bufptr,	00H,	0FFFFH,	0CH,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _size,		08H,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	BEG_BLK, ??bb00_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 03H,		00H,	058H
$DGS	END_BLK, ??eb00_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	BEG_BLK, ??bb01_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	05AH
$DGS	BEG_BLK, ??bb02_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	05EH
$DGS	END_BLK, ??eb02_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05H
$DGS	BEG_BLK, ??bb03_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0EH,		00H,	00H
$DGS	END_BLK, ??eb03_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 018H
$DGS	END_BLK, ??eb01_serial_write,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01AH
$DGS	END_FUN, ??ef_serial_write,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01BH
$DGS	GLV_SYM, _serial_stop_ready,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	075H,	01H,	00H
$DGS	BEG_FUN, ??bf_serial_stop_ready,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0253H,		02H,	06BH
$DGS	REG_VAR, _ret,		06H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_serial_stop_ready,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 09H,		00H,	06DH
$DGS	BEG_BLK, ??bb01_serial_stop_ready,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0EH,		00H,	00H
$DGS	END_BLK, ??eb01_serial_stop_ready,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 023H
$DGS	END_BLK, ??eb00_serial_stop_ready,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 024H
$DGS	END_FUN, ??ef_serial_stop_ready,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 027H
$DGS	GLV_SYM, _serial_stop_finish,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	08BH,	01H,	00H
$DGS	BEG_FUN, ??bf_serial_stop_finish,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0281H,		00H,	079H
$DGS	BEG_BLK, ??bb00_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 010H,		00H,	07BH
$DGS	BEG_BLK, ??bb01_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 013H,		00H,	081H
$DGS	END_BLK, ??eb01_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 016H
$DGS	END_BLK, ??eb00_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01AH
$DGS	BEG_BLK, ??bb02_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01CH,		00H,	085H
$DGS	END_BLK, ??eb02_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 021H
$DGS	BEG_BLK, ??bb03_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 023H,		00H,	00H
$DGS	END_BLK, ??eb03_serial_stop_finish,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 025H
$DGS	END_FUN, ??ef_serial_stop_finish,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 02AH
$DGS	GLV_SYM, _dma0_isr,	U,	U,	0E001H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	095H,	00H,	00H
$DGS	BEG_FUN, ??bf_dma0_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 02DBH,		00H,	08FH
$DGS	BEG_BLK, ??bb00_dma0_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 035H,		00H,	00H
$DGS	END_BLK, ??eb00_dma0_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 047H
$DGS	END_FUN, ??ef_dma0_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 069H
$DGS	GLV_SYM, _dma1_isr,	U,	U,	0E001H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0A3H,	00H,	00H
$DGS	BEG_FUN, ??bf_dma1_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0354H,		00H,	099H
$DGS	BEG_BLK, ??bb00_dma1_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01FH,		00H,	09BH
$DGS	BEG_BLK, ??bb01_dma1_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 025H,		00H,	00H
$DGS	END_BLK, ??eb01_dma1_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 028H
$DGS	END_BLK, ??eb00_dma1_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 029H
$DGS	END_FUN, ??ef_dma1_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 049H
$DGS	GLV_SYM, _st0_isr,	U,	U,	0E001H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0ADH,	00H,	00H
$DGS	BEG_FUN, ??bf_st0_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 03B1H,		016H,	0A7H
$DGS	BEG_BLK, ??bb00_st0_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01DH,		00H,	00H
$DGS	END_BLK, ??eb00_st0_isr,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 024H
$DGS	END_FUN, ??ef_st0_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 02BH
$DGS	GLV_SYM, _sre0_isr,	U,	U,	0E001H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0B4H,	00H,	00H
$DGS	BEG_FUN, ??bf_sre0_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 03F0H,		018H,	0B4H
$DGS	AUT_VAR, _trash_data,	01H,	0FFFFH,	0100CH,	01H,	00H,	00H
$DGS	END_FUN, ??ef_sre0_isr,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01AH
$DGS	GLV_SYM, _@vect1a,	U,	U,	00H,	026H,	00H,	00H
$DGS	GLV_SYM, _@vect1c,	U,	U,	00H,	026H,	00H,	00H
$DGS	GLV_SYM, _@vect1e,	U,	U,	00H,	026H,	00H,	00H
$DGS	GLV_SYM, _@vect22,	U,	U,	00H,	026H,	00H,	00H
$DGS	GLV_SYM, _@SEGAX,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _@SEGDE,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _@RTARG0,	U,	U,	00H,	02H,	00H,	00H

	EXTRN	_@SEGAX
	EXTRN	_@SEGDE
	EXTRN	_@RTARG0
	PUBLIC	_sre0_isr
	PUBLIC	_st0_isr
	PUBLIC	_dma1_isr
	PUBLIC	_dma0_isr
	PUBLIC	_serial_init
	PUBLIC	_serial_read
	PUBLIC	_serial_write
	PUBLIC	_serial_stop_ready
	PUBLIC	_serial_stop_finish
	PUBLIC	_@vect1a
	PUBLIC	_@vect1c
	PUBLIC	_@vect1e
	PUBLIC	_@vect22

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

UARTDATA	DSEG	BASEP
_stop_flg:	DS	(1)
	DS	(1)
_uart_callback:	DS	(20)

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
; line    55
; line    56
; line    63
; line   135
; line   142
; line   149
; line   263
; line   270
; line   286

UARTCODE	CSEG
_uart_port_init:
$DGL	1,38
??bf_uart_port_init:
; line   289
$DGL	0,4
	clr1	PM1.2						;[INF] 3, 2
; line   291
$DGL	0,6
	clr1	!POM1.2						;[INF] 4, 2
; line   293
$DGL	0,8
	set1	P1.2						;[INF] 3, 2
; line   297
$DGL	0,12
	oneb	!NFEN0						;[INF] 3, 1
; line   299
$DGL	0,14
	set1	PM1.1						;[INF] 3, 2
; line   301
$DGL	0,16
	clr1	!PIM1.1						;[INF] 4, 2
; line   303
$DGL	0,18
	set1	!PU1.1						;[INF] 4, 2
; line   304
$DGL	0,19
??ef_uart_port_init:
	ret							;[INF] 1, 6
??ee_uart_port_init:
; line   312
_dma0_init:
$DGL	1,44
??bf_dma0_init:
; line   314
$DGL	0,3
	set1	DRC0.7						;[INF] 3, 2
; line   317
$DGL	0,6
	mov	DSA0,#012H	; 18 				;[INF] 3, 1
; line   320
$DGL	0,9
	clr1	DMC0.6						;[INF] 3, 2
; line   321
$DGL	0,10
	clr1	DMC0.5						;[INF] 3, 2
; line   322
$DGL	0,11
	clr1	DMC0.4						;[INF] 3, 2
; line   325
$DGL	0,14
	mov	a,DMC0						;[INF] 2, 1
	or	a,#07H	; 7 					;[INF] 2, 1
	mov	DMC0,a						;[INF] 2, 1
; line   328
$DGL	0,17
	clr1	IF0H.3						;[INF] 3, 2
; line   329
$DGL	0,18
	clr1	MK0H.3						;[INF] 3, 2
; line   330
$DGL	0,19
??ef_dma0_init:
	ret							;[INF] 1, 6
??ee_dma0_init:
; line   338
_dma1_init:
$DGL	1,50
??bf_dma1_init:
; line   340
$DGL	0,3
	set1	DRC1.7						;[INF] 3, 2
; line   343
$DGL	0,6
	mov	DSA1,#010H	; 16 				;[INF] 3, 1
; line   346
$DGL	0,9
	set1	DMC1.6						;[INF] 3, 2
; line   347
$DGL	0,10
	clr1	DMC1.5						;[INF] 3, 2
; line   348
$DGL	0,11
	clr1	DMC1.4						;[INF] 3, 2
; line   351
$DGL	0,14
	mov	a,DMC1						;[INF] 2, 1
	or	a,#06H	; 6 					;[INF] 2, 1
	mov	DMC1,a						;[INF] 2, 1
; line   354
$DGL	0,17
	clr1	IF0H.4						;[INF] 3, 2
; line   355
$DGL	0,18
	clr1	MK0H.4						;[INF] 3, 2
; line   356
$DGL	0,19
??ef_dma1_init:
	ret							;[INF] 1, 6
??ee_dma1_init:
; line   365
_serial_init:
$DGL	1,56
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_serial_init:
; line   366
$DGL	0,2
	movw	ax,hl						;[INF] 1, 1
	movw	de,ax						;[INF] 1, 1
	clrw	bc						;[INF] 1, 1
	mov	x,#014H	; 20 					;[INF] 2, 1
?L0009:
	mov	a,[de]						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	mov	_uart_callback[bc],a				;[INF] 3, 1
	incw	bc						;[INF] 1, 1
	dec	x						;[INF] 1, 1
	bnz	$?L0009						;[INF] 2, 4
; line   369
$DGL	0,5
	mov	!ST0L,#03H	; 3 				;[INF] 4, 1
; line   372
$DGL	0,8
	set1	!PER0.2						;[INF] 4, 2
; line   375
$DGL	0,11
	nop							;[INF] 1, 1
; line   376
$DGL	0,12
	nop							;[INF] 1, 1
; line   377
$DGL	0,13
	nop							;[INF] 1, 1
; line   378
$DGL	0,14
	nop							;[INF] 1, 1
; line   398
$DGL	0,34
	mov	a,!SPS0L					;[INF] 3, 1
	or	a,#02H	; 2 					;[INF] 2, 1
	mov	!SPS0L,a					;[INF] 3, 1
; line   399
$DGL	0,35
	movw	SDR00,#03300H	; 13056 			;[INF] 4, 1
; line   400
$DGL	0,36
	movw	SDR01,#03300H	; 13056 			;[INF] 4, 1
; line   416
$DGL	0,52
	oneb	!_stop_flg					;[INF] 3, 1
; line   427
$DGL	0,63
	movw	ax,#022H	; 34 				;[INF] 3, 1
	movw	!SMR00,ax					;[INF] 3, 1
; line   430
$DGL	0,66
	oneb	a						;[INF] 1, 1
	movw	!SMR01,ax					;[INF] 3, 1
; line   433
$DGL	0,69
	movw	ax,#08097H	; -32617 			;[INF] 3, 1
	movw	!SCR00,ax					;[INF] 3, 1
; line   434
$DGL	0,70
	mov	a,#044H	; 68 					;[INF] 2, 1
	movw	!SCR01,ax					;[INF] 3, 1
; line   437
$DGL	0,73
	clrb	!SOL0L						;[INF] 3, 1
; line   440
$DGL	0,76
	movw	ax,#0F0FH	; 3855 				;[INF] 3, 1
	movw	!SO0,ax						;[INF] 3, 1
; line   443
$DGL	0,79
	mov	a,!SOE0L					;[INF] 3, 1
	or	a,#01H	; 1 					;[INF] 2, 1
	mov	!SOE0L,a					;[INF] 3, 1
; line   446
$DGL	0,82
	call	!!_uart_port_init				;[INF] 4, 3
; line   449
$DGL	0,85
	mov	!SIR01L,#07H	; 7 				;[INF] 4, 1
; line   453
$DGL	0,89
	set1	PR10H.5						;[INF] 3, 2
; line   454
$DGL	0,90
	clr1	PR00H.5						;[INF] 3, 2
; line   455
$DGL	0,91
	set1	PR10H.4						;[INF] 3, 2
; line   456
$DGL	0,92
	clr1	PR00H.4						;[INF] 3, 2
; line   459
$DGL	0,95
	clr1	IF0H.6						;[INF] 3, 2
; line   460
$DGL	0,96
	clr1	IF0H.7						;[INF] 3, 2
; line   463
$DGL	0,99
	set1	MK0H.5						;[INF] 3, 2
; line   464
$DGL	0,100
	set1	MK0H.6						;[INF] 3, 2
; line   465
$DGL	0,101
	clr1	MK0H.7						;[INF] 3, 2
; line   468
$DGL	0,104
	call	!!_dma0_init					;[INF] 4, 3
; line   471
$DGL	0,107
	call	!!_dma1_init					;[INF] 4, 3
; line   479
$DGL	0,115
	mov	a,!SS0L						;[INF] 3, 1
	or	a,#03H	; 3 					;[INF] 2, 1
	mov	!SS0L,a						;[INF] 3, 1
; line   481
; line   482
; line   482
$DGL	0,118
??ef_serial_init:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_serial_init:
; line   537
_serial_read:
$DGL	1,64
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_serial_read:
; line   546
$DGL	0,10
??bb00_serial_read:
	clr1	DRC0.0						;[INF] 3, 2
	movw	ax,[hl]	; bufptr 				;[INF] 1, 1
	movw	DRA0,ax						;[INF] 2, 1
	movw	ax,[hl+8]	; size 				;[INF] 2, 1
	movw	DBC0,ax						;[INF] 2, 1
	set1	DRC0.0						;[INF] 3, 2
??eb00_serial_read:
; line   547
$DGL	0,11
??ef_serial_read:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_serial_read:
; line   559
_serial_write:
$DGL	1,77
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_serial_write:
; line   561
$DGL	0,3
??bb00_serial_write:
	clr1	DRC1.0						;[INF] 3, 2
	movw	ax,[hl]	; bufptr 				;[INF] 1, 1
	movw	DRA1,ax						;[INF] 2, 1
	movw	ax,[hl+8]	; size 				;[INF] 2, 1
	movw	DBC1,ax						;[INF] 2, 1
??eb00_serial_write:
; line   563
$DGL	0,5
?L0014:
??bb01_serial_write:
PUSH PSW
??bb02_serial_write:
	di							;[INF] 3, 4
??eb02_serial_write:
; line   572
??bb03_serial_write:
; line   578
$DGL	0,20
	set1	DRC1.0						;[INF] 3, 2
; line   581
$DGL	0,23
	set1	DMC1.7						;[INF] 3, 2
??eb03_serial_write:
; line   584
$DGL	0,26
POP PSW
??eb01_serial_write:
?L0016:
?L0015:
; line   585
$DGL	0,27
??ef_serial_write:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_serial_write:
; line   595
_serial_stop_ready:
$DGL	1,102
	push	hl						;[INF] 1, 1
??bf_serial_stop_ready:
; line   596
$DGL	0,2
	mov	l,#00H	; 0 					;[INF] 2, 1
; line   599
$DGL	0,5
	mov	a,!SOE0L					;[INF] 3, 1
	and	a,#01H	; 1 					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0019						;[INF] 2, 4
	onew	bc						;[INF] 1, 1
	br	$?L0018						;[INF] 2, 3
?L0019:
; line   602
$DGL	0,8
	cmp0	!_stop_flg					;[INF] 3, 1
	bz	$?L0023						;[INF] 2, 4
; line   603
??bb00_serial_stop_ready:
; line   607
$DGL	0,13
	mov	a,!SSR01L					;[INF] 3, 1
	and	a,#060H	; 96 					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0023						;[INF] 2, 4
	bt	IF0H.6,$?L0023					;[INF] 4, 5
	bt	IF0H.7,$?L0023					;[INF] 4, 5
; line   608
??bb01_serial_stop_ready:
; line   616
$DGL	0,22
	mov	!ST0L,#03H	; 3 				;[INF] 4, 1
; line   617
$DGL	0,23
	clrb	!SSC0L						;[INF] 3, 1
; line   618
$DGL	0,24
	oneb	!SSC0L						;[INF] 3, 1
; line   619
$DGL	0,25
	mov	!SS0L,#03H	; 3 				;[INF] 4, 1
; line   622
$DGL	0,28
	clr1	MK0H.6						;[INF] 3, 2
; line   626
$DGL	0,32
	clr1	DRC0.0						;[INF] 3, 2
; line   628
$DGL	0,34
	mov	l,#01H	; 1 					;[INF] 2, 1
??eb01_serial_stop_ready:
; line   629
?L0023:
??eb00_serial_stop_ready:
; line   630
; line   632
$DGL	0,38
	movw	ax,hl						;[INF] 1, 1
	clrb	a						;[INF] 1, 1
	movw	bc,ax						;[INF] 1, 1
; line   633
?L0018:
; line   633
$DGL	0,39
??ef_serial_stop_ready:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_serial_stop_ready:
; line   641
_serial_stop_finish:
$DGL	1,117
??bf_serial_stop_finish:
; line   643
$DGL	0,3
	mov	a,!SOE0L					;[INF] 3, 1
	and	a,#01H	; 1 					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0026						;[INF] 2, 4
; line   646
$DGL	0,6
	set1	DRC0.0						;[INF] 3, 2
; line   655
$DGL	0,15
	bf	IF0H.6,$?L0029					;[INF] 4, 5
; line   656
??bb00_serial_stop_finish:
; line   658
$DGL	0,18
	bt	IF0H.7,$?L0031					;[INF] 4, 5
; line   659
??bb01_serial_stop_finish:
; line   661
$DGL	0,21
	set1	DMC0.7						;[INF] 3, 2
??eb01_serial_stop_finish:
; line   662
?L0031:
; line   665
$DGL	0,25
	clr1	IF0H.6						;[INF] 3, 2
??eb00_serial_stop_finish:
; line   667
$DGL	0,27
	br	$?L0033						;[INF] 2, 3
?L0029:
	mov	a,!SSR01L					;[INF] 3, 1
	and	a,#040H	; 64 					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0033						;[INF] 2, 4
; line   668
??bb02_serial_stop_finish:
; line   670
$DGL	0,30
	mov	!ST0L,#03H	; 3 				;[INF] 4, 1
; line   671
$DGL	0,31
	clrb	!SSC0L						;[INF] 3, 1
; line   672
$DGL	0,32
	mov	!SS0L,#03H	; 3 				;[INF] 4, 1
??eb02_serial_stop_finish:
; line   674
?L0033:
; line   675
??bb03_serial_stop_finish:
??eb03_serial_stop_finish:
; line   677
; line   680
$DGL	0,40
	set1	MK0H.6						;[INF] 3, 2
; line   682
?L0026:
; line   682
$DGL	0,42
??ef_serial_stop_finish:
	ret							;[INF] 1, 6
??ee_serial_stop_finish:
; line   731

UARTBASE	CSEG	BASE
_dma0_isr:
$DGL	1,139
??bf_dma0_isr:
; line   734
$DGL	0,5
    push    ax
$DGL	0,6
    push    bc
$DGL	0,7
    push    de
$DGL	0,8
    push    hl
$DGL	0,9
    movw    de,#_@SEGAX
$DGL	0,10
    movw    ax,[de+0AH]
$DGL	0,11
    push    ax
$DGL	0,12
    movw    ax,[de+08H]
$DGL	0,13
    push    ax
$DGL	0,14
    movw    ax,[de+06H]
$DGL	0,15
    push    ax
$DGL	0,16
    movw    ax,[de+04H]
$DGL	0,17
    push    ax
$DGL	0,18
    movw    ax,[de+02H]
$DGL	0,19
    push    ax
$DGL	0,20
    movw    ax,[de+00H]
$DGL	0,21
    push    ax
$DGL	0,22
    mov     a,ES
$DGL	0,23
    mov     x,a
$DGL	0,24
    mov     a,CS
$DGL	0,25
    push    ax
$DGL	0,26
    ; line   783
??bb00_dma0_isr:
; line   785
$DGL	0,55
	movw	ax,!_uart_callback				;[INF] 3, 1
	or	a,x						;[INF] 2, 1
	or	a,!_uart_callback+2				;[INF] 3, 1
	bz	$?L0037						;[INF] 2, 4
	mov	a,!_uart_callback+2				;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_uart_callback				;[INF] 3, 1
	call	ax						;[INF] 2, 3
?L0037:
?L0038:
??eb00_dma0_isr:
; line   807
$DGL	0,77
	clr1	IF0H.6						;[INF] 3, 2
; line   811
$DGL	0,82
    pop     ax
$DGL	0,83
    mov     CS,a
$DGL	0,84
    mov     a,x
$DGL	0,85
    mov     ES,a
$DGL	0,86
    movw    de,#_@SEGAX
$DGL	0,87
    pop     ax
$DGL	0,88
    movw    [de],ax
$DGL	0,89
    pop     ax
$DGL	0,90
    movw    [de+02H],ax
$DGL	0,91
    pop     ax
$DGL	0,92
    movw    [de+04H],ax
$DGL	0,93
    pop     ax
$DGL	0,94
    movw    [de+06H],ax
$DGL	0,95
    pop     ax
$DGL	0,96
    movw    [de+08H],ax
$DGL	0,97
    pop     ax
$DGL	0,98
    movw    [de+0AH],ax
$DGL	0,99
    pop     hl
$DGL	0,100
    pop     de
$DGL	0,101
    pop     bc
$DGL	0,102
    pop     ax
$DGL	0,103
    ; line   835
$DGL	0,105
??ef_dma0_isr:
	reti							;[INF] 2, 6
??ee_dma0_isr:
; line   852
_dma1_isr:
$DGL	1,149
??bf_dma1_isr:
; line   855
$DGL	0,5
    push    ax
$DGL	0,6
    push    bc
$DGL	0,7
    push    de
$DGL	0,8
    push    hl
$DGL	0,9
    movw    de,#_@SEGAX
$DGL	0,10
    movw    ax,[de+0AH]
$DGL	0,11
    push    ax
$DGL	0,12
    movw    ax,[de+08H]
$DGL	0,13
    push    ax
$DGL	0,14
    movw    ax,[de+06H]
$DGL	0,15
    push    ax
$DGL	0,16
    movw    ax,[de+04H]
$DGL	0,17
    push    ax
$DGL	0,18
    movw    ax,[de+02H]
$DGL	0,19
    push    ax
$DGL	0,20
    movw    ax,[de+00H]
$DGL	0,21
    push    ax
$DGL	0,22
    mov     a,ES
$DGL	0,23
    mov     x,a
$DGL	0,24
    mov     a,CS
$DGL	0,25
    push    ax
$DGL	0,26
    ; line   881
$DGL	0,30
	mov	a,!SSR00L					;[INF] 3, 1
	and	a,#060H	; 96 					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0041						;[INF] 2, 4
; line   882
??bb00_dma1_isr:
; line   884
$DGL	0,33
	clr1	IF0H.5						;[INF] 3, 2
; line   887
$DGL	0,36
	mov	a,!SSR00L					;[INF] 3, 1
	and	a,#060H	; 96 					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	sknz							;[INF] 2, 1
; line   888
??bb01_dma1_isr:
; line   890
$DGL	0,39
	set1	IF0H.5						;[INF] 3, 2
??eb01_dma1_isr:
; line   891
?L0043:
?L0044:
??eb00_dma1_isr:
; line   892
?L0041:
?L0042:
; line   894
$DGL	0,43
	clr1	MK0H.5						;[INF] 3, 2
; line   900
$DGL	0,50
    pop     ax
$DGL	0,51
    mov     CS,a
$DGL	0,52
    mov     a,x
$DGL	0,53
    mov     ES,a
$DGL	0,54
    movw    de,#_@SEGAX
$DGL	0,55
    pop     ax
$DGL	0,56
    movw    [de],ax
$DGL	0,57
    pop     ax
$DGL	0,58
    movw    [de+02H],ax
$DGL	0,59
    pop     ax
$DGL	0,60
    movw    [de+04H],ax
$DGL	0,61
    pop     ax
$DGL	0,62
    movw    [de+06H],ax
$DGL	0,63
    pop     ax
$DGL	0,64
    movw    [de+08H],ax
$DGL	0,65
    pop     ax
$DGL	0,66
    movw    [de+0AH],ax
$DGL	0,67
    pop     hl
$DGL	0,68
    pop     de
$DGL	0,69
    pop     bc
$DGL	0,70
    pop     ax
$DGL	0,71
    ; line   924
$DGL	0,73
??ef_dma1_isr:
	reti							;[INF] 2, 6
??ee_dma1_isr:
; line   945
_st0_isr:
$DGL	1,163
	push	ax						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	de						;[INF] 1, 1
	push	hl						;[INF] 1, 1
	mov	c,#0CH						;[INF] 2, 1
	dec	c						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	movw	ax,_@SEGAX[c]					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	bnz	$$-6						;[INF] 2, 4
	mov	a,ES						;[INF] 2, 1
	mov	x,a						;[INF] 1, 1
	mov	a,CS						;[INF] 2, 1
	push	ax						;[INF] 1, 1
??bf_st0_isr:
; line   973
??bb00_st0_isr:
; line   979
$DGL	0,35
	movw	ax,!_uart_callback+4				;[INF] 3, 1
	or	a,x						;[INF] 2, 1
	or	a,!_uart_callback+6				;[INF] 3, 1
	bz	$?L0047						;[INF] 2, 4
	mov	a,!_uart_callback+6				;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_uart_callback+4				;[INF] 3, 1
	call	ax						;[INF] 2, 3
?L0047:
??eb00_st0_isr:
; line   986
$DGL	0,42
	set1	MK0H.5						;[INF] 3, 2
; line   987
$DGL	0,43
??ef_st0_isr:
	pop	ax						;[INF] 1, 1
	mov	CS,a						;[INF] 2, 1
	mov	a,x						;[INF] 1, 1
	mov	ES,a						;[INF] 2, 1
	movw	de,#_@SEGAX					;[INF] 3, 1
	mov	c,#06H						;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	movw	[de],ax						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	bnz	$$-5						;[INF] 2, 4
	pop	hl						;[INF] 1, 1
	pop	de						;[INF] 1, 1
	pop	bc						;[INF] 1, 1
	pop	ax						;[INF] 1, 1
	reti							;[INF] 2, 6
??ee_st0_isr:
; line  1008
_sre0_isr:
$DGL	1,173
	push	ax						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	de						;[INF] 1, 1
	push	hl						;[INF] 1, 1
	mov	c,#0CH						;[INF] 2, 1
	dec	c						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	movw	ax,_@SEGAX[c]					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	bnz	$$-6						;[INF] 2, 4
	mov	a,ES						;[INF] 2, 1
	mov	x,a						;[INF] 1, 1
	mov	a,CS						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_sre0_isr:
; line  1012
$DGL	0,5
	clr1	DRC0.0						;[INF] 3, 2
; line  1019
$DGL	0,12
	movw	ax,!_uart_callback+8				;[INF] 3, 1
	or	a,x						;[INF] 2, 1
	or	a,!_uart_callback+10				;[INF] 3, 1
	bz	$?L0051						;[INF] 2, 4
	mov	a,!_uart_callback+10				;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_uart_callback+8				;[INF] 3, 1
	call	ax						;[INF] 2, 3
?L0051:
; line  1025
$DGL	0,18
	clr1	IF0H.3						;[INF] 3, 2
; line  1026
$DGL	0,19
	clr1	IF0H.6						;[INF] 3, 2
; line  1029
$DGL	0,22
	mov	a,RXD0						;[INF] 2, 1
	mov	[hl+1],a	; trash_data 			;[INF] 2, 1
; line  1032
$DGL	0,25
	mov	!SIR01L,#07H	; 7 				;[INF] 4, 1
; line  1033
$DGL	0,26
??ef_sre0_isr:
	pop	ax						;[INF] 1, 1
	pop	ax						;[INF] 1, 1
	mov	CS,a						;[INF] 2, 1
	mov	a,x						;[INF] 1, 1
	mov	ES,a						;[INF] 2, 1
	movw	de,#_@SEGAX					;[INF] 3, 1
	mov	c,#06H						;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	movw	[de],ax						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	bnz	$$-5						;[INF] 2, 4
	pop	hl						;[INF] 1, 1
	pop	de						;[INF] 1, 1
	pop	bc						;[INF] 1, 1
	pop	ax						;[INF] 1, 1
	reti							;[INF] 2, 6
??ee_sre0_isr:

@@VECT1A	CSEG	AT    001AH
_@vect1a:
	DW	_dma0_isr
_@vect1c:
	DW	_dma1_isr
_@vect1e:
	DW	_st0_isr

@@VECT22	CSEG	AT    0022H
_@vect22:
	DW	_sre0_isr

@@CODE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\driver\uart\uart
;	.c
;
; $FUNC uart_port_init(286)
;	void=(void)
;	CODE SIZE= 25 bytes, CLOCK_SIZE= 19 clocks, STACK_SIZE= 0 bytes
;
; $FUNC dma0_init(312)
;	void=(void)
;	CODE SIZE= 28 bytes, CLOCK_SIZE= 22 clocks, STACK_SIZE= 0 bytes
;
; $FUNC dma1_init(338)
;	void=(void)
;	CODE SIZE= 28 bytes, CLOCK_SIZE= 22 clocks, STACK_SIZE= 0 bytes
;
; $FUNC serial_init(365)
;	void=(pointer param:ax)
;	CODE SIZE= 138 bytes, CLOCK_SIZE= 80 clocks, STACK_SIZE= 6 bytes
;
; $CALL uart_port_init(446)
;	void=(void)
;
; $CALL dma0_init(468)
;	void=(void)
;
; $CALL dma1_init(471)
;	void=(void)
;
; $FUNC serial_read(537)
;	void=(pointer bufptr:ax, unsigned short size:[sp+4])
;	CODE SIZE= 21 bytes, CLOCK_SIZE= 19 clocks, STACK_SIZE= 4 bytes
;
; $FUNC serial_write(559)
;	void=(pointer bufptr:ax, unsigned short size:[sp+4])
;	CODE SIZE= 27 bytes, CLOCK_SIZE= 25 clocks, STACK_SIZE= 4 bytes
;
; $FUNC serial_stop_ready(595)
;	bc=(void)
;	CODE SIZE= 62 bytes, CLOCK_SIZE= 54 clocks, STACK_SIZE= 2 bytes
;
; $FUNC serial_stop_finish(641)
;	void=(void)
;	CODE SIZE= 50 bytes, CLOCK_SIZE= 44 clocks, STACK_SIZE= 0 bytes
;
; $FUNC dma0_isr(731)
;	void=(void)
;	CODE SIZE= 25 bytes, CLOCK_SIZE= 21 clocks, STACK_SIZE= 4 bytes
;
; $CALL uart_callback(785)
;	void=(void)
;
; $FUNC dma1_isr(852)
;	void=(void)
;	CODE SIZE= 27 bytes, CLOCK_SIZE= 23 clocks, STACK_SIZE= 0 bytes
;
; $FUNC st0_isr(945)
;	void=(void)
;	CODE SIZE= 67 bytes, CLOCK_SIZE= 57 clocks, STACK_SIZE= 26 bytes
;
; $CALL uart_callback(979)
;	void=(void)
;
; $FUNC sre0_isr(1008)
;	void=(void)
;	CODE SIZE= 86 bytes, CLOCK_SIZE= 67 clocks, STACK_SIZE= 28 bytes
;
; $CALL uart_callback(1019)
;	void=(void)

; Target chip : R5F11AGJ
; Device file : V1.20 

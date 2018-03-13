; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:28

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\driver\wakeup\wakeup.c -o
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
; In-file   : ..\..\..\..\..\src\driver\wakeup\wakeup.c
; Asm-file  : DefaultBuild\wakeup.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		025H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, wakeup.c
$DGS	MOD_NAM, wakeup,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	GLV_SYM, _wakeup_init_ent,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	019H,	01H,	00H
$DGS	BEG_FUN, ??bf_wakeup_init_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 04DH,		00H,	019H
$DGS	END_FUN, ??ef_wakeup_init_ent,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 019H
$DGS	GLV_SYM, _wakeup_ready,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01FH,	01H,	00H
$DGS	BEG_FUN, ??bf_wakeup_ready,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 06FH,		00H,	01FH
$DGS	END_FUN, ??ef_wakeup_ready,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01BH
$DGS	GLV_SYM, _wakeup_finish,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	025H,	01H,	00H
$DGS	BEG_FUN, ??bf_wakeup_finish,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 091H,		00H,	025H
$DGS	END_FUN, ??ef_wakeup_finish,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01FH
$DGS	GLV_SYM, _serial_stop_ready,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _serial_stop_finish,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H

	EXTRN	_serial_stop_ready
	EXTRN	_serial_stop_finish
	PUBLIC	_wakeup_init_ent
	PUBLIC	_wakeup_ready
	PUBLIC	_wakeup_finish

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

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
; line    49
; line    55
; line    56
; line    63
; line    82
; line    93
; line   104
; line   113
; line   120
; line    77

@@CODEL	CSEG
_wakeup_init_ent:
$DGL	1,19
??bf_wakeup_init_ent:
; line   101
$DGL	0,25
??ef_wakeup_init_ent:
	ret							;[INF] 1, 6
??ee_wakeup_init_ent:
; line   111
_wakeup_ready:
$DGL	1,25
??bf_wakeup_ready:
; line   135
$DGL	0,25
	call	!!_serial_stop_ready				;[INF] 4, 3
	clrb	b						;[INF] 1, 1
; line   137
; line   137
$DGL	0,27
??ef_wakeup_ready:
	ret							;[INF] 1, 6
??ee_wakeup_ready:
; line   145
_wakeup_finish:
$DGL	1,31
??bf_wakeup_finish:
; line   173
$DGL	0,29
	br	!!_serial_stop_finish				;[INF] 4, 3
??ef_wakeup_finish:
??ee_wakeup_finish:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\�u�@��\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\driver\wakeup\wa
;	keup.c
;
; $FUNC wakeup_init_ent(77)
;	void=(void)
;	CODE SIZE= 1 bytes, CLOCK_SIZE= 6 clocks, STACK_SIZE= 0 bytes
;
; $FUNC wakeup_ready(111)
;	bc=(void)
;	CODE SIZE= 6 bytes, CLOCK_SIZE= 10 clocks, STACK_SIZE= 4 bytes
;
; $CALL serial_stop_ready(135)
;	bc=(void)
;
; $FUNC wakeup_finish(145)
;	void=(void)
;	CODE SIZE= 4 bytes, CLOCK_SIZE= 3 clocks, STACK_SIZE= 0 bytes
;
; $CALL serial_stop_finish(173)
;	void=(void)

; Target chip : R5F11AGJ
; Device file : V1.20 

; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:24

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\arch\rl78\fw_update_count
;             0.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_E
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
; In-file   : ..\..\..\..\..\src\arch\rl78\fw_update_count0.c
; Asm-file  : DefaultBuild\fw_update_count0.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		013H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, fw_update_count0.c
$DGS	MOD_NAM, fw_update_count0,	00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATA,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, MAIN_CN0,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@RLINIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INITL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATAL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CALT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODEL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@BASE,	U,	U,	00H,	078H,	00H,	00H
$DGS	GLV_SYM, _fw_update_count_0,	U,	U,	0D00DH,	026H,	00H,	00H

	PUBLIC	_fw_update_count_0

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

@@DATA	DSEG	BASEP

@@R_INIS	CSEG	UNIT64KP

@@INIS	DSEG	SADDRP

@@DATS	DSEG	SADDRP

MAIN_CN0	CSEG	PAGE64KP
_fw_update_count_0:	DW	00H	; 0

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
; line    26

@@CODE	CSEG	BASE

@@CODEL	CSEG

@@BASE	CSEG	BASE
	END


; *** Code Information ***

; Target chip : R5F11AGJ
; Device file : V1.20 

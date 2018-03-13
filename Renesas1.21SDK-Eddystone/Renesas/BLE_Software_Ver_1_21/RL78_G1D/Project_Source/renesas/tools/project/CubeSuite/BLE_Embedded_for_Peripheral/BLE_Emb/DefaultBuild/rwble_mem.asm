; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:23

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\arch\rl78\rwble_mem.c -oD
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
; In-file   : ..\..\..\..\..\src\arch\rl78\rwble_mem.c
; Asm-file  : DefaultBuild\rwble_mem.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		019H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, rwble_mem.c
$DGS	MOD_NAM, rwble_mem,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	GLV_SYM, _rwble_set_mem,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	019H,	01H,	00H
$DGS	BEG_FUN, ??bf_rwble_set_mem,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 032H,		00H,	019H
$DGS	END_FUN, ??ef_rwble_set_mem,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0FH
$DGS	GLV_SYM, _rwble_set_mem_cont,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _rwble_set_mem_gap_func,	U,	U,	05001H,	02H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	GLV_SYM, _rwble_set_mem_l2cap_func,	U,	U,	05001H,	02H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	GLV_SYM, _rwble_set_mem_gatt_func,	U,	U,	05001H,	02H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	GLV_SYM, _rwble_set_mem_att_func,	U,	U,	05001H,	02H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	GLV_SYM, _rwble_set_mem_smp_func,	U,	U,	05001H,	02H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H

	EXTRN	_rwble_set_mem_cont
	EXTRN	_rwble_set_mem_gap_func
	EXTRN	_rwble_set_mem_l2cap_func
	EXTRN	_rwble_set_mem_gatt_func
	EXTRN	_rwble_set_mem_att_func
	EXTRN	_rwble_set_mem_smp_func
	PUBLIC	_rwble_set_mem

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
; line    33
; line    39
; line    40
; line    41
; line    42
; line    43
; line    45
; line    53
; line    54
; line    50

@@CODEL	CSEG
_rwble_set_mem:
$DGL	1,19
??bf_rwble_set_mem:
; line    51
$DGL	0,2
	call	!!_rwble_set_mem_cont				;[INF] 4, 3
; line    54
$DGL	0,5
	mov	a,!_rwble_set_mem_gap_func+2			;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_rwble_set_mem_gap_func			;[INF] 3, 1
	call	ax						;[INF] 2, 3
; line    57
$DGL	0,8
	mov	a,!_rwble_set_mem_l2cap_func+2			;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_rwble_set_mem_l2cap_func			;[INF] 3, 1
	call	ax						;[INF] 2, 3
; line    59
$DGL	0,10
	mov	a,!_rwble_set_mem_gatt_func+2			;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_rwble_set_mem_gatt_func			;[INF] 3, 1
	call	ax						;[INF] 2, 3
; line    61
$DGL	0,12
	mov	a,!_rwble_set_mem_att_func+2			;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_rwble_set_mem_att_func			;[INF] 3, 1
	call	ax						;[INF] 2, 3
; line    63
$DGL	0,14
	mov	a,!_rwble_set_mem_smp_func+2			;[INF] 3, 1
	mov	CS,a						;[INF] 2, 1
	movw	ax,!_rwble_set_mem_smp_func			;[INF] 3, 1
	br	ax						;[INF] 2, 3
??ef_rwble_set_mem:
??ee_rwble_set_mem:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\arch\rl78\rwble_
;	mem.c
;
; $FUNC rwble_set_mem(50)
;	void=(void)
;	CODE SIZE= 54 bytes, CLOCK_SIZE= 33 clocks, STACK_SIZE= 4 bytes
;
; $CALL rwble_set_mem_cont(51)
;	void=(void)
;
; $CALL rwble_set_mem_gap_func(54)
;	void=(void)
;
; $CALL rwble_set_mem_l2cap_func(57)
;	void=(void)
;
; $CALL rwble_set_mem_gatt_func(59)
;	void=(void)
;
; $CALL rwble_set_mem_att_func(61)
;	void=(void)
;
; $CALL rwble_set_mem_smp_func(63)
;	void=(void)

; Target chip : R5F11AGJ
; Device file : V1.20 

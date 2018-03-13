; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:31

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\driver\led_onoff\led_onof
;             f.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_E
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
; In-file   : ..\..\..\..\..\src\driver\led_onoff\led_onoff.c
; Asm-file  : DefaultBuild\led_onoff.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		04BH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, led_onoff.c
$DGS	MOD_NAM, led_onoff,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	ENM_TAG, .7fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		019H
$DGS	MEB_ENM, _R_LED3,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _R_LED4,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		01H
$DGS	ENM_TAG, .8fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		01FH
$DGS	MEB_ENM, _R_LED_STATE_OFF,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _R_LED_STATE_ON,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 019H,		01H
$DGS	LAB_SYM, bs_S0029,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0029,	U,	U,	00H,	06H,	00H,	00H
$DGS	GLV_SYM, _led_onoff_init,	U,	U,	04H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	02DH,	01H,	00H
$DGS	BEG_FUN, ??bf_led_onoff_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 02CH,		02H,	027H
$DGS	REG_PAR, _led,		06H,	0FFFFH,	010AH,	011H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	BEG_BLK, ??bb00_led_onoff_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 02H,		00H,	00H
$DGS	END_BLK, ??eb00_led_onoff_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 010H
$DGS	END_FUN, ??ef_led_onoff_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	GLV_SYM, _led_onoff_set,	U,	U,	04H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	03CH,	01H,	00H
$DGS	BEG_FUN, ??bf_led_onoff_set,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 041H,		04H,	036H
$DGS	FUN_ARG, _led,		02H,	0FFFFH,	0AH,	09H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	FUN_ARG, _state,	0AH,	0FFFFH,	0AH,	09H,	01H,	00H
$DGS	AUX_STR, 019H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	AUT_VAR, _set,		01H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_led_onoff_set,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	00H
$DGS	END_BLK, ??eb00_led_onoff_set,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 011H
$DGS	END_FUN, ??ef_led_onoff_set,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 014H
$DGS	GLV_SYM, _led_onoff_state,	U,	U,	04H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	04BH,	01H,	00H
$DGS	BEG_FUN, ??bf_led_onoff_state,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 057H,		04H,	045H
$DGS	FUN_ARG, _led,		02H,	0FFFFH,	0AH,	09H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	FUN_ARG, _state,	0AH,	0FFFFH,	0AH,	09H,	01H,	01H
$DGS	AUX_STR, 019H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _val,		00H,	0FFFFH,	0DH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_led_onoff_state,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 04H,		00H,	00H
$DGS	END_BLK, ??eb00_led_onoff_state,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0FH
$DGS	END_FUN, ??ef_led_onoff_state,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 014H

	PUBLIC	_led_onoff_init
	PUBLIC	_led_onoff_set
	PUBLIC	_led_onoff_state

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

; Sub-Routines created by CC78K0R

@@CODEL	CSEG
bs_S0029:
	mov	a,[hl+2]					;[INF] 2, 1
	sarw	ax,8						;[INF] 2, 1
	onew	bc						;[INF] 1, 1
	subw	ax,#00H	; 0 					;[INF] 3, 1
	ret							;[INF] 1, 6
es_S0029:

; *** Sub-Routine Information ***
;
; $SUB bs_S0029
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
; line    40
; line    45
; line    44

@@CODEL	CSEG
_led_onoff_init:
$DGL	1,33
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_led_onoff_init:
; line    45
$DGL	0,2
	mov	a,l						;[INF] 1, 1
	sarw	ax,8						;[INF] 2, 1
	onew	bc						;[INF] 1, 1
	subw	ax,#00H	; 0 					;[INF] 3, 1
	bz	$?L0004						;[INF] 2, 4
	subw	ax,bc						;[INF] 1, 1
	bz	$?L0005						;[INF] 2, 4
	br	$?L0006						;[INF] 2, 3
??bb00_led_onoff_init:
; line    46
?L0004:
; line    47
$DGL	0,4
	clr1	PM0.3						;[INF] 3, 2
; line    48
$DGL	0,5
	clr1	!PMC0.3						;[INF] 4, 2
; line    49
$DGL	0,6
	set1	P0.3						;[INF] 3, 2
; line    50
$DGL	0,7
	br	$?L0003						;[INF] 2, 3
; line    52
?L0005:
; line    53
$DGL	0,10
	clr1	PM6.0						;[INF] 3, 2
; line    54
$DGL	0,11
	set1	P6.0						;[INF] 3, 2
; line    55
$DGL	0,12
	br	$?L0003						;[INF] 2, 3
; line    57
?L0006:
; line    58
$DGL	0,15
	clrw	bc						;[INF] 1, 1
	decw	bc						;[INF] 1, 1
	br	$?L0002						;[INF] 2, 3
??eb00_led_onoff_init:
; line    59
?L0003:
; line    61
$DGL	0,18
	clrw	bc						;[INF] 1, 1
; line    62
?L0002:
; line    62
$DGL	0,19
??ef_led_onoff_init:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_led_onoff_init:
; line    65
_led_onoff_set:
$DGL	1,45
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_led_onoff_set:
; line    68
$DGL	0,4
	mov	a,[hl+10]	; state 			;[INF] 2, 1
	dec	a						;[INF] 1, 1
	bnz	$?L0011						;[INF] 2, 4
	clrw	ax						;[INF] 1, 1
	br	$?L0012						;[INF] 2, 3
?L0011:
	onew	ax						;[INF] 1, 1
?L0012:
	mov	a,x						;[INF] 1, 1
	mov	[hl+1],a	; set 				;[INF] 2, 1
; line    70
$DGL	0,6
	call	$!bs_S0029					;[INF] 3, 3
	bz	$?L0014						;[INF] 2, 4
	subw	ax,bc						;[INF] 1, 1
	bz	$?L0015						;[INF] 2, 4
	br	$?L0016						;[INF] 2, 3
??bb00_led_onoff_set:
; line    71
?L0014:
; line    72
$DGL	0,8
	mov	a,[hl+1]	; set 				;[INF] 2, 1
	mov1	CY,a.0						;[INF] 2, 1
	mov1	P0.3,CY						;[INF] 3, 2
; line    73
$DGL	0,9
	br	$?L0013						;[INF] 2, 3
; line    75
?L0015:
; line    76
$DGL	0,12
	mov	a,[hl+1]	; set 				;[INF] 2, 1
	mov1	CY,a.0						;[INF] 2, 1
	mov1	P6.0,CY						;[INF] 3, 2
; line    77
$DGL	0,13
	br	$?L0013						;[INF] 2, 3
; line    79
?L0016:
; line    80
$DGL	0,16
	clrw	bc						;[INF] 1, 1
	decw	bc						;[INF] 1, 1
	br	$?L0010						;[INF] 2, 3
??eb00_led_onoff_set:
; line    81
?L0013:
; line    83
$DGL	0,19
	clrw	bc						;[INF] 1, 1
; line    84
?L0010:
; line    84
$DGL	0,20
??ef_led_onoff_set:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_led_onoff_set:
; line    87
_led_onoff_state:
$DGL	1,60
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_led_onoff_state:
; line    90
$DGL	0,4
	call	$!bs_S0029					;[INF] 3, 3
	bz	$?L0022						;[INF] 2, 4
	subw	ax,bc						;[INF] 1, 1
	bz	$?L0023						;[INF] 2, 4
	br	$?L0024						;[INF] 2, 3
??bb00_led_onoff_state:
; line    91
?L0022:
; line    92
$DGL	0,6
	clrw	ax						;[INF] 1, 1
	mov1	CY,P0.3						;[INF] 3, 1
	addc	x,a						;[INF] 2, 1
	movw	[hl],ax	; val 					;[INF] 1, 1
; line    93
$DGL	0,7
	br	$?L0021						;[INF] 2, 3
; line    95
?L0023:
; line    96
$DGL	0,10
	clrw	ax						;[INF] 1, 1
	mov1	CY,P6.0						;[INF] 3, 1
	addc	x,a						;[INF] 2, 1
	movw	[hl],ax	; val 					;[INF] 1, 1
; line    97
$DGL	0,11
	br	$?L0021						;[INF] 2, 3
; line    99
?L0024:
; line   100
$DGL	0,14
	clrw	bc						;[INF] 1, 1
	decw	bc						;[INF] 1, 1
	br	$?L0020						;[INF] 2, 3
??eb00_led_onoff_state:
; line   101
?L0021:
; line   103
$DGL	0,17
	clrw	ax						;[INF] 1, 1
	cmpw	ax,[hl+0]	; val 				;[INF] 3, 1
	bnz	$?L0027						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0028						;[INF] 2, 3
?L0027:
	clrw	ax						;[INF] 1, 1
?L0028:
	xch	a,x						;[INF] 1, 1
	mov	c,a						;[INF] 1, 1
	xch	a,x						;[INF] 1, 1
	movw	ax,[hl+10]	; state 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,c						;[INF] 1, 1
	mov	[de],a						;[INF] 1, 1
; line   105
$DGL	0,19
	clrw	bc						;[INF] 1, 1
; line   106
?L0020:
; line   106
$DGL	0,20
??ef_led_onoff_state:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_led_onoff_state:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\driver\led_onoff
;	\led_onoff.c
;
; $FUNC led_onoff_init(44)
;	bc=(char led:x)
;	CODE SIZE= 43 bytes, CLOCK_SIZE= 47 clocks, STACK_SIZE= 2 bytes
;
; $FUNC led_onoff_set(65)
;	bc=(char led:x, char state:[sp+4])
;	CODE SIZE= 55 bytes, CLOCK_SIZE= 70 clocks, STACK_SIZE= 10 bytes
;
; $FUNC led_onoff_state(87)
;	bc=(char led:x, pointer state:[sp+4])
;	CODE SIZE= 61 bytes, CLOCK_SIZE= 75 clocks, STACK_SIZE= 10 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

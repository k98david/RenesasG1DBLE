; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:28

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\driver\plf\plf.c -oDefaul
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
; In-file   : ..\..\..\..\..\src\driver\plf\plf.c
; Asm-file  : DefaultBuild\plf.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 02H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		05CH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, plf.c
$DGS	MOD_NAM, plf,		00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, CLK_TBL,	U,	U,	00H,	078H,	00H,	00H
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
$DGS	SEC_NAM, PLF_CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@BASE,	U,	U,	00H,	078H,	00H,	00H
$DGS	STA_SYM, _plf_timer_wait,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	025H,	01H,	00H
$DGS	BEG_FUN, ??bf_plf_timer_wait,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0AEH,		06H,	01BH
$DGS	FUN_ARG, _div,		04H,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	FUN_ARG, _cnt,		0CH,	0FFFFH,	0500DH,	09H,	00H,	00H
$DGS	AUT_VAR, _tau0en,	03H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	AUT_VAR, _tps0,		00H,	0FFFFH,	0DH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_plf_timer_wait,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0AH,		00H,	01DH
$DGS	BEG_BLK, ??bb01_plf_timer_wait,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0AH,		00H,	00H
$DGS	END_BLK, ??eb01_plf_timer_wait,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	END_BLK, ??eb00_plf_timer_wait,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 022H
$DGS	END_FUN, ??ef_plf_timer_wait,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 023H
$DGS	STA_SYM, _plf_irq_init,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	02BH,	01H,	00H
$DGS	BEG_FUN, ??bf_plf_irq_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0D9H,		00H,	02BH
$DGS	END_FUN, ??ef_plf_irq_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0EH
$DGS	STA_SYM, _plf_clkoutput_init,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	036H,	01H,	00H
$DGS	BEG_FUN, ??bf_plf_clkoutput_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0EEH,		02H,	030H
$DGS	REG_PAR, _plf_flg,	06H,	0FFFFH,	0510CH,	011H,	00H,	00H
$DGS	BEG_BLK, ??bb00_plf_clkoutput_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 04H,		00H,	00H
$DGS	END_BLK, ??eb00_plf_clkoutput_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0EH
$DGS	END_FUN, ??ef_plf_clkoutput_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01AH
$DGS	STA_SYM, _plf_port_init,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	03CH,	01H,	00H
$DGS	BEG_FUN, ??bf_plf_port_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 010FH,		00H,	03CH
$DGS	END_FUN, ??ef_plf_port_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 030H
$DGS	GLV_SYM, _plf_init,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	048H,	01H,	00H
$DGS	BEG_FUN, ??bf_plf_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0141H,		02H,	042H
$DGS	REG_PAR, _plf_flg,	06H,	0FFFFH,	0510CH,	011H,	00H,	00H
$DGS	REG_VAR, _op_byte,	07H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	BEG_BLK, ??bb00_plf_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05CH,		00H,	00H
$DGS	END_BLK, ??eb00_plf_init,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05FH
$DGS	END_FUN, ??ef_plf_init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 062H
$DGS	GLV_SYM, _plf_hoco_start,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	052H,	01H,	00H
$DGS	BEG_FUN, ??bf_plf_hoco_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01A5H,		00H,	04CH
$DGS	BEG_BLK, ??bb00_plf_hoco_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	00H
$DGS	END_BLK, ??eb00_plf_hoco_start,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	END_FUN, ??ef_plf_hoco_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 011H
$DGS	GLV_SYM, _plf_hoco_stop,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	05CH,	01H,	00H
$DGS	BEG_FUN, ??bf_plf_hoco_stop,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 01B8H,		00H,	056H
$DGS	BEG_BLK, ??bb00_plf_hoco_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	00H
$DGS	END_BLK, ??eb00_plf_hoco_stop,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	END_FUN, ??ef_plf_hoco_stop,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 012H
$DGS	GLV_SYM, _clk_table_ent,	U,	U,	0500DH,	026H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	0CH,	06H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _clk_waitinit,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _clk_waitfunc,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H

	EXTRN	_clk_waitinit
	EXTRN	_clk_waitfunc
	PUBLIC	_plf_init
	PUBLIC	_plf_hoco_start
	PUBLIC	_plf_hoco_stop
	PUBLIC	_clk_table_ent

@@BITS	BSEG

CLK_TBL	CSEG	MIRRORP
_clk_table_ent:	DW	05H	; 5
	DW	050H	; 80
	DW	08FH	; 143
	DW	01CH	; 28
	DW	05EH	; 94
	DW	04H	; 4

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
; line   103
; line   107
; line   129
; line   130
; line   174

PLF_CODE	CSEG
_plf_timer_wait:
$DGL	1,19
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_plf_timer_wait:
; line   180
$DGL	0,7
	clrb	a						;[INF] 1, 1
	push	hl						;[INF] 1, 1
	movw	hl,#0F0H	; 240 				;[INF] 3, 1
	mov1	CY,[hl].0					;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	mov1	a.0,CY						;[INF] 2, 1
	mov	[hl+3],a	; tau0en 			;[INF] 2, 1
; line   181
$DGL	0,8
	movw	ax,!TPS0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#0FH	; 15 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	bc,ax						;[INF] 1, 1
	movw	ax,[hl+4]	; div 				;[INF] 2, 1
	shlw	ax,4						;[INF] 2, 1
	or	a,b						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	or	a,c						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	[hl],ax	; tps0 					;[INF] 1, 1
; line   183
$DGL	0,10
?L0003:
??bb00_plf_timer_wait:
PUSH PSW
??bb01_plf_timer_wait:
	di							;[INF] 3, 4
??eb01_plf_timer_wait:
; line   186
$DGL	0,13
	set1	!PER0.0						;[INF] 4, 2
; line   187
$DGL	0,14
	set1	MK1L.5						;[INF] 3, 2
; line   188
$DGL	0,15
	mov	!TT0L,#02H	; 2 				;[INF] 4, 1
; line   189
$DGL	0,16
	movw	ax,[hl]	; tps0 					;[INF] 1, 1
	movw	!TPS0,ax					;[INF] 3, 1
; line   190
$DGL	0,17
	movw	ax,#08000H	; -32768 			;[INF] 3, 1
	movw	!TMR01,ax					;[INF] 3, 1
; line   191
$DGL	0,18
	movw	ax,[hl+12]	; cnt 				;[INF] 2, 1
	movw	TDR01,ax					;[INF] 2, 1
; line   192
$DGL	0,19
	clr1	IF1L.5						;[INF] 3, 2
; line   193
$DGL	0,20
	clr1	MK1L.5						;[INF] 3, 2
; line   194
$DGL	0,21
	mov	!TS0L,#02H	; 2 				;[INF] 4, 1
; line   196
$DGL	0,23
	halt							;[INF] 2, 3
; line   199
$DGL	0,26
?L0006:
	bt	IF1L.5,$?L0007					;[INF] 4, 5
	br	$?L0006						;[INF] 2, 3
?L0007:
; line   202
$DGL	0,29
	mov	!TT0L,#02H	; 2 				;[INF] 4, 1
; line   203
$DGL	0,30
	set1	MK1L.5						;[INF] 3, 2
; line   204
$DGL	0,31
	clr1	IF1L.5						;[INF] 3, 2
; line   205
$DGL	0,32
	mov	a,[hl+3]	; tau0en 			;[INF] 2, 1
	mov1	CY,a.0						;[INF] 2, 1
	push	hl						;[INF] 1, 1
	movw	hl,#0F0H	; 240 				;[INF] 3, 1
	mov1	[hl].0,CY					;[INF] 2, 2
	pop	hl						;[INF] 1, 1
; line   207
$DGL	0,34
POP PSW
??eb00_plf_timer_wait:
?L0005:
?L0004:
; line   208
$DGL	0,35
??ef_plf_timer_wait:
	addw	sp,#06H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_plf_timer_wait:
; line   217
_plf_irq_init:
$DGL	1,37
??bf_plf_irq_init:
; line   219
$DGL	0,3
	set1	EGN1.3						;[INF] 3, 2
; line   222
$DGL	0,6
	set1	PR12H.0						;[INF] 3, 2
; line   223
$DGL	0,7
	clr1	PR02H.0						;[INF] 3, 2
; line   226
$DGL	0,10
	clr1	IF2H.0						;[INF] 3, 2
; line   229
$DGL	0,13
	clr1	MK2H.0						;[INF] 3, 2
; line   230
$DGL	0,14
??ef_plf_irq_init:
	ret							;[INF] 1, 6
??ee_plf_irq_init:
; line   238
_plf_clkoutput_init:
$DGL	1,43
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_plf_clkoutput_init:
; line   240
$DGL	0,3
	movw	ax,hl						;[INF] 1, 1
	clrb	a						;[INF] 1, 1
	onew	bc						;[INF] 1, 1
	subw	ax,bc						;[INF] 1, 1
	bz	$?L0013						;[INF] 2, 4
	subw	ax,bc						;[INF] 1, 1
	bz	$?L0014						;[INF] 2, 4
	br	$?L0011						;[INF] 2, 3
; line   241
??bb00_plf_clkoutput_init:
; line   242
?L0013:
; line   243
$DGL	0,6
	mov	CKS0,#09H	; 9 				;[INF] 3, 1
; line   244
$DGL	0,7
	br	$?L0012						;[INF] 2, 3
; line   245
?L0014:
; line   246
$DGL	0,9
	mov	CKS0,#08H	; 8 				;[INF] 3, 1
; line   247
; line   248
; line   250
??eb00_plf_clkoutput_init:
; line   251
?L0012:
; line   254
$DGL	0,17
	set1	P7.6						;[INF] 3, 2
; line   255
$DGL	0,18
	clr1	PM7.6						;[INF] 3, 2
; line   259
$DGL	0,22
	clr1	PM14.0						;[INF] 3, 2
; line   260
$DGL	0,23
	clr1	P14.0						;[INF] 3, 2
; line   262
$DGL	0,25
	set1	CKS0.7						;[INF] 3, 2
; line   263
?L0011:
; line   263
$DGL	0,26
??ef_plf_clkoutput_init:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_plf_clkoutput_init:
; line   271
_plf_port_init:
$DGL	1,54
??bf_plf_port_init:
; line   280
$DGL	0,10
	clr1	!PMC0.2						;[INF] 4, 2
; line   282
$DGL	0,12
	clr1	!PMC0.3						;[INF] 4, 2
; line   284
$DGL	0,14
	oneb	!ADPC						;[INF] 3, 1
; line   303
$DGL	0,33
	mov	PM0,#0EFH	; 239 				;[INF] 3, 1
; line   304
$DGL	0,34
	mov	PM1,#07FH	; 127 				;[INF] 3, 1
; line   305
$DGL	0,35
	mov	PM2,#0FH	; 15 				;[INF] 3, 1
; line   306
$DGL	0,36
	mov	PM3,#0FDH	; 253 				;[INF] 3, 1
; line   307
$DGL	0,37
	oneb	!PM4						;[INF] 3, 1
; line   308
$DGL	0,38
	clrb	!PM5						;[INF] 3, 1
; line   309
$DGL	0,39
	mov	PM6,#03H	; 3 				;[INF] 3, 1
; line   310
$DGL	0,40
	mov	PM7,#0F7H	; 247 				;[INF] 3, 1
; line   311
$DGL	0,41
	clrb	!0FF28H						;[INF] 3, 1
; line   312
$DGL	0,42
	mov	0FFF2AH,#0F8H	; 248 				;[INF] 3, 1
; line   313
$DGL	0,43
	mov	0FFF2BH,#0FCH	; 252 				;[INF] 3, 1
; line   314
$DGL	0,44
	mov	PM12,#0FFH	; 255 				;[INF] 3, 1
; line   315
$DGL	0,45
	mov	PM14,#081H	; 129 				;[INF] 3, 1
; line   316
$DGL	0,46
	mov	0FFF2FH,#080H	; 128 				;[INF] 3, 1
; line   318
$DGL	0,48
??ef_plf_port_init:
	ret							;[INF] 1, 6
??ee_plf_port_init:
; line   321
_plf_init:
$DGL	1,60
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_plf_init:
; line   322
$DGL	0,2
	mov	ES,#00H	; 0 					;[INF] 2, 1
	mov	a,ES:!0C2H					;[INF] 4, 2
	mov	h,a						;[INF] 1, 1
; line   329
$DGL	0,9
	and	a,#07H	; 7 					;[INF] 2, 1
	mov	!HOCODIV,a					;[INF] 3, 1
; line   332
$DGL	0,12
	call	!!_clk_waitinit					;[INF] 4, 3
; line   335
$DGL	0,15
	call	!!_plf_port_init				;[INF] 4, 3
; line   341
$DGL	0,21
	mov	CMC,#010H	; 16 				;[INF] 3, 1
; line   352
$DGL	0,32
	set1	CSC.7						;[INF] 3, 2
; line   369
$DGL	0,49
	clr1	CKC.4						;[INF] 3, 2
; line   374
$DGL	0,54
	clr1	CSC.6						;[INF] 3, 2
; line   379
$DGL	0,59
	movw	ax,#03D1H	; 977 				;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,#0DH	; 13 					;[INF] 3, 1
	call	!!_plf_timer_wait				;[INF] 4, 3
	pop	ax						;[INF] 1, 1
; line   383
$DGL	0,63
	clrb	!OSMC						;[INF] 3, 1
; line   387
$DGL	0,67
	clr1	CKC.6						;[INF] 3, 2
; line   402
$DGL	0,82
	clr1	CSC.0						;[INF] 3, 2
; line   409
$DGL	0,89
	call	!!_plf_irq_init					;[INF] 4, 3
; line   411
$DGL	0,91
	mov	a,l						;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0022						;[INF] 2, 4
; line   412
??bb00_plf_init:
; line   414
$DGL	0,94
	movw	ax,hl						;[INF] 1, 1
	clrb	a						;[INF] 1, 1
	call	!!_plf_clkoutput_init				;[INF] 4, 3
??eb00_plf_init:
; line   415
?L0022:
; line   417
; line   418
; line   418
$DGL	0,98
??ef_plf_init:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_plf_init:
; line   421
_plf_hoco_start:
$DGL	1,72
??bf_plf_hoco_start:
; line   424
$DGL	0,4
	bf	CKC.5,$?L0026					;[INF] 4, 5
; line   425
??bb00_plf_hoco_start:
; line   427
$DGL	0,7
	clr1	CSC.0						;[INF] 3, 2
; line   429
$DGL	0,9
	onew	ax						;[INF] 1, 1
	call	!!_clk_waitfunc					;[INF] 4, 3
??eb00_plf_hoco_start:
; line   430
?L0026:
; line   437
$DGL	0,17
??ef_plf_hoco_start:
	ret							;[INF] 1, 6
??ee_plf_hoco_start:
; line   440
_plf_hoco_stop:
$DGL	1,82
??bf_plf_hoco_stop:
; line   443
$DGL	0,4
	bf	CKC.5,$?L0030					;[INF] 4, 5
; line   444
??bb00_plf_hoco_stop:
; line   446
$DGL	0,7
	set1	CSC.0						;[INF] 3, 2
??eb00_plf_hoco_stop:
; line   447
?L0030:
; line   457
$DGL	0,18
??ef_plf_hoco_stop:
	ret							;[INF] 1, 6
??ee_plf_hoco_stop:
; line   460
; line   465

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\driver\plf\plf.c
;
; $FUNC plf_timer_wait(174)
;	void=(unsigned short div:ax, unsigned short cnt:[sp+4])
;	CODE SIZE= 109 bytes, CLOCK_SIZE= 74 clocks, STACK_SIZE= 10 bytes
;
; $FUNC plf_irq_init(217)
;	void=(void)
;	CODE SIZE= 16 bytes, CLOCK_SIZE= 16 clocks, STACK_SIZE= 0 bytes
;
; $FUNC plf_clkoutput_init(238)
;	void=(unsigned char plf_flg:x)
;	CODE SIZE= 38 bytes, CLOCK_SIZE= 40 clocks, STACK_SIZE= 2 bytes
;
; $FUNC plf_port_init(271)
;	void=(void)
;	CODE SIZE= 54 bytes, CLOCK_SIZE= 25 clocks, STACK_SIZE= 0 bytes
;
; $FUNC plf_init(321)
;	void=(unsigned char plf_flg:x)
;	CODE SIZE= 71 bytes, CLOCK_SIZE= 54 clocks, STACK_SIZE= 8 bytes
;
; $CALL clk_waitinit(332)
;	void=(void)
;
; $CALL plf_port_init(335)
;	void=(void)
;
; $CALL plf_timer_wait(379)
;	void=(unsigned short:ax, unsigned short:[sp+4])
;
; $CALL plf_irq_init(409)
;	void=(void)
;
; $CALL plf_clkoutput_init(414)
;	void=(int:ax)
;
; $FUNC plf_hoco_start(421)
;	void=(void)
;	CODE SIZE= 13 bytes, CLOCK_SIZE= 17 clocks, STACK_SIZE= 4 bytes
;
; $CALL clk_waitfunc(429)
;	void=(int:ax)
;
; $FUNC plf_hoco_stop(440)
;	void=(void)
;	CODE SIZE= 8 bytes, CLOCK_SIZE= 13 clocks, STACK_SIZE= 0 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:36

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_t
;             au.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_
;             EXMEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_
;             RBLE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAM
;             PLE,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK
;             _HOCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SEC
;             LIB -i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..
;             \..\src\driver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\
;             ..\..\..\src\driver\dataflash\cs -i..\..\..\..\..\src\driver\data
;             flash -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -
;             i..\..\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\
;             ..\..\..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..
;             \..\..\..\..\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf
;              -i..\..\..\..\..\src\driver\port -i..\..\..\..\..\src\driver\rf 
;             -i..\..\..\..\..\src\driver\uart -i..\..\..\..\..\src\driver\push
;             _sw -i..\..\..\..\..\src\driver\push_state -i..\..\..\..\..\src\d
;             river\pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\.
;             .\..\bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i
;             ..\..\..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\sr
;             c\sample_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -
;             zps -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_tau.c
; Asm-file  : DefaultBuild\r_cg_tau.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		027H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, r_cg_tau.c
$DGS	MOD_NAM, r_cg_tau,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	LAB_SYM, bs_S0007,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0007,	U,	U,	00H,	06H,	00H,	00H
$DGS	GLV_SYM, _R_TAU0_Create,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01BH,	01H,	00H
$DGS	BEG_FUN, ??bf_R_TAU0_Create,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 039H,		00H,	01BH
$DGS	END_FUN, ??ef_R_TAU0_Create,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03BH
$DGS	GLV_SYM, _R_TAU0_Channel0_Start,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	021H,	01H,	00H
$DGS	BEG_FUN, ??bf_R_TAU0_Channel0_Start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 07BH,		00H,	021H
$DGS	END_FUN, ??ef_R_TAU0_Channel0_Start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 04H
$DGS	GLV_SYM, _R_TAU0_Channel0_Stop,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	027H,	01H,	00H
$DGS	BEG_FUN, ??bf_R_TAU0_Channel0_Stop,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 086H,		00H,	027H
$DGS	END_FUN, ??ef_R_TAU0_Channel0_Stop,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 05H

	PUBLIC	_R_TAU0_Create
	PUBLIC	_R_TAU0_Channel0_Start
	PUBLIC	_R_TAU0_Channel0_Stop

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
bs_S0007:
	movw	ax,!TOE0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	or	a,#080H	; 128 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TOE0,ax					;[INF] 3, 1
	ret							;[INF] 1, 6
es_S0007:

; *** Sub-Routine Information ***
;
; $SUB bs_S0007
;      CODE SIZE= 11 bytes

; End of Sub-Routines

; line    72
; line    73
; line    74
; line    75
; line    76
; line    77
; line    78
; line    36
; line    57

@@CODEL	CSEG
_R_TAU0_Create:
$DGL	1,21
??bf_R_TAU0_Create:
; line    58
$DGL	0,2
	set1	!PER0.0						;[INF] 4, 2
; line    59
$DGL	0,3
	clrw	ax						;[INF] 1, 1
	movw	!TPS0,ax					;[INF] 3, 1
; line    64
$DGL	0,8
	movw	ax,#0AFFH	; 2815 				;[INF] 3, 1
	movw	!TT0,ax						;[INF] 3, 1
; line    66
$DGL	0,10
	set1	MK1L.4						;[INF] 3, 2
; line    67
$DGL	0,11
	clr1	IF1L.4						;[INF] 3, 2
; line    69
$DGL	0,13
	set1	MK1L.5						;[INF] 3, 2
; line    70
$DGL	0,14
	clr1	IF1L.5						;[INF] 3, 2
; line    72
$DGL	0,16
	set1	MK0H.7						;[INF] 3, 2
; line    73
$DGL	0,17
	clr1	IF0H.7						;[INF] 3, 2
; line    75
$DGL	0,19
	set1	MK1L.6						;[INF] 3, 2
; line    76
$DGL	0,20
	clr1	IF1L.6						;[INF] 3, 2
; line    78
$DGL	0,22
	set1	MK1L.7						;[INF] 3, 2
; line    79
$DGL	0,23
	clr1	IF1L.7						;[INF] 3, 2
; line    81
$DGL	0,25
	set1	MK1L.2						;[INF] 3, 2
; line    82
$DGL	0,26
	clr1	IF1L.2						;[INF] 3, 2
; line    84
$DGL	0,28
	set1	MK1H.7						;[INF] 3, 2
; line    85
$DGL	0,29
	clr1	IF1H.7						;[INF] 3, 2
; line    87
$DGL	0,31
	set1	MK2L.0						;[INF] 3, 2
; line    88
$DGL	0,32
	clr1	IF2L.0						;[INF] 3, 2
; line    90
$DGL	0,34
	set1	MK2L.1						;[INF] 3, 2
; line    91
$DGL	0,35
	clr1	IF2L.1						;[INF] 3, 2
; line    93
$DGL	0,37
	set1	MK2L.2						;[INF] 3, 2
; line    94
$DGL	0,38
	clr1	IF2L.2						;[INF] 3, 2
; line    97
$DGL	0,41
	onew	ax						;[INF] 1, 1
	movw	!TMR00,ax					;[INF] 3, 1
; line    98
$DGL	0,42
	movw	TDR00,#07CFH	; 1999 				;[INF] 4, 1
; line    99
$DGL	0,43
	movw	ax,!TOM0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#0FEH	; 254 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TOM0,ax					;[INF] 3, 1
; line   100
$DGL	0,44
	movw	ax,!TOL0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#0FEH	; 254 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TOL0,ax					;[INF] 3, 1
; line   101
$DGL	0,45
	movw	ax,!TO0						;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#0FEH	; 254 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TO0,ax						;[INF] 3, 1
; line   102
$DGL	0,46
	movw	ax,!TOE0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#0FEH	; 254 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TOE0,ax					;[INF] 3, 1
; line   105
$DGL	0,49
	movw	ax,#0409H	; 1033 				;[INF] 3, 1
	movw	!TMR07,ax					;[INF] 3, 1
; line   106
$DGL	0,50
	movw	TDR07,#03E8H	; 1000 				;[INF] 4, 1
; line   107
$DGL	0,51
	movw	ax,!TOM0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	or	a,#080H	; 128 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TOM0,ax					;[INF] 3, 1
; line   108
$DGL	0,52
	movw	ax,!TOL0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#07FH	; 127 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TOL0,ax					;[INF] 3, 1
; line   109
$DGL	0,53
	movw	ax,!TO0						;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#07FH	; 127 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TO0,ax						;[INF] 3, 1
; line   110
$DGL	0,54
	call	$!bs_S0007					;[INF] 3, 3
; line   112
$DGL	0,56
	mov	a,!POM1						;[INF] 3, 1
	and	a,#0FEH	; 254 					;[INF] 2, 1
	mov	!POM1,a						;[INF] 3, 1
; line   113
$DGL	0,57
	and	P1,#0FEH	; 254 				;[INF] 3, 2
; line   114
$DGL	0,58
	mov	a,PM1						;[INF] 2, 1
	and	a,#0FEH	; 254 					;[INF] 2, 1
	mov	PM1,a						;[INF] 2, 1
; line   115
$DGL	0,59
??ef_R_TAU0_Create:
	ret							;[INF] 1, 6
??ee_R_TAU0_Create:
; line   123
_R_TAU0_Channel0_Start:
$DGL	1,27
??bf_R_TAU0_Channel0_Start:
; line   124
$DGL	0,2
	call	$!bs_S0007					;[INF] 3, 3
; line   125
$DGL	0,3
	movw	ax,!TS0						;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	or	a,#081H	; 129 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TS0,ax						;[INF] 3, 1
; line   126
$DGL	0,4
??ef_R_TAU0_Channel0_Start:
	ret							;[INF] 1, 6
??ee_R_TAU0_Channel0_Start:
; line   134
_R_TAU0_Channel0_Stop:
$DGL	1,33
??bf_R_TAU0_Channel0_Stop:
; line   135
$DGL	0,2
	movw	ax,!TT0						;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	or	a,#081H	; 129 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TT0,ax						;[INF] 3, 1
; line   136
$DGL	0,3
	movw	ax,!TOE0					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,#07FH	; 127 					;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	movw	!TOE0,ax					;[INF] 3, 1
; line   137
$DGL	0,4
	clrw	ax						;[INF] 1, 1
	movw	!TO0,ax						;[INF] 3, 1
; line   138
$DGL	0,5
??ef_R_TAU0_Channel0_Stop:
	ret							;[INF] 1, 6
??ee_R_TAU0_Channel0_Stop:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\rBLE\src\sample_app\r_cg_tau
;	.c
;
; $FUNC R_TAU0_Create(57)
;	void=(void)
;	CODE SIZE= 183 bytes, CLOCK_SIZE= 115 clocks, STACK_SIZE= 4 bytes
;
; $FUNC R_TAU0_Channel0_Start(123)
;	void=(void)
;	CODE SIZE= 14 bytes, CLOCK_SIZE= 25 clocks, STACK_SIZE= 4 bytes
;
; $FUNC R_TAU0_Channel0_Stop(134)
;	void=(void)
;	CODE SIZE= 25 bytes, CLOCK_SIZE= 18 clocks, STACK_SIZE= 0 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

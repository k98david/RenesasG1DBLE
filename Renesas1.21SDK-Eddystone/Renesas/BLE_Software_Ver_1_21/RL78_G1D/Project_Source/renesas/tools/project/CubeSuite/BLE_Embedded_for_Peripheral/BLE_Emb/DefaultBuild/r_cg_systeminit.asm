; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:36

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_s
;             ysteminit.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON
;             =1,CFG_EXMEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_
;             ON,CFG_RBLE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,
;             CFG_SAMPLE,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROF
;             ILE,CLK_HOCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,
;             USE_SECLIB -i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\.
;             .\..\..\..\src\driver\serial -i..\..\..\..\..\src\driver\wakeup -
;             i..\..\..\..\..\src\driver\dataflash\cs -i..\..\..\..\..\src\driv
;             er\dataflash -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\.
;             .\src -i..\..\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl7
;             8 -i..\..\..\..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\l
;             ed -i..\..\..\..\..\src\driver\led_onoff -i..\..\..\..\..\src\dri
;             ver\plf -i..\..\..\..\..\src\driver\port -i..\..\..\..\..\src\dri
;             ver\rf -i..\..\..\..\..\src\driver\uart -i..\..\..\..\..\src\driv
;             er\push_sw -i..\..\..\..\..\src\driver\push_state -i..\..\..\..\.
;             .\src\driver\pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\
;             ..\..\..\..\bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\inc
;             lude -i..\..\..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\
;             rBLE\src\sample_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_pr
;             ofile -zps -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_systeminit.c
; Asm-file  : DefaultBuild\r_cg_systeminit.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		01FH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, r_cg_systeminit.c
$DGS	MOD_NAM, r_cg_systeminit,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	GLV_SYM, _R_Systeminit,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	019H,	01H,	00H
$DGS	BEG_FUN, ??bf_R_Systeminit,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 03AH,		00H,	019H
$DGS	END_FUN, ??ef_R_Systeminit,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0FH
$DGS	GLV_SYM, _hdwinit,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01FH,	01H,	00H
$DGS	BEG_FUN, ??bf_hdwinit,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 051H,		00H,	01FH
$DGS	END_FUN, ??ef_hdwinit,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 04H
$DGS	GLV_SYM, _R_CGC_Get_ResetSource,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _R_CGC_Create,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _R_TAU0_Create,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H

	EXTRN	_R_CGC_Get_ResetSource
	EXTRN	_R_CGC_Create
	EXTRN	_R_TAU0_Create
	PUBLIC	_R_Systeminit
	PUBLIC	_hdwinit

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

; line    72
; line    73
; line    74
; line    75
; line    76
; line    77
; line    78
; line   161
; line   166
; line   167
; line   405
; line   406
; line   407
; line   406
; line   407
; line    58

@@CODEL	CSEG
_R_Systeminit:
$DGL	1,19
??bf_R_Systeminit:
; line    59
$DGL	0,2
	oneb	!PIOR						;[INF] 3, 1
; line    60
$DGL	0,3
	mov	a,PM0						;[INF] 2, 1
	and	a,#08FH	; 143 					;[INF] 2, 1
	mov	PM0,a						;[INF] 2, 1
; line    61
$DGL	0,4
	mov	a,PM1						;[INF] 2, 1
	and	a,#07FH	; 127 					;[INF] 2, 1
	mov	PM1,a						;[INF] 2, 1
; line    62
$DGL	0,5
	mov	a,PM3						;[INF] 2, 1
	and	a,#0FDH	; 253 					;[INF] 2, 1
	mov	PM3,a						;[INF] 2, 1
; line    63
$DGL	0,6
	mov	a,PM4						;[INF] 2, 1
	and	a,#0F1H	; 241 					;[INF] 2, 1
	mov	PM4,a						;[INF] 2, 1
; line    64
$DGL	0,7
	mov	a,PM5						;[INF] 2, 1
	and	a,#0C0H	; 192 					;[INF] 2, 1
	mov	PM5,a						;[INF] 2, 1
; line    65
$DGL	0,8
	mov	a,PM6						;[INF] 2, 1
	and	a,#0F3H	; 243 					;[INF] 2, 1
	mov	PM6,a						;[INF] 2, 1
; line    66
$DGL	0,9
	mov	PM7,#082H	; 130 				;[INF] 3, 1
; line    67
$DGL	0,10
	mov	a,PM14						;[INF] 2, 1
	and	a,#0BDH	; 189 					;[INF] 2, 1
	mov	PM14,a						;[INF] 2, 1
; line    68
$DGL	0,11
	call	!!_R_CGC_Get_ResetSource			;[INF] 4, 3
; line    69
$DGL	0,12
	call	!!_R_CGC_Create					;[INF] 4, 3
; line    70
$DGL	0,13
	call	!!_R_TAU0_Create				;[INF] 4, 3
; line    71
$DGL	0,14
	clrb	!IAWCTL						;[INF] 3, 1
; line    72
$DGL	0,15
??ef_R_Systeminit:
	ret							;[INF] 1, 6
??ee_R_Systeminit:
; line    81
_hdwinit:
$DGL	1,25
	di							;[INF] 3, 4
??bf_hdwinit:
; line    83
$DGL	0,3
	call	!!_R_Systeminit					;[INF] 4, 3
; line    84
$DGL	0,4
??ef_hdwinit:
	ret							;[INF] 1, 6
??ee_hdwinit:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\rBLE\src\sample_app\r_cg_sys
;	teminit.c
;
; $FUNC R_Systeminit(58)
;	void=(void)
;	CODE SIZE= 64 bytes, CLOCK_SIZE= 39 clocks, STACK_SIZE= 4 bytes
;
; $CALL R_CGC_Get_ResetSource(68)
;	void=(void)
;
; $CALL R_CGC_Create(69)
;	void=(void)
;
; $CALL R_TAU0_Create(70)
;	void=(void)
;
; $FUNC hdwinit(81)
;	void=(void)
;	CODE SIZE= 8 bytes, CLOCK_SIZE= 13 clocks, STACK_SIZE= 4 bytes
;
; $CALL R_Systeminit(83)
;	void=(void)

; Target chip : R5F11AGJ
; Device file : V1.20 

; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:39

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile cg_src\r_cg_cgc.c -oDefaultBuild -_msgoff -q
;             wvjl3 -icg_src -zps -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuil
;             d -g2
; In-file   : cg_src\r_cg_cgc.c
; Asm-file  : DefaultBuild\r_cg_cgc.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		01EH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, r_cg_cgc.c
$DGS	MOD_NAM, r_cg_cgc,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	GLV_SYM, _R_CGC_Create,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01EH,	01H,	00H
$DGS	BEG_FUN, ??bf_R_CGC_Create,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 039H,		04H,	018H
$DGS	AUT_VAR, _w_count,	00H,	0FFFFH,	0100FH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_R_CGC_Create,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0EH,		00H,	00H
$DGS	END_BLK, ??eb00_R_CGC_Create,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 010H
$DGS	END_FUN, ??ef_R_CGC_Create,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 017H

	PUBLIC	_R_CGC_Create

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
; line   167
; line    57

@@CODEL	CSEG
_R_CGC_Create:
$DGL	1,19
	push	hl						;[INF] 1, 1
	subw	sp,#04H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_R_CGC_Create:
; line    61
$DGL	0,5
	mov	CMC,#010H	; 16 				;[INF] 3, 1
; line    62
$DGL	0,6
	set1	CSC.7						;[INF] 3, 2
; line    64
$DGL	0,8
	clr1	CKC.4						;[INF] 3, 2
; line    66
$DGL	0,10
	clr1	CSC.6						;[INF] 3, 2
; line    69
$DGL	0,13
	clrw	ax						;[INF] 1, 1
	movw	[hl],ax	; w_count 				;[INF] 1, 1
	movw	[hl+2],ax	; w_count 			;[INF] 2, 1
?L0003:
	clrw	ax						;[INF] 1, 1
	cmpw	ax,[hl+2]	; w_count 			;[INF] 3, 1
	bnz	$?L0006						;[INF] 2, 4
	mov	x,#01EH	; 30 					;[INF] 2, 1
	cmpw	ax,[hl+0]	; w_count 			;[INF] 3, 1
?L0006:
	bc	$?L0004						;[INF] 2, 4
; line    70
??bb00_R_CGC_Create:
; line    71
$DGL	0,15
	nop							;[INF] 1, 1
??eb00_R_CGC_Create:
; line    72
$DGL	0,16
	movw	ax,[hl+2]	; w_count 			;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	movw	ax,[hl]	; w_count 				;[INF] 1, 1
	addw	ax,#01H	; 1 					;[INF] 3, 1
	sknc							;[INF] 2, 1
	incw	bc						;[INF] 1, 1
?L0007:
	movw	[hl],ax	; w_count 				;[INF] 1, 1
	xchw	ax,bc						;[INF] 1, 1
	movw	[hl+2],ax	; w_count 			;[INF] 2, 1
	br	$?L0003						;[INF] 2, 3
?L0004:
; line    74
$DGL	0,18
	mov	!OSMC,#010H	; 16 				;[INF] 4, 1
; line    76
$DGL	0,20
	clr1	CKC.6						;[INF] 3, 2
; line    78
$DGL	0,22
	clr1	CSC.0						;[INF] 3, 2
; line    79
$DGL	0,23
??ef_R_CGC_Create:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_R_CGC_Create:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\tools\project\CubeSu
;	ite\BLE_Embedded_for_Peripheral\cg_src\r_cg_cgc.c
;
; $FUNC R_CGC_Create(57)
;	void=(void)
;	CODE SIZE= 66 bytes, CLOCK_SIZE= 51 clocks, STACK_SIZE= 6 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

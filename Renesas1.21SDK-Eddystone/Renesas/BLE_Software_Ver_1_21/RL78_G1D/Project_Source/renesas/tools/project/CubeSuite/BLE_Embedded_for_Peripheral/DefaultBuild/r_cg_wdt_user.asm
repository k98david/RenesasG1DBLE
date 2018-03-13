; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:40

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile cg_src\r_cg_wdt_user.c -oDefaultBuild -_msgo
;             ff -qwvjl3 -icg_src -zps -mm -mi0 -aDefaultBuild -no -rc -xDefaul
;             tBuild -g2
; In-file   : cg_src\r_cg_wdt_user.c
; Asm-file  : DefaultBuild\r_cg_wdt_user.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		01AH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, r_cg_wdt_user.c
$DGS	MOD_NAM, r_cg_wdt_user,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	SEC_NAM, @@VECT04,	U,	U,	00H,	078H,	00H,	00H
$DGS	STA_SYM, _r_wdt_interrupt,	U,	U,	0E001H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01AH,	00H,	00H
$DGS	BEG_FUN, ??bf_r_wdt_interrupt,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 03AH,		00H,	01AH
$DGS	END_FUN, ??ef_r_wdt_interrupt,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 04H
$DGS	GLV_SYM, _@vect04,	U,	U,	00H,	026H,	00H,	00H

	PUBLIC	_@vect04

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
; line    46
; line    47
; line    58

@@BASE	CSEG	BASE
_r_wdt_interrupt:
$DGL	1,20
??bf_r_wdt_interrupt:
; line    61
$DGL	0,4
??ef_r_wdt_interrupt:
	reti							;[INF] 2, 6
??ee_r_wdt_interrupt:

@@VECT04	CSEG	AT    0004H
_@vect04:
	DW	_r_wdt_interrupt

@@CODE	CSEG	BASE

@@CODEL	CSEG
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\tools\project\CubeSu
;	ite\BLE_Embedded_for_Peripheral\cg_src\r_cg_wdt_user.c
;
; $FUNC r_wdt_interrupt(58)
;	void=(void)
;	CODE SIZE= 2 bytes, CLOCK_SIZE= 6 clocks, STACK_SIZE= 0 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

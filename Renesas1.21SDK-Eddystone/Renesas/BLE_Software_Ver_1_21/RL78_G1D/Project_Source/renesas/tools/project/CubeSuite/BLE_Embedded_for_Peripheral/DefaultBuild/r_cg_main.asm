; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:39

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile cg_src\r_cg_main.c -oDefaultBuild -_msgoff -
;             qwvjl3 -icg_src -zps -mm -mi0 -aDefaultBuild -no -rc -xDefaultBui
;             ld -g2
; In-file   : cg_src\r_cg_main.c
; Asm-file  : DefaultBuild\r_cg_main.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		023H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, r_cg_main.c
$DGS	MOD_NAM, r_cg_main,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	GLV_SYM, _main,		U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01DH,	01H,	00H
$DGS	BEG_FUN, ??bf_main,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 03BH,		00H,	017H
$DGS	BEG_BLK, ??bb00_main,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	00H
$DGS	END_BLK, ??eb00_main,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 07H
$DGS	END_FUN, ??ef_main,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 09H
$DGS	STA_SYM, _R_MAIN_UserInit,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	023H,	01H,	00H
$DGS	BEG_FUN, ??bf_R_MAIN_UserInit,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 04BH,		00H,	023H
$DGS	END_FUN, ??ef_R_MAIN_UserInit,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 05H

	PUBLIC	_main

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
; line    46
; line    47
; line    51
; line    59

@@CODEL	CSEG
_main:
$DGL	1,19
??bf_main:
; line    60
$DGL	0,2
	call	!!_R_MAIN_UserInit				;[INF] 4, 3
; line    62
?L0003:
; line    63
??bb00_main:
; line    64
??eb00_main:
; line    65
$DGL	0,7
	br	$?L0003						;[INF] 2, 3
; line    67
$DGL	0,9
??ef_main:
	ret							;[INF] 1, 6
??ee_main:
; line    75
_R_MAIN_UserInit:
$DGL	1,29
??bf_R_MAIN_UserInit:
; line    79
$DGL	0,5
??ef_R_MAIN_UserInit:
	ei							;[INF] 3, 4
	ret							;[INF] 1, 6
??ee_R_MAIN_UserInit:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\tools\project\CubeSu
;	ite\BLE_Embedded_for_Peripheral\cg_src\r_cg_main.c
;
; $FUNC main(59)
;	void=(void)
;	CODE SIZE= 7 bytes, CLOCK_SIZE= 12 clocks, STACK_SIZE= 4 bytes
;
; $CALL R_MAIN_UserInit(60)
;	void=(void)
;
; $FUNC R_MAIN_UserInit(75)
;	void=(void)
;	CODE SIZE= 4 bytes, CLOCK_SIZE= 10 clocks, STACK_SIZE= 0 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:36

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_c
;             gc_user.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1
;             ,CFG_EXMEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON
;             ,CFG_RBLE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CF
;             G_SAMPLE,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFIL
;             E,CLK_HOCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,US
;             E_SECLIB -i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\
;             ..\..\..\src\driver\serial -i..\..\..\..\..\src\driver\wakeup -i.
;             .\..\..\..\..\src\driver\dataflash\cs -i..\..\..\..\..\src\driver
;             \dataflash -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\
;             src -i..\..\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 
;             -i..\..\..\..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led
;              -i..\..\..\..\..\src\driver\led_onoff -i..\..\..\..\..\src\drive
;             r\plf -i..\..\..\..\..\src\driver\port -i..\..\..\..\..\src\drive
;             r\rf -i..\..\..\..\..\src\driver\uart -i..\..\..\..\..\src\driver
;             \push_sw -i..\..\..\..\..\src\driver\push_state -i..\..\..\..\..\
;             src\driver\pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..
;             \..\..\..\bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\inclu
;             de -i..\..\..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rB
;             LE\src\sample_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_prof
;             ile -zps -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_cgc_user.c
; Asm-file  : DefaultBuild\r_cg_cgc_user.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		01AH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, r_cg_cgc_user.c
$DGS	MOD_NAM, r_cg_cgc_user,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	GLV_SYM, _R_CGC_Get_ResetSource,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01AH,	01H,	00H
$DGS	BEG_FUN, ??bf_R_CGC_Get_ResetSource,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 039H,		02H,	01AH
$DGS	REG_VAR, _reset_flag,	06H,	0FFFFH,	010CH,	04H,	00H,	00H
$DGS	END_FUN, ??ef_R_CGC_Get_ResetSource,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 05H

	PUBLIC	_R_CGC_Get_ResetSource

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
; line    36
; line    37
; line    38
; line    57

@@CODEL	CSEG
_R_CGC_Get_ResetSource:
$DGL	1,19
	push	hl						;[INF] 1, 1
??bf_R_CGC_Get_ResetSource:
; line    58
$DGL	0,2
	mov	a,RESF						;[INF] 2, 1
; line    61
$DGL	0,5
??ef_R_CGC_Get_ResetSource:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_R_CGC_Get_ResetSource:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\rBLE\src\sample_app\r_cg_cgc
;	_user.c
;
; $FUNC R_CGC_Get_ResetSource(57)
;	void=(void)
;	CODE SIZE= 5 bytes, CLOCK_SIZE= 9 clocks, STACK_SIZE= 2 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

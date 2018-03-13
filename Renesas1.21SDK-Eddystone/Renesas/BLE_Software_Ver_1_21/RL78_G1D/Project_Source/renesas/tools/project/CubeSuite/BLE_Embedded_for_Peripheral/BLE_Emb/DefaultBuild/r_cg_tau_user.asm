; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:36

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_t
;             au_user.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1
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
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\r_cg_tau_user.c
; Asm-file  : DefaultBuild\r_cg_tau_user.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		013H,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, r_cg_tau_user.c
$DGS	MOD_NAM, r_cg_tau_user,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
; line   405
; line   406
; line   407
; line    36
; line   406
; line   407

@@CODE	CSEG	BASE

@@CODEL	CSEG

@@BASE	CSEG	BASE
	END


; *** Code Information ***

; Target chip : R5F11AGJ
; Device file : V1.20 

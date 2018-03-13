; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:28

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\driver\dataflash\fdl_desc
;             riptor_t02.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CO
;             N=1,CFG_EXMEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY
;             _ON,CFG_RBLE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78
;             ,CFG_SAMPLE,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PRO
;             FILE,CLK_HOCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4
;             ,USE_SECLIB -i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\
;             ..\..\..\..\src\driver\serial -i..\..\..\..\..\src\driver\wakeup 
;             -i..\..\..\..\..\src\driver\dataflash\cs -i..\..\..\..\..\src\dri
;             ver\dataflash -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\
;             ..\src -i..\..\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl
;             78 -i..\..\..\..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\
;             led -i..\..\..\..\..\src\driver\led_onoff -i..\..\..\..\..\src\dr
;             iver\plf -i..\..\..\..\..\src\driver\port -i..\..\..\..\..\src\dr
;             iver\rf -i..\..\..\..\..\src\driver\uart -i..\..\..\..\..\src\dri
;             ver\push_sw -i..\..\..\..\..\src\driver\push_state -i..\..\..\..\
;             ..\src\driver\pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..
;             \..\..\..\..\bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\in
;             clude -i..\..\..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..
;             \rBLE\src\sample_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_p
;             rofile -zps -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\src\driver\dataflash\fdl_descriptor_t02.c
; Asm-file  : DefaultBuild\fdl_descriptor_t02.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		01EH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, fdl_descriptor_t02.c
$DGS	MOD_NAM, fdl_descriptor_t02,	00H,	0FFFEH,	00H,	077H,	00H,	00H
$DGS	SEC_NAM, @@BITS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATA,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@R_INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INIS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATS,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, FDL_CNST,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@RLINIT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@INITL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@DATAL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CALT,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODE,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@CODEL,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@BASE,	U,	U,	00H,	078H,	00H,	00H
$DGS	STR_STR, .3fake,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0AH,		01EH
$DGS	MEB_STR, _eel_pool_bytes_u16,	00H,	0FFFFH,	0EH,	08H,	00H,	00H
$DGS	MEB_STR, _fdl_pool_bytes_u16,	02H,	0FFFFH,	0EH,	08H,	00H,	00H
$DGS	MEB_STR, _fdl_delay_u16,	04H,	0FFFFH,	0EH,	08H,	00H,	00H
$DGS	MEB_STR, _eel_pool_blocks_u08,	06H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _fdl_pool_blocks_u08,	07H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _fx_MHz_u08,	08H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _wide_voltage_mode_u08,	09H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		0AH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		0AH
$DGS	GLV_SYM, _fdl_descriptor_str,	U,	U,	0D008H,	026H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	0AH,	00H,	00H,	00H,	00H,	00H

	PUBLIC	_fdl_descriptor_str

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

@@DATA	DSEG	BASEP

@@R_INIS	CSEG	UNIT64KP

@@INIS	DSEG	SADDRP

@@DATS	DSEG	SADDRP

FDL_CNST	CSEG	PAGE64KP
_fdl_descriptor_str:	DW	02000H	; 8192
	DW	00H	; 0
	DW	0DH	; 13
	DB	08H	; 8
	DB	00H	; 0
	DB	08H	; 8
	DB	01H	; 1

@@RLINIT	CSEG	UNIT64KP

@@INITL	DSEG	UNIT64KP

@@DATAL	DSEG	UNIT64KP

@@CALT	CSEG	CALLT0

; line    42
; line    43
; line    44
; line    66
; line    87
; line    98
; line   113
; line    97
; line   101
; line   103
; line   106

@@CODE	CSEG	BASE

@@CODEL	CSEG

@@BASE	CSEG	BASE
	END


; *** Code Information ***

; Target chip : R5F11AGJ
; Device file : V1.20 

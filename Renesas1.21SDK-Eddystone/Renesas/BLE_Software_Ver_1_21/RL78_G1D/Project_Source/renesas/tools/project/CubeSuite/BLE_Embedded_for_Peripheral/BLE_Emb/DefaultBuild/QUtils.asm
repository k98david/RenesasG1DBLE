; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:36

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\QUtils
;             .c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_EX
;             MEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_RB
;             LE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMPL
;             E,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_H
;             OCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECLI
;             B -i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\.
;             .\src\driver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\..
;             \..\..\src\driver\dataflash\cs -i..\..\..\..\..\src\driver\datafl
;             ash -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i.
;             .\..\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\..
;             \..\..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\.
;             .\..\..\..\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf -
;             i..\..\..\..\..\src\driver\port -i..\..\..\..\..\src\driver\rf -i
;             ..\..\..\..\..\src\driver\uart -i..\..\..\..\..\src\driver\push_s
;             w -i..\..\..\..\..\src\driver\push_state -i..\..\..\..\..\src\dri
;             ver\pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..\
;             ..\bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i..
;             \..\..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src\
;             sample_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -zp
;             s -mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\QUtils.c
; Asm-file  : DefaultBuild\QUtils.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 02H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		06AH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, QUtils.c
$DGS	MOD_NAM, QUtils,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	LAB_SYM, bs_S0026,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0026,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0027,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0027,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0028,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0028,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0023,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0023,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0024,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0024,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0025,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0025,	U,	U,	00H,	06H,	00H,	00H
$DGS	GLV_SYM, _convertASCII2Hex,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	048H,	01H,	00H
$DGS	BEG_FUN, ??bf_convertASCII2Hex,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0AH,		04H,	026H
$DGS	FUN_ARG, _aWord,	02H,	0FFFFH,	02H,	09H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	AUT_VAR, _abyte,	01H,	0FFFFH,	02H,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	02AH
$DGS	END_BLK, ??eb00_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	BEG_BLK, ??bb01_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	02CH
$DGS	BEG_BLK, ??bb02_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 09H,		00H,	030H
$DGS	END_BLK, ??eb02_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0CH
$DGS	BEG_BLK, ??bb03_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0CH,		00H,	036H
$DGS	END_BLK, ??eb03_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0FH
$DGS	END_BLK, ??eb01_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 010H
$DGS	BEG_BLK, ??bb04_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 011H,		00H,	03AH
$DGS	END_BLK, ??eb04_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 013H
$DGS	BEG_BLK, ??bb05_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 013H,		00H,	03CH
$DGS	BEG_BLK, ??bb06_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 014H,		00H,	040H
$DGS	END_BLK, ??eb06_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 016H
$DGS	BEG_BLK, ??bb07_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 016H,		00H,	00H
$DGS	END_BLK, ??eb07_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 018H
$DGS	END_BLK, ??eb05_convertASCII2Hex,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 019H
$DGS	END_FUN, ??ef_convertASCII2Hex,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01CH
$DGS	GLV_SYM, _convertHex2ASCII_HighNibble,	U,	U,	02H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	059H,	01H,	00H
$DGS	BEG_FUN, ??bf_convertHex2ASCII_HighNibble,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 027H,		04H,	04FH
$DGS	FUN_ARG, _hexdigit,	02H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	AUT_VAR, _result,	01H,	0FFFFH,	02H,	01H,	00H,	00H
$DGS	AUT_VAR, _value,	00H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_convertHex2ASCII_HighNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	053H
$DGS	END_BLK, ??eb00_convertHex2ASCII_HighNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 07H
$DGS	BEG_BLK, ??bb01_convertHex2ASCII_HighNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 07H,		00H,	00H
$DGS	END_BLK, ??eb01_convertHex2ASCII_HighNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 09H
$DGS	END_FUN, ??ef_convertHex2ASCII_HighNibble,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	GLV_SYM, _convertHex2ASCII_LowNibble,	U,	U,	02H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	06AH,	01H,	00H
$DGS	BEG_FUN, ??bf_convertHex2ASCII_LowNibble,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 033H,		04H,	060H
$DGS	FUN_ARG, _hexdigit,	02H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	AUT_VAR, _result,	01H,	0FFFFH,	02H,	01H,	00H,	00H
$DGS	AUT_VAR, _value,	00H,	0FFFFH,	0CH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_convertHex2ASCII_LowNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	064H
$DGS	END_BLK, ??eb00_convertHex2ASCII_LowNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 07H
$DGS	BEG_BLK, ??bb01_convertHex2ASCII_LowNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 07H,		00H,	00H
$DGS	END_BLK, ??eb01_convertHex2ASCII_LowNibble,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 09H
$DGS	END_FUN, ??ef_convertHex2ASCII_LowNibble,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0BH

	PUBLIC	_convertASCII2Hex
	PUBLIC	_convertHex2ASCII_HighNibble
	PUBLIC	_convertHex2ASCII_LowNibble

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
bs_S0026:
	xor	a,#080H	; 128 					;[INF] 2, 1
	cmp	a,#0C1H	; 193 					;[INF] 2, 1
	onew	ax						;[INF] 1, 1
	subc	x,a						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0026:

@@CODEL	CSEG
bs_S0027:
	xor	a,#080H	; 128 					;[INF] 2, 1
	cmp	a,#0E1H	; 225 					;[INF] 2, 1
	onew	ax						;[INF] 1, 1
	subc	x,a						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0027:

@@CODEL	CSEG
bs_S0028:
	mov	a,[hl]						;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	addw	ax,#037H	; 55 				;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	mov	[hl+1],a					;[INF] 2, 1
	ret							;[INF] 1, 6
es_S0028:

@@CODEL	CSEG
bs_S0023:
	xor	a,#080H	; 128 					;[INF] 2, 1
	cmp	a,#0BAH	; 186 					;[INF] 2, 1
	clrw	ax						;[INF] 1, 1
	addc	x,a						;[INF] 2, 1
	and	a,b						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	and	a,c						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0023:

@@CODEL	CSEG
bs_S0024:
	xor	a,#080H	; 128 					;[INF] 2, 1
	cmp	a,#0C7H	; 199 					;[INF] 2, 1
	clrw	ax						;[INF] 1, 1
	addc	x,a						;[INF] 2, 1
	and	a,b						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	and	a,c						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0024:

@@CODEL	CSEG
bs_S0025:
	xor	a,#080H	; 128 					;[INF] 2, 1
	cmp	a,#0E7H	; 231 					;[INF] 2, 1
	clrw	ax						;[INF] 1, 1
	addc	x,a						;[INF] 2, 1
	and	a,b						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	and	a,c						;[INF] 2, 1
	xch	a,x						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0025:

; *** Sub-Routine Information ***
;
; $SUB bs_S0023
;      CODE SIZE= 14 bytes
;
; $SUB bs_S0024
;      CODE SIZE= 14 bytes
;
; $SUB bs_S0025
;      CODE SIZE= 14 bytes
;
; $SUB bs_S0026
;      CODE SIZE= 9 bytes
;
; $SUB bs_S0027
;      CODE SIZE= 9 bytes
;
; $SUB bs_S0028
;      CODE SIZE= 10 bytes

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
; line   124
; line   125
; line   150
; line   151
; line   152
; line   153
; line   154
; line   155
; line   156
; line   157
; line   167
; line   168
; line   169
; line   170
; line   171
; line   172
; line   173
; line   174
; line   175
; line   197
; line   198
; line   199
; line   213
; line   214
; line   215
; line   216
; line   217
; line   218
; line   219
; line   237
; line   238
; line   239
; line   240
; line   241
; line   260
; line   264
; line   265
; line   266
; line   267
; line   268
; line   269
; line   292
; line   293
; line   294
; line   295
; line   296
; line   297
; line   298
; line   328
; line   329
; line   330
; line   331
; line   350
; line   352
; line   353
; line   354
; line   355
; line   356
; line   514
; line   515
; line   516
; line   546
; line   547
; line   548
; line   557
; line   558
; line   559
; line   570
; line   571
; line   572
; line   581
; line   582
; line   583
; line   601
; line   602
; line   603
; line   613
; line   614
; line   615
; line   628
; line   629
; line   630
; line   639
; line   640
; line   641
; line   650
; line   651
; line   652
; line   661
; line   662
; line   663
; line   673
; line   674
; line   675
; line   690
; line   691
; line   692
; line   705
; line   706
; line   707
; line   713
; line   714
; line   715
; line   721
; line   722
; line   723
; line   729
; line   730
; line   731
; line   737
; line   738
; line   739
; line   745
; line   746
; line   747
; line   753
; line   754
; line   755
; line   761
; line   762
; line   763
; line   769
; line   770
; line   771
; line   777
; line   778
; line   779
; line   785
; line   786
; line   787
; line   793
; line   794
; line   795
; line   801
; line   802
; line   803
; line   809
; line   810
; line   811
; line   817
; line   818
; line   819
; line   825
; line   826
; line   827
; line   833
; line   834
; line   835
; line   841
; line   842
; line   843
; line   849
; line   850
; line   851
; line   857
; line   858
; line   859
; line   865
; line   866
; line   867
; line   873
; line   874
; line   875
; line   881
; line   882
; line   883
; line   889
; line   890
; line   891
; line   897
; line   898
; line   899
; line   905
; line   906
; line   907
; line   913
; line   914
; line   915
; line   921
; line   922
; line   923
; line   929
; line   930
; line   931
; line   937
; line   938
; line   939
; line   945
; line   946
; line   947
; line   958
; line   959
; line   960
; line  1016
; line  1017
; line  1018
; line  1019
; line  1022
; line    10

@@CODEL	CSEG
_convertASCII2Hex:
$DGL	1,31
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_convertASCII2Hex:
; line    14
$DGL	0,5
	movw	ax,[hl+2]	; aWord 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[de]						;[INF] 1, 1
	xor	a,#080H	; 128 					;[INF] 2, 1
	cmp	a,#0B0H	; 176 					;[INF] 2, 1
	onew	ax						;[INF] 1, 1
	subc	x,a						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	mov	a,[de]						;[INF] 1, 1
	call	$!bs_S0023					;[INF] 3, 3
	or	a,x						;[INF] 2, 1
	bz	$?L0003						;[INF] 2, 4
??bb00_convertASCII2Hex:
; line    15
$DGL	0,6
	mov	a,[de]						;[INF] 1, 1
	sarw	ax,8						;[INF] 2, 1
	subw	ax,#030H	; 48 				;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
; line    16
$DGL	0,7
	shl	a,4						;[INF] 2, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
??eb00_convertASCII2Hex:
; line    17
$DGL	0,8
	br	$?L0007						;[INF] 2, 3
?L0003:
??bb01_convertASCII2Hex:
; line    18
$DGL	0,9
	movw	ax,[hl+2]	; aWord 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[de]						;[INF] 1, 1
	call	$!bs_S0026					;[INF] 3, 3
	mov	a,[de]						;[INF] 1, 1
	call	$!bs_S0024					;[INF] 3, 3
	or	a,x						;[INF] 2, 1
	bz	$?L0005						;[INF] 2, 4
??bb02_convertASCII2Hex:
; line    19
$DGL	0,10
	mov	a,[de]						;[INF] 1, 1
	sarw	ax,8						;[INF] 2, 1
	subw	ax,#037H	; 55 				;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
; line    20
$DGL	0,11
	shl	a,4						;[INF] 2, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
??eb02_convertASCII2Hex:
; line    21
$DGL	0,12
	br	$?L0007						;[INF] 2, 3
?L0005:
	movw	ax,[hl+2]	; aWord 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[de]						;[INF] 1, 1
	call	$!bs_S0027					;[INF] 3, 3
	mov	a,[de]						;[INF] 1, 1
	call	$!bs_S0025					;[INF] 3, 3
	or	a,x						;[INF] 2, 1
	bz	$?L0007						;[INF] 2, 4
??bb03_convertASCII2Hex:
; line    22
$DGL	0,13
	mov	a,[de]						;[INF] 1, 1
	sarw	ax,8						;[INF] 2, 1
	subw	ax,#057H	; 87 				;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
; line    23
$DGL	0,14
	shl	a,4						;[INF] 2, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
??eb03_convertASCII2Hex:
; line    24
?L0007:
??eb01_convertASCII2Hex:
; line    25
; line    26
$DGL	0,17
	movw	ax,[hl+2]	; aWord 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[de+1]					;[INF] 2, 1
	xor	a,#080H	; 128 					;[INF] 2, 1
	cmp	a,#0B1H	; 177 					;[INF] 2, 1
	onew	ax						;[INF] 1, 1
	subc	x,a						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
	mov	a,[de+1]					;[INF] 2, 1
	call	$!bs_S0023					;[INF] 3, 3
	or	a,x						;[INF] 2, 1
	bz	$?L0009						;[INF] 2, 4
??bb04_convertASCII2Hex:
; line    27
$DGL	0,18
	mov	a,[de+1]					;[INF] 2, 1
	sarw	ax,8						;[INF] 2, 1
	subw	ax,#030H	; 48 				;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	add	a,[hl+1]	; abyte 			;[INF] 2, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
??eb04_convertASCII2Hex:
; line    28
$DGL	0,19
	br	$?L0013						;[INF] 2, 3
?L0009:
??bb05_convertASCII2Hex:
; line    29
$DGL	0,20
	movw	ax,[hl+2]	; aWord 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[de+1]					;[INF] 2, 1
	call	$!bs_S0026					;[INF] 3, 3
	mov	a,[de+1]					;[INF] 2, 1
	call	$!bs_S0024					;[INF] 3, 3
	or	a,x						;[INF] 2, 1
	bz	$?L0011						;[INF] 2, 4
??bb06_convertASCII2Hex:
; line    30
$DGL	0,21
	mov	a,[de+1]					;[INF] 2, 1
	sarw	ax,8						;[INF] 2, 1
	subw	ax,#037H	; 55 				;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	add	a,[hl+1]	; abyte 			;[INF] 2, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
??eb06_convertASCII2Hex:
; line    31
$DGL	0,22
	br	$?L0013						;[INF] 2, 3
?L0011:
	movw	ax,[hl+2]	; aWord 			;[INF] 2, 1
	movw	de,ax						;[INF] 1, 1
	mov	a,[de+1]					;[INF] 2, 1
	call	$!bs_S0027					;[INF] 3, 3
	mov	a,[de+1]					;[INF] 2, 1
	call	$!bs_S0025					;[INF] 3, 3
	or	a,x						;[INF] 2, 1
	bz	$?L0013						;[INF] 2, 4
??bb07_convertASCII2Hex:
; line    32
$DGL	0,23
	mov	a,[de+1]					;[INF] 2, 1
	sarw	ax,8						;[INF] 2, 1
	subw	ax,#057H	; 87 				;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	add	a,[hl+1]	; abyte 			;[INF] 2, 1
	mov	[hl+1],a	; abyte 			;[INF] 2, 1
??eb07_convertASCII2Hex:
; line    33
?L0013:
??eb05_convertASCII2Hex:
; line    34
; line    36
$DGL	0,27
	mov	a,[hl+1]	; abyte 			;[INF] 2, 1
	sarw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line    37
; line    37
$DGL	0,28
??ef_convertASCII2Hex:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_convertASCII2Hex:
; line    39
_convertHex2ASCII_HighNibble:
$DGL	1,72
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_convertHex2ASCII_HighNibble:
; line    42
$DGL	0,4
	mov	a,[hl+2]	; hexdigit 			;[INF] 2, 1
	shr	a,4						;[INF] 2, 1
	mov	[hl],a	; value 				;[INF] 1, 1
; line    43
$DGL	0,5
	cmp	a,#0AH	; 10 					;[INF] 2, 1
	bnc	$?L0017						;[INF] 2, 4
??bb00_convertHex2ASCII_HighNibble:
; line    44
$DGL	0,6
	mov	a,#030H	; 48 					;[INF] 2, 1
	add	a,[hl]	; value 				;[INF] 1, 1
	mov	[hl+1],a	; result 			;[INF] 2, 1
??eb00_convertHex2ASCII_HighNibble:
; line    45
$DGL	0,7
	br	$?L0018						;[INF] 2, 3
?L0017:
??bb01_convertHex2ASCII_HighNibble:
; line    46
$DGL	0,8
	call	$!bs_S0028					;[INF] 3, 3
??eb01_convertHex2ASCII_HighNibble:
; line    47
?L0018:
; line    48
$DGL	0,10
	mov	a,[hl+1]	; result 			;[INF] 2, 1
	sarw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line    49
; line    49
$DGL	0,11
??ef_convertHex2ASCII_HighNibble:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_convertHex2ASCII_HighNibble:
; line    51
_convertHex2ASCII_LowNibble:
$DGL	1,89
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_convertHex2ASCII_LowNibble:
; line    54
$DGL	0,4
	mov	a,[hl+2]	; hexdigit 			;[INF] 2, 1
	and	a,#0FH	; 15 					;[INF] 2, 1
	mov	[hl],a	; value 				;[INF] 1, 1
; line    55
$DGL	0,5
	cmp	a,#0AH	; 10 					;[INF] 2, 1
	bnc	$?L0021						;[INF] 2, 4
??bb00_convertHex2ASCII_LowNibble:
; line    56
$DGL	0,6
	mov	a,#030H	; 48 					;[INF] 2, 1
	add	a,[hl]	; value 				;[INF] 1, 1
	mov	[hl+1],a	; result 			;[INF] 2, 1
??eb00_convertHex2ASCII_LowNibble:
; line    57
$DGL	0,7
	br	$?L0022						;[INF] 2, 3
?L0021:
??bb01_convertHex2ASCII_LowNibble:
; line    58
$DGL	0,8
	call	$!bs_S0028					;[INF] 3, 3
??eb01_convertHex2ASCII_LowNibble:
; line    59
?L0022:
; line    60
$DGL	0,10
	mov	a,[hl+1]	; result 			;[INF] 2, 1
	sarw	ax,8						;[INF] 2, 1
	movw	bc,ax						;[INF] 1, 1
; line    61
; line    61
$DGL	0,11
??ef_convertHex2ASCII_LowNibble:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_convertHex2ASCII_LowNibble:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\¤u§@°Ï\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\rBLE\src\sample_app\QUtils.c
;
; $FUNC convertASCII2Hex(10)
;	bc=(pointer aWord:ax)
;	CODE SIZE= 204 bytes, CLOCK_SIZE= 288 clocks, STACK_SIZE= 10 bytes
;
; $FUNC convertHex2ASCII_HighNibble(39)
;	bc=(unsigned char hexdigit:x)
;	CODE SIZE= 34 bytes, CLOCK_SIZE= 43 clocks, STACK_SIZE= 10 bytes
;
; $FUNC convertHex2ASCII_LowNibble(51)
;	bc=(unsigned char hexdigit:x)
;	CODE SIZE= 34 bytes, CLOCK_SIZE= 43 clocks, STACK_SIZE= 10 bytes

; Target chip : R5F11AGJ
; Device file : V1.20 

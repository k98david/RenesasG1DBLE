; 78K0R C Compiler V2.72 Assembler Source        Date:13 Mar 2018 Time:18:09:30

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\src\driver\push_sw\push_sw.c 
;             -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,CFG_EXMEM
;             _NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,CFG_RBLE,
;             CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG_SAMPLE,U
;             SE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE,CLK_HOCO
;             _8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE_SECLIB -
;             i..\..\..\..\..\..\rBLE\src\sample_profile\sam -i..\..\..\..\..\s
;             rc\driver\serial -i..\..\..\..\..\src\driver\wakeup -i..\..\..\..
;             \..\src\driver\dataflash\cs -i..\..\..\..\..\src\driver\dataflash
;              -i..\..\..\..\..\src\driver\DTM2Wire -i..\..\..\..\..\src -i..\.
;             .\..\..\..\src\compiler -i..\..\..\..\..\src\arch\rl78 -i..\..\..
;             \..\..\src\arch\rl78\ll -i..\..\..\..\..\src\driver\led -i..\..\.
;             .\..\..\src\driver\led_onoff -i..\..\..\..\..\src\driver\plf -i..
;             \..\..\..\..\src\driver\port -i..\..\..\..\..\src\driver\rf -i..\
;             ..\..\..\..\src\driver\uart -i..\..\..\..\..\src\driver\push_sw -
;             i..\..\..\..\..\src\driver\push_state -i..\..\..\..\..\src\driver
;             \pktmon -i..\..\..\..\..\..\bleip\src\common -i..\..\..\..\..\..\
;             bleip\src\rwble -i.\ -i..\..\..\..\..\..\rble\src\include -i..\..
;             \..\..\..\..\rBLE\src\sample_app -i..\..\..\..\..\..\rBLE\src\sam
;             ple_app\seclib -i..\..\..\..\..\..\rBLE\src\sample_profile -zps -
;             mm -mi0 -aDefaultBuild -no -rc -xDefaultBuild -g2
; In-file   : ..\..\..\..\..\src\driver\push_sw\push_sw.c
; Asm-file  : DefaultBuild\push_sw.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 00H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		03DH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, push_sw.c
$DGS	MOD_NAM, push_sw,	00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	SEC_NAM, @@VECT0E,	U,	U,	00H,	078H,	00H,	00H
$DGS	SEC_NAM, @@VECT12,	U,	U,	00H,	078H,	00H,	00H
$DGS	LAB_SYM, bs_S0012,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0012,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0011,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0011,	U,	U,	00H,	06H,	00H,	00H
$DGS	STA_SYM, _Call_Back,	U,	U,	01H,	03H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	GLV_SYM, _push_sw2_start,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	023H,	01H,	00H
$DGS	BEG_FUN, ??bf_push_sw2_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 03EH,		04H,	023H
$DGS	FUN_ARG, _cb,		00H,	0FFFFH,	01H,	09H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	END_FUN, ??ef_push_sw2_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	GLV_SYM, _push_sw1_start,	U,	U,	01H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	02BH,	01H,	00H
$DGS	BEG_FUN, ??bf_push_sw1_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 057H,		04H,	02BH
$DGS	FUN_ARG, _cb,		00H,	0FFFFH,	01H,	09H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	END_FUN, ??ef_push_sw1_start,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	STA_SYM, _dummy_cb,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	031H,	01H,	00H
$DGS	BEG_FUN, ??bf_dummy_cb,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 070H,		00H,	031H
$DGS	END_FUN, ??ef_dummy_cb,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	GLV_SYM, _push_sw2_interrupt,	U,	U,	0E001H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	037H,	00H,	00H
$DGS	BEG_FUN, ??bf_push_sw2_interrupt,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 07EH,		016H,	037H
$DGS	END_FUN, ??ef_push_sw2_interrupt,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0CH
$DGS	GLV_SYM, _push_sw1_interrupt,	U,	U,	0E001H,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	03DH,	00H,	00H
$DGS	BEG_FUN, ??bf_push_sw1_interrupt,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 08CH,		016H,	03DH
$DGS	END_FUN, ??ef_push_sw1_interrupt,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 09H
$DGS	GLV_SYM, _@vect0e,	U,	U,	00H,	026H,	00H,	00H
$DGS	GLV_SYM, _@vect12,	U,	U,	00H,	026H,	00H,	00H
$DGS	GLV_SYM, _@SEGAX,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _G1D_Sleep_flag,	U,	U,	0CH,	02H,	00H,	00H
$DGS	GLV_SYM, _gKeyPressed1,	U,	U,	0CH,	02H,	00H,	00H
$DGS	GLV_SYM, _APP_Set_RunCmd,	U,	U,	01H,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _gKeyPressed2,	U,	U,	0CH,	02H,	00H,	00H
$DGS	GLV_SYM, _@SEGDE,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _@RTARG0,	U,	U,	00H,	02H,	00H,	00H

	EXTRN	_@SEGAX
	EXTRN	_@SEGDE
	EXTRN	_@RTARG0
	EXTRN	_G1D_Sleep_flag
	EXTRN	_gKeyPressed1
	EXTRN	_APP_Set_RunCmd
	EXTRN	_gKeyPressed2
	PUBLIC	_push_sw1_interrupt
	PUBLIC	_push_sw2_interrupt
	PUBLIC	_push_sw2_start
	PUBLIC	_push_sw1_start
	PUBLIC	_@vect0e
	PUBLIC	_@vect12

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP
	DG	_dummy_cb

@@INIT	DSEG	BASEP
_Call_Back:	DS	(4)

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
bs_S0012:
	mov	a,!PIOR						;[INF] 3, 1
	and	a,#0EFH	; 239 					;[INF] 2, 1
	mov	!PIOR,a						;[INF] 3, 1
	ret							;[INF] 1, 6
es_S0012:

@@CODEL	CSEG
bs_S0011:
	movw	ax,[hl]						;[INF] 1, 1
	movw	!_Call_Back,ax					;[INF] 3, 1
	mov	a,[hl+2]					;[INF] 2, 1
	mov	!_Call_Back+2,a					;[INF] 3, 1
	ret							;[INF] 1, 6
es_S0011:

; *** Sub-Routine Information ***
;
; $SUB bs_S0011
;      CODE SIZE= 10 bytes
;
; $SUB bs_S0012
;      CODE SIZE= 9 bytes

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
; line    21
; line    16
; line    17
; line    18
; line    19
; line    20
; line    21
; line    23
; line   321
; line   736
; line   845
; line   856
; line   869
; line   872
; line   876
; line   880
; line   578
; line  1621
; line  1627
; line  1633
; line  1650
; line  1656
; line  1663
; line  1669
; line  1676
; line  1684
; line  1695
; line  1703
; line  1711
; line  1729
; line  1744
; line  1751
; line  1763
; line  1777
; line  1786
; line  1798
; line  1804
; line  1816
; line  1822
; line  1830
; line  1835
; line  1844
; line  1853
; line  1862
; line  1877
; line  1891
; line  1903
; line  1919
; line  1934
; line  1946
; line  1957
; line  1967
; line  1977
; line  1989
; line  2001
; line  2012
; line  2021
; line  2030
; line  2038
; line  2048
; line  2058
; line  2069
; line  2080
; line  2088
; line  2096
; line  2105
; line  2113
; line  2127
; line  2138
; line  2146
; line  2154
; line  2166
; line  2174
; line  2182
; line  2191
; line  2202
; line  2214
; line  2225
; line  2253
; line  2292
; line  2301
; line  2316
; line  2338
; line  2355
; line  2367
; line  2425
; line  2435
; line  2447
; line  2458
; line  2466
; line  2473
; line  2488
; line  2496
; line  2506
; line  2529
; line  2539
; line  2549
; line  2560
; line  2588
; line  2597
; line  2610
; line  2629
; line  2641
; line  2650
; line  2679
; line  2691
; line  2713
; line  2725
; line  2739
; line  2755
; line  2785
; line  2796
; line  2802
; line  2810
; line  2817
; line  2823
; line  2834
; line  2856
; line  2867
; line  2883
; line  2891
; line  2899
; line  2905
; line  2911
; line  2944
; line  2952
; line  2966
; line  2978
; line  2990
; line  3001
; line  3011
; line  3040
; line  3048
; line  3069
; line  3078
; line  3087
; line  3098
; line  3122
; line  3134
; line  3175
; line  3341
; line  3343
; line  3361
; line  3445
; line  3448
; line  3486
; line  3760
; line  3762
; line  3779
; line  3816
; line  3854
; line  3856
; line  3857
; line  3875
; line  3912
; line  3965
; line  3967
; line  3968
; line  3991
; line  4053
; line  4117
; line  4119
; line  4120
; line  4139
; line  4189
; line  4248
; line  4250
; line  4251
; line  4284
; line  4375
; line  4441
; line  4522
; line  4524
; line  4525
; line  4526
; line  4543
; line  4594
; line  4640
; line  4642
; line  4643
; line  4663
; line  4720
; line  4781
; line  4783
; line  4784
; line  4807
; line  4870
; line  4939
; line  4941
; line  4942
; line  4966
; line  5035
; line  5108
; line  5110
; line  5111
; line  5138
; line  5218
; line  5300
; line  5302
; line  5303
; line  5326
; line  5390
; line  5453
; line  5455
; line  5456
; line  5479
; line  5546
; line  5612
; line  5614
; line  5615
; line  5643
; line  5722
; line  5801
; line  5803
; line  5804
; line  5826
; line  5887
; line  5951
; line  5953
; line  5954
; line  5976
; line  6038
; line  6106
; line  6108
; line  6109
; line  6134
; line  6225
; line  6227
; line  6231
; line  6236
; line  6239
; line  6242
; line  6243
; line  6244
; line  6245
; line  6246
; line  6247
; line  6248
; line  6249
; line  6250
; line  6251
; line  6252
; line  6253
; line  6254
; line  6255
; line  6256
; line  6257
; line  6258
; line  6259
; line  6260
; line  6261
; line  6262
; line  6263
; line  6264
; line  6265
; line  6266
; line  6267
; line  6268
; line  6271
; line  6272
; line  6273
; line  6274
; line  6275
; line  6276
; line  6277
; line  6280
; line  6281
; line  6282
; line  6283
; line  6284
; line  6285
; line  6286
; line  6287
; line  6288
; line  6289
; line  6290
; line  6291
; line  6292
; line  6295
; line  6296
; line  6297
; line  6298
; line  6299
; line  6302
; line  6303
; line  6304
; line  6305
; line  6306
; line  6307
; line  6308
; line  6311
; line  6312
; line  6313
; line  6314
; line  6315
; line  6316
; line  6317
; line  6318
; line  6319
; line  6322
; line  6323
; line  6324
; line  6325
; line  6326
; line  6327
; line  6328
; line  6331
; line  6332
; line  6333
; line  6334
; line  6335
; line  6336
; line  6337
; line  6338
; line  6339
; line  6340
; line  6341
; line  6342
; line  6343
; line  6344
; line  6345
; line  6346
; line  6347
; line  6348
; line  6349
; line  6350
; line  6351
; line  6352
; line  6355
; line  6356
; line  6357
; line  6358
; line  6359
; line  6360
; line  6361
; line  6364
; line  6365
; line  6366
; line  6367
; line  6368
; line  6369
; line  6370
; line  6371
; line  6374
; line  6375
; line  6376
; line  6377
; line  6378
; line  6379
; line  6380
; line  6381
; line  6382
; line  6385
; line  6386
; line  6387
; line  6388
; line  6389
; line  6390
; line  6391
; line  6392
; line  6393
; line  6394
; line  6397
; line  6398
; line  6399
; line  6400
; line  6401
; line  6402
; line  6403
; line  6404
; line  6405
; line  6406
; line  6407
; line  6408
; line  6409
; line  6412
; line  6413
; line  6414
; line  6415
; line  6416
; line  6417
; line  6418
; line  6419
; line  6420
; line  6423
; line  6424
; line  6425
; line  6426
; line  6427
; line  6428
; line  6429
; line  6430
; line  6431
; line  6434
; line  6435
; line  6436
; line  6437
; line  6438
; line  6439
; line  6440
; line  6441
; line  6442
; line  6443
; line  6444
; line  6445
; line  6448
; line  6449
; line  6450
; line  6451
; line  6452
; line  6453
; line  6454
; line  6455
; line  6456
; line  6459
; line  6460
; line  6461
; line  6462
; line  6463
; line  6464
; line  6465
; line  6466
; line  6467
; line  6470
; line  6471
; line  6472
; line  6473
; line  6474
; line  6475
; line  6476
; line  6477
; line  6478
; line  6479
; line  6480
; line  6481
; line  6482
; line  6483
; line  6484
; line  6485
; line  6486
; line  6487
; line    79
; line    86
; line    93
; line   127
; line   149
; line   218
; line   284
; line   286
; line   287
; line   290
; line   291
; line   292
; line   293
; line   294
; line   295
; line   296
; line   297
; line    44
; line    45
; line    46
; line    52
; line    54
; line    55
; line    56
; line    57
; line    58
; line    59
; line    60
; line    61
; line    62
; line    63
; line    64
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
; line    66
; line    76
; line    77
; line    78
; line    79
; line    80
; line    84
; line    85
; line    86
; line    90
; line    91
; line    92
; line    93
; line    94
; line    96
; line    97
; line    98
; line    99
; line    10
; line    11
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
; line    86
; line    87
; line    88
; line    90
; line    91
; line    10
; line    11
; line    12
; line    13
; line    27
; line    33
; line    60
; line    62
; line    63
; line    64
; line    71
; line    76
; line   108
; line   112
; line   113
; line   114
; line    47
; line    49
; line    50
; line    51
; line    55
; line    62

@@CODEL	CSEG
_push_sw2_start:
$DGL	1,27
	push	hl						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_push_sw2_start:
; line    63
$DGL	0,2
	call	$!bs_S0011					;[INF] 3, 3
; line    66
$DGL	0,5
	call	$!bs_S0012					;[INF] 3, 3
; line    68
$DGL	0,7
	set1	PM1.6						;[INF] 3, 2
; line    70
$DGL	0,9
	set1	!PU1.6						;[INF] 4, 2
; line    72
$DGL	0,11
	set1	MK0L.7						;[INF] 3, 2
; line    73
$DGL	0,12
	clr1	IF0L.7						;[INF] 3, 2
; line    76
$DGL	0,15
	clr1	PR10L.7						;[INF] 3, 2
; line    77
$DGL	0,16
	clr1	PR00L.7						;[INF] 3, 2
; line    79
$DGL	0,18
	clr1	EGP0.5						;[INF] 3, 2
; line    80
$DGL	0,19
	set1	EGN0.5						;[INF] 3, 2
; line    82
$DGL	0,21
	clr1	IF0L.7						;[INF] 3, 2
; line    83
$DGL	0,22
	clr1	MK0L.7						;[INF] 3, 2
; line    84
$DGL	0,23
??ef_push_sw2_start:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_push_sw2_start:
; line    87
_push_sw1_start:
$DGL	1,35
	push	hl						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_push_sw1_start:
; line    88
$DGL	0,2
	call	$!bs_S0011					;[INF] 3, 3
; line    91
$DGL	0,5
	call	$!bs_S0012					;[INF] 3, 3
; line    93
$DGL	0,7
	set1	PM3.0						;[INF] 3, 2
; line    95
$DGL	0,9
	set1	!PU3.0						;[INF] 4, 2
; line    97
$DGL	0,11
	set1	MK0L.5						;[INF] 3, 2
; line    98
$DGL	0,12
	clr1	IF0L.5						;[INF] 3, 2
; line   101
$DGL	0,15
	clr1	PR10L.5						;[INF] 3, 2
; line   102
$DGL	0,16
	clr1	PR00L.5						;[INF] 3, 2
; line   104
$DGL	0,18
	clr1	EGP0.3						;[INF] 3, 2
; line   105
$DGL	0,19
	set1	EGN0.3						;[INF] 3, 2
; line   107
$DGL	0,21
	clr1	IF0L.5						;[INF] 3, 2
; line   108
$DGL	0,22
	clr1	MK0L.5						;[INF] 3, 2
; line   109
$DGL	0,23
??ef_push_sw1_start:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_push_sw1_start:
; line   112
_dummy_cb:
$DGL	1,43
??bf_dummy_cb:
; line   114
$DGL	0,3
??ef_dummy_cb:
	ret							;[INF] 1, 6
??ee_dummy_cb:
; line   126

@@BASE	CSEG	BASE
_push_sw2_interrupt:
$DGL	1,49
	push	ax						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	de						;[INF] 1, 1
	push	hl						;[INF] 1, 1
	mov	c,#0CH						;[INF] 2, 1
	dec	c						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	movw	ax,_@SEGAX[c]					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	bnz	$$-6						;[INF] 2, 4
	mov	a,ES						;[INF] 2, 1
	mov	x,a						;[INF] 1, 1
	mov	a,CS						;[INF] 2, 1
	push	ax						;[INF] 1, 1
??bf_push_sw2_interrupt:
; line   127
$DGL	0,2
	oneb	!_G1D_Sleep_flag				;[INF] 3, 1
; line   128
$DGL	0,3
	oneb	!_gKeyPressed1					;[INF] 3, 1
; line   129
$DGL	0,4
	movw	ax,#019H	; 25 				;[INF] 3, 1
	call	!!_APP_Set_RunCmd				;[INF] 4, 3
; line   137
$DGL	0,12
??ef_push_sw2_interrupt:
	pop	ax						;[INF] 1, 1
	mov	CS,a						;[INF] 2, 1
	mov	a,x						;[INF] 1, 1
	mov	ES,a						;[INF] 2, 1
	movw	de,#_@SEGAX					;[INF] 3, 1
	mov	c,#06H						;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	movw	[de],ax						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	bnz	$$-5						;[INF] 2, 4
	pop	hl						;[INF] 1, 1
	pop	de						;[INF] 1, 1
	pop	bc						;[INF] 1, 1
	pop	ax						;[INF] 1, 1
	reti							;[INF] 2, 6
??ee_push_sw2_interrupt:
; line   140
_push_sw1_interrupt:
$DGL	1,55
	push	ax						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	de						;[INF] 1, 1
	push	hl						;[INF] 1, 1
	mov	c,#0CH						;[INF] 2, 1
	dec	c						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	movw	ax,_@SEGAX[c]					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	bnz	$$-6						;[INF] 2, 4
	mov	a,ES						;[INF] 2, 1
	mov	x,a						;[INF] 1, 1
	mov	a,CS						;[INF] 2, 1
	push	ax						;[INF] 1, 1
??bf_push_sw1_interrupt:
; line   141
$DGL	0,2
	oneb	!_G1D_Sleep_flag				;[INF] 3, 1
; line   142
$DGL	0,3
	oneb	!_gKeyPressed2					;[INF] 3, 1
; line   143
$DGL	0,4
	movw	ax,#019H	; 25 				;[INF] 3, 1
	call	!!_APP_Set_RunCmd				;[INF] 4, 3
; line   148
$DGL	0,9
??ef_push_sw1_interrupt:
	pop	ax						;[INF] 1, 1
	mov	CS,a						;[INF] 2, 1
	mov	a,x						;[INF] 1, 1
	mov	ES,a						;[INF] 2, 1
	movw	de,#_@SEGAX					;[INF] 3, 1
	mov	c,#06H						;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	movw	[de],ax						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	incw	de						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	bnz	$$-5						;[INF] 2, 4
	pop	hl						;[INF] 1, 1
	pop	de						;[INF] 1, 1
	pop	bc						;[INF] 1, 1
	pop	ax						;[INF] 1, 1
	reti							;[INF] 2, 6
??ee_push_sw1_interrupt:

@@VECT0E	CSEG	AT    000EH
_@vect0e:
	DW	_push_sw1_interrupt

@@VECT12	CSEG	AT    0012H
_@vect12:
	DW	_push_sw2_interrupt

@@CODE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Documents\�u�@��\Renesas1.21SDK-Eddystone\Renesas\BLE
;	_Software_Ver_1_21\RL78_G1D\Project_Source\renesas\src\driver\push_sw\p
;	ush_sw.c
;
; $FUNC push_sw2_start(62)
;	void=(pointer cb:ax,bc)
;	CODE SIZE= 47 bytes, CLOCK_SIZE= 57 clocks, STACK_SIZE= 10 bytes
;
; $FUNC push_sw1_start(87)
;	void=(pointer cb:ax,bc)
;	CODE SIZE= 47 bytes, CLOCK_SIZE= 57 clocks, STACK_SIZE= 10 bytes
;
; $FUNC dummy_cb(112)
;	void=(void)
;	CODE SIZE= 1 bytes, CLOCK_SIZE= 6 clocks, STACK_SIZE= 0 bytes
;
; $FUNC push_sw2_interrupt(126)
;	void=(void)
;	CODE SIZE= 57 bytes, CLOCK_SIZE= 48 clocks, STACK_SIZE= 26 bytes
;
; $CALL APP_Set_RunCmd(129)
;	void=(unsigned short:ax)
;
; $FUNC push_sw1_interrupt(140)
;	void=(void)
;	CODE SIZE= 57 bytes, CLOCK_SIZE= 48 clocks, STACK_SIZE= 26 bytes
;
; $CALL APP_Set_RunCmd(143)
;	void=(unsigned short:ax)

; Target chip : R5F11AGJ
; Device file : V1.20 

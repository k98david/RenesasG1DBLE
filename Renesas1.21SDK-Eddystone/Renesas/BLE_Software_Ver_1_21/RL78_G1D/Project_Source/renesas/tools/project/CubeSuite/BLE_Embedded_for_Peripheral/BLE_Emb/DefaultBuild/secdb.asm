; 78K0R C Compiler V2.72 Assembler Source        Date:15 Dec 2017 Time:16:48:21

; Command   : -cf11agj -yC:\Program Files (x86)\Renesas Electronics\CS+\CACX\De
;             vice\RL78\Devicefile ..\..\..\..\..\..\rBLE\src\sample_app\seclib
;             \secdb.c -oDefaultBuild -_msgoff -qwvjl3 -dCFG_FULLEMB,CFG_CON=1,
;             CFG_EXMEM_NOT_PRESENT,CFG_BLECORE_10,CFG_PROFEMB,CFG_SECURITY_ON,
;             CFG_RBLE,CFG_USE_EEL,CFG_FW_NAK,CONFIG_EMBEDDED,_USE_REL_RL78,CFG
;             _SAMPLE,USE_SAMPLE_PROFILE,noCFG_USE_PEAK,noUSE_FW_UPDATE_PROFILE
;             ,CLK_HOCO_8MHZ,CLK_SUB_XT1,noCFG_PKTMON,CFG_SECLIB_BOND_NUM=4,USE
;             _SECLIB -i..\..\..\..\..\src\driver\serial -i..\..\..\..\..\src\d
;             river\wakeup -i..\..\..\..\..\src\driver\dataflash\cs -i..\..\..\
;             ..\..\src\driver\dataflash -i..\..\..\..\..\src\driver\DTM2Wire -
;             i..\..\..\..\..\src -i..\..\..\..\..\src\compiler -i..\..\..\..\.
;             .\src\arch\rl78 -i..\..\..\..\..\src\arch\rl78\ll -i..\..\..\..\.
;             .\src\driver\led -i..\..\..\..\..\src\driver\led_onoff -i..\..\..
;             \..\..\src\driver\plf -i..\..\..\..\..\src\driver\port -i..\..\..
;             \..\..\src\driver\rf -i..\..\..\..\..\src\driver\uart -i..\..\..\
;             ..\..\src\driver\push_sw -i..\..\..\..\..\src\driver\push_state -
;             i..\..\..\..\..\src\driver\pktmon -i..\..\..\..\..\..\bleip\src\c
;             ommon -i..\..\..\..\..\..\bleip\src\rwble -i.\ -i..\..\..\..\..\.
;             .\rble\src\include -i..\..\..\..\..\..\rBLE\src\sample_app -i..\.
;             .\..\..\..\..\rBLE\src\sample_app\seclib -i..\..\..\..\..\..\rBLE
;             \src\sample_profile -zps -mm -mi0 -aDefaultBuild -no -rc -xDefaul
;             tBuild -g2
; In-file   : ..\..\..\..\..\..\rBLE\src\sample_app\seclib\secdb.c
; Asm-file  : DefaultBuild\secdb.asm
; Para-file : 

$PROCESSOR(F11AGJ)
$DEBUG
$NODEBUGA
$KANJICODE SJIS
$TOL_INF	03FH, 0272H, 02H, 04000H, 00H, 00H, 00H

$DGS	FIL_NAM, .file,		022CH,	0FFFEH,	03FH,	067H,	01H,	00H
$DGS	AUX_FIL, secdb.c
$DGS	MOD_NAM, secdb,		00H,	0FFFEH,	00H,	077H,	00H,	00H
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
$DGS	ENM_TAG, .49fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		01AH
$DGS	MEB_ENM, _SECDB_STATE_NONE,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_STATE_INIT_COMP,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_STATE_ACCESSING,	02H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 013H,		01H
$DGS	ENM_TAG, .50fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		027H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_NONE,	00H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_FLASH_MANAGEMENT_START_COMP,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_FLASH_ACCESS_LD_IRK_COMP,	02H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_FLASH_ACCESS_MD_COMP,	04H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_FLASH_ACCESS_BOND_COMP,	08H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_FLASH_MANAGEMENT_STOP_COMP,	010H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_FLASH_OPERATION_CLEANUP_COMP,	020H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_DONE,	03FH,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_SEQ_STATE_DIALLOWD_ERR_HANDLE,	040H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 01AH,		01H
$DGS	STR_STR, _RBLE_KEY_VALUE_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 010H,		02DH
$DGS	MEB_STR, _key,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	010H,	010H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		010H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 027H,		010H
$DGS	STR_STR, _secdb_irk_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 012H,		034H
$DGS	MEB_STR, _valid,	00H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _val,		02H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 027H,		00H,	010H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		012H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 02DH,		012H
$DGS	STR_STR, _secdb_md_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		03AH
$DGS	MEB_STR, _data,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	04H,	04H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 034H,		04H
$DGS	STR_STR, _RBLE_BD_ADDR_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		040H
$DGS	MEB_STR, _addr,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	06H,	06H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 03AH,		06H
$DGS	STR_STR, _RBLE_RAND_NB_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 08H,		046H
$DGS	MEB_STR, _nb,		00H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	08H,	08H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		08H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 040H,		08H
$DGS	STR_STR, _secdb_ltk_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 01CH,		050H
$DGS	MEB_STR, _valid,	00H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _val,		02H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 027H,		00H,	010H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _ediv,		012H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _nb,		014H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 040H,		00H,	08H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		01CH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 046H,		01CH
$DGS	STR_STR, _secdb_bond_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 054H,		060H
$DGS	MEB_STR, _sec_prop,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _key_size,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _peer_addr,	02H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 03AH,		00H,	06H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _peer_addr_type,	08H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _dummy,	09H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _pd_irk,	0AH,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 02DH,		00H,	012H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _pd_ltk,	01CH,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 046H,		00H,	01CH,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _ld_ltk,	038H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 046H,		00H,	01CH,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		054H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 050H,		054H
$DGS	STR_STR, _secdb_db_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 0166H,		06AH
$DGS	MEB_STR, _ld_irk,	00H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 02DH,		00H,	012H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _md,		012H,	0FFFFH,	08H,	08H,	01H,	00H
$DGS	AUX_STR, 034H,		00H,	04H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _bonds,	016H,	0FFFFH,	08H,	08H,	01H,	03H
$DGS	AUX_STR, 050H,		00H,	0150H,	04H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		0166H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 060H,		0166H
$DGS	STR_STR, _secdb_info_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 013H,		07DH
$DGS	MEB_STR, _vs_callback,	00H,	0FFFFH,	01H,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	MEB_STR, _db_callback,	04H,	0FFFFH,	01H,	08H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	MEB_STR, _state,	08H,	0FFFFH,	0AH,	08H,	01H,	00H
$DGS	AUX_STR, 013H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _seq_state,	09H,	0FFFFH,	0AH,	08H,	01H,	00H
$DGS	AUX_STR, 01AH,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _db,		0AH,	0FFFFH,	08H,	08H,	01H,	01H
$DGS	AUX_STR, 060H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	MEB_STR, _cmd,		0CH,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _saved_bond_bitmap,	0DH,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _bond_bitmap,	0FH,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _ld_irk,	011H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _md,		012H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		013H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 06AH,		013H
$DGS	STR_STR, _RBLE_VS_FLASH_ACCESS_PARAM_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		087H
$DGS	MEB_STR, _cmd,		00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _id,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _size,		02H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _reserved,	03H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _addr,		04H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 07DH,		06H
$DGS	STR_STR, _RBLE_VS_Flash_Management_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		08DH
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _cmd,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 087H,		02H
$DGS	STR_STR, _RBLE_VS_Flash_Access_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		097H
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _cmd,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _id,		02H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _size,		03H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _addr,		04H,	0FFFFH,	0CH,	08H,	01H,	01H
$DGS	AUX_STR, 00H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 08DH,		06H
$DGS	STR_STR, _RBLE_VS_Flash_Operation_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		09DH
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _cmd,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 097H,		02H
$DGS	STR_STR, _RBLE_VS_Test_End_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		0A4H
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _reserved,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _nb_packet_received,	02H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 09DH,		04H
$DGS	STR_STR, _RBLE_VS_Read_Test_RSSI_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		0AAH
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _rssi,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0A4H,		02H
$DGS	STR_STR, _RBLE_VS_GPIO_Dir_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		0B0H
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _mask,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0AAH,		02H
$DGS	STR_STR, _RBLE_VS_GPIO_Access_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		0B6H
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _value,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0B0H,		02H
$DGS	STR_STR, _RBLE_VS_Flash_Get_Space_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		0BDH
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _reserved,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _size,		02H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0B6H,		04H
$DGS	STR_STR, _RBLE_VS_Flash_Get_EEL_Ver_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 019H,		0C4H
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _version,	01H,	0FFFFH,	0CH,	08H,	01H,	03H
$DGS	AUX_STR, 00H,		00H,	018H,	018H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		019H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0BDH,		019H
$DGS	STR_STR, _RBLE_VS_Adapt_Enable_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 02H,		0CAH
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _cmd,		01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		02H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0C4H,		02H
$DGS	STR_STR, _RBLE_VS_Adapt_State_Ind_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 01H,		0CFH
$DGS	MEB_STR, _state,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0CAH,		01H
$DGS	STR_STR, _RBLE_VS_RF_Control_Comp_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 01H,		0D4H
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0CFH,		01H
$DGS	STR_STR, _RBLE_VS_Command_Disallowed_Ind_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 04H,		0DBH
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _reserved,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _opcode,	02H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	END_STR, .eos,		04H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0D4H,		04H
$DGS	UNI_TAG, _Event_Vs_Parameter_u,	00H,	0FFFEH,	09H,	0CH,	01H,	00H
$DGS	AUX_TAG, 019H,		0FAH
$DGS	MEB_UNI, _status,	00H,	0FFFFH,	0CH,	0BH,	00H,	00H
$DGS	MEB_UNI, _test_end_cmp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 09DH,		00H,	04H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _test_rssi_cmp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0A4H,		00H,	02H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _gpio_dir_cmp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0AAH,		00H,	02H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _gpio_access_cmp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0B0H,		00H,	02H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _management_comp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 087H,		00H,	02H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _access_comp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 08DH,		00H,	06H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _operation_comp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 097H,		00H,	02H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _get_space,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0B6H,		00H,	04H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _get_eel_ver,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0BDH,		00H,	019H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _adapt_enable_cmp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0C4H,		00H,	02H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _adapt_state_ind,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0CAH,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _rf_control_cmp,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0CFH,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_UNI, _cmd_disallowed_ind,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0D4H,		00H,	04H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		019H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0DBH,		019H
$DGS	STR_STR, _RBLE_VS_EVENT_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 01BH,		0102H
$DGS	MEB_STR, _type,		00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _reserved,	01H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _param,	02H,	0FFFFH,	09H,	08H,	01H,	00H
$DGS	AUX_STR, 0DBH,		00H,	019H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		01BH,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0FAH,		01BH
$DGS	ENM_TAG, .3fake,	00H,	0FFFEH,	0AH,	0FH,	01H,	00H
$DGS	AUX_TAG, 01H,		0108H
$DGS	MEB_ENM, _SECDB_EVENT_LOAD_COMP,	01H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	MEB_ENM, _SECDB_EVENT_SAVE_COMP,	02H,	0FFFFH,	04H,	010H,	00H,	00H
$DGS	END_STR, .eos,		01H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0102H,		01H
$DGS	STR_STR, _SecDb_Access_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 05H,		0110H
$DGS	MEB_STR, _status,	00H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _bond_bitmap,	01H,	0FFFFH,	0DH,	08H,	00H,	00H
$DGS	MEB_STR, _ld_irk,	03H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	MEB_STR, _md,		04H,	0FFFFH,	0CH,	08H,	00H,	00H
$DGS	END_STR, .eos,		05H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0108H,		05H
$DGS	UNI_TAG, .4fake,	00H,	0FFFEH,	09H,	0CH,	01H,	00H
$DGS	AUX_TAG, 05H,		0116H
$DGS	MEB_UNI, _access,	00H,	0FFFFH,	08H,	0BH,	01H,	00H
$DGS	AUX_STR, 0108H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		05H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0110H,		05H
$DGS	STR_STR, _secdb_event_t,	00H,	0FFFEH,	08H,	0AH,	01H,	00H
$DGS	AUX_TAG, 06H,		011EH
$DGS	MEB_STR, _type,		00H,	0FFFFH,	0AH,	08H,	01H,	00H
$DGS	AUX_STR, 0102H,		00H,	01H,	00H,	00H,	00H,	00H,	00H
$DGS	MEB_STR, _param,	01H,	0FFFFH,	09H,	08H,	01H,	00H
$DGS	AUX_STR, 0110H,		00H,	05H,	00H,	00H,	00H,	00H,	00H
$DGS	END_STR, .eos,		06H,	0FFFFH,	00H,	066H,	01H,	00H
$DGS	AUX_EOS, 0116H,		06H
$DGS	LAB_SYM, bs_F0124,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0124,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_F0122,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0122,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0123,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0123,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_F0121,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_F0121,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, bs_S0120,	U,	U,	00H,	06H,	00H,	00H
$DGS	LAB_SYM, es_S0120,	U,	U,	00H,	06H,	00H,	00H
$DGS	STA_SYM, _info,		U,	U,	08H,	03H,	01H,	00H
$DGS	AUX_STR, 06AH,		00H,	013H,	00H,	00H,	00H,	00H,	00H
$DGS	GLV_SYM, _SecDb_Init,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0134H,	01H,	00H
$DGS	BEG_FUN, ??bf_SecDb_Init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 07EH,		04H,	0134H
$DGS	FUN_ARG, _vs_callback,	00H,	0FFFFH,	01H,	09H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	FUN_ARG, _db_callback,	0AH,	0FFFFH,	01H,	09H,	01H,	09H
$DGS	AUX_STR, 00H,		00H,	04H,	00H,	00H,	00H,	00H,	02H
$DGS	END_FUN, ??ef_SecDb_Init,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	GLV_SYM, _SecDb_Load,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	013FH,	01H,	00H
$DGS	BEG_FUN, ??bf_SecDb_Load,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 092H,		02H,	013FH
$DGS	FUN_ARG, _db,		00H,	0FFFFH,	08H,	09H,	01H,	01H
$DGS	AUX_STR, 060H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _bond_bitmap,	08H,	0FFFFH,	0DH,	09H,	00H,	00H
$DGS	FUN_ARG, _ld_irk,	0AH,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _md,		0CH,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	END_FUN, ??ef_SecDb_Load,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	GLV_SYM, _SecDb_Save,	U,	U,	0CH,	026H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	014AH,	01H,	00H
$DGS	BEG_FUN, ??bf_SecDb_Save,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0A1H,		02H,	014AH
$DGS	FUN_ARG, _db,		00H,	0FFFFH,	08H,	09H,	01H,	01H
$DGS	AUX_STR, 060H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _bond_bitmap,	08H,	0FFFFH,	0DH,	09H,	00H,	00H
$DGS	FUN_ARG, _ld_irk,	0AH,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _md,		0CH,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	END_FUN, ??ef_SecDb_Save,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 03H
$DGS	STA_SYM, _secdb_access,	U,	U,	0CH,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	016EH,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_access,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0ABH,		02H,	0154H
$DGS	FUN_ARG, _db,		00H,	0FFFFH,	08H,	09H,	01H,	01H
$DGS	AUX_STR, 060H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	FUN_ARG, _cmd,		08H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _bond_bitmap,	0AH,	0FFFFH,	0DH,	09H,	00H,	00H
$DGS	FUN_ARG, _ld_irk,	0CH,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	FUN_ARG, _md,		0EH,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	BEG_BLK, ??bb00_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 03H,		00H,	0158H
$DGS	END_BLK, ??eb00_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 06H
$DGS	BEG_BLK, ??bb01_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 09H,		00H,	015CH
$DGS	END_BLK, ??eb01_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0CH
$DGS	BEG_BLK, ??bb02_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0FH,		00H,	0160H
$DGS	END_BLK, ??eb02_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 012H
$DGS	BEG_BLK, ??bb03_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 020H,		00H,	0164H
$DGS	END_BLK, ??eb03_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 022H
$DGS	BEG_BLK, ??bb04_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 024H,		00H,	0168H
$DGS	END_BLK, ??eb04_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 026H
$DGS	BEG_BLK, ??bb05_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 028H,		00H,	00H
$DGS	END_BLK, ??eb05_secdb_access,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 02AH
$DGS	END_FUN, ??ef_secdb_access,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 030H
$DGS	STA_SYM, _secdb_flash_sequence,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0197H,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_flash_sequence,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0DEH,		08H,	0175H
$DGS	AUT_VAR, _param,	02H,	0FFFFH,	08H,	01H,	01H,	00H
$DGS	AUX_STR, 07DH,		00H,	06H,	00H,	00H,	00H,	00H,	00H
$DGS	AUT_VAR, _bidx,		00H,	0FFFFH,	0DH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	0179H
$DGS	END_BLK, ??eb00_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	BEG_BLK, ??bb01_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0DH,		00H,	017DH
$DGS	END_BLK, ??eb01_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 010H
$DGS	BEG_BLK, ??bb02_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 012H,		00H,	0181H
$DGS	END_BLK, ??eb02_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb03_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 019H,		00H,	0185H
$DGS	END_BLK, ??eb03_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01EH
$DGS	BEG_BLK, ??bb04_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 020H,		00H,	0189H
$DGS	END_BLK, ??eb04_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 026H
$DGS	BEG_BLK, ??bb05_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 028H,		00H,	018DH
$DGS	END_BLK, ??eb05_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 02AH
$DGS	BEG_BLK, ??bb06_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 02BH,		00H,	0191H
$DGS	END_BLK, ??eb06_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 02EH
$DGS	BEG_BLK, ??bb07_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 02FH,		00H,	00H
$DGS	END_BLK, ??eb07_secdb_flash_sequence,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 031H
$DGS	END_FUN, ??ef_secdb_flash_sequence,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 032H
$DGS	STA_SYM, _secdb_vs_flash_management_comp_handler,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01BFH,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0113H,		02H,	019DH
$DGS	REG_PAR, _result,	0103H,	0FFFFH,	0108H,	011H,	01H,	01H
$DGS	AUX_STR, 087H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	BEG_BLK, ??bb00_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 02H,		00H,	019FH
$DGS	BEG_BLK, ??bb01_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 03H,		00H,	01A3H
$DGS	END_BLK, ??eb01_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05H
$DGS	BEG_BLK, ??bb02_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	01A7H
$DGS	END_BLK, ??eb02_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	BEG_BLK, ??bb03_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 09H,		00H,	01ABH
$DGS	END_BLK, ??eb03_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	BEG_BLK, ??bb04_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0CH,		00H,	01B1H
$DGS	END_BLK, ??eb04_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0EH
$DGS	END_BLK, ??eb00_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 011H
$DGS	BEG_BLK, ??bb05_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 012H,		00H,	01B3H
$DGS	BEG_BLK, ??bb06_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 014H,		00H,	01B7H
$DGS	END_BLK, ??eb06_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb07_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 018H,		00H,	00H
$DGS	END_BLK, ??eb07_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01BH
$DGS	END_BLK, ??eb05_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01CH
$DGS	END_FUN, ??ef_secdb_vs_flash_management_comp_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01DH
$DGS	STA_SYM, _secdb_vs_flash_access_comp_handler,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01E7H,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0133H,		02H,	01C5H
$DGS	REG_PAR, _result,	0103H,	0FFFFH,	0108H,	011H,	01H,	01H
$DGS	AUX_STR, 08DH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	BEG_BLK, ??bb00_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 04H,		00H,	01C7H
$DGS	BEG_BLK, ??bb01_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	01C9H
$DGS	BEG_BLK, ??bb02_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 08H,		00H,	01CFH
$DGS	END_BLK, ??eb02_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	END_BLK, ??eb01_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	BEG_BLK, ??bb03_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0CH,		00H,	01D3H
$DGS	END_BLK, ??eb03_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 0EH
$DGS	BEG_BLK, ??bb04_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 0FH,		00H,	01D7H
$DGS	END_BLK, ??eb04_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 011H
$DGS	BEG_BLK, ??bb05_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 012H,		00H,	01DDH
$DGS	END_BLK, ??eb05_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 014H
$DGS	END_BLK, ??eb00_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb06_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 018H,		00H,	01E1H
$DGS	END_BLK, ??eb06_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01CH
$DGS	BEG_BLK, ??bb07_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 01DH,		00H,	00H
$DGS	END_BLK, ??eb07_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 020H
$DGS	END_FUN, ??ef_secdb_vs_flash_access_comp_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 021H
$DGS	STA_SYM, _secdb_vs_flash_operation_comp_handler,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	01F7H,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_vs_flash_operation_comp_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0157H,		02H,	01EDH
$DGS	REG_PAR, _result,	0103H,	0FFFFH,	0108H,	011H,	01H,	01H
$DGS	AUX_STR, 097H,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	BEG_BLK, ??bb00_secdb_vs_flash_operation_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 02H,		00H,	01F1H
$DGS	END_BLK, ??eb00_secdb_vs_flash_operation_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 05H
$DGS	BEG_BLK, ??bb01_secdb_vs_flash_operation_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 06H,		00H,	00H
$DGS	END_BLK, ??eb01_secdb_vs_flash_operation_comp_handler,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 09H
$DGS	END_FUN, ??ef_secdb_vs_flash_operation_comp_handler,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0AH
$DGS	STA_SYM, _secdb_vs_callback,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	0213H,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_vs_callback,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 0167H,		02H,	01FDH
$DGS	REG_PAR, _event,	0103H,	0FFFFH,	0108H,	011H,	01H,	01H
$DGS	AUX_STR, 0FAH,		00H,	02H,	00H,	00H,	00H,	00H,	01H
$DGS	BEG_BLK, ??bb00_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 03H,		00H,	01FFH
$DGS	BEG_BLK, ??bb01_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 04H,		00H,	0201H
$DGS	BEG_BLK, ??bb02_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 012H,		00H,	0209H
$DGS	END_BLK, ??eb02_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 014H
$DGS	END_BLK, ??eb01_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 016H
$DGS	END_BLK, ??eb00_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 017H
$DGS	BEG_BLK, ??bb03_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 018H,		00H,	020BH
$DGS	BEG_BLK, ??bb04_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 019H,		00H,	00H
$DGS	END_BLK, ??eb04_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01BH
$DGS	END_BLK, ??eb03_secdb_vs_callback,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 01CH
$DGS	END_FUN, ??ef_secdb_vs_callback,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 01DH
$DGS	STA_SYM, _secdb_send_event,	U,	U,	01H,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	021CH,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_send_event,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 018AH,		08H,	021CH
$DGS	FUN_ARG, _status,	06H,	0FFFFH,	0CH,	09H,	00H,	00H
$DGS	AUT_VAR, _event,	00H,	0FFFFH,	08H,	01H,	01H,	00H
$DGS	AUX_STR, 0116H,		00H,	06H,	00H,	00H,	00H,	00H,	00H
$DGS	END_FUN, ??ef_secdb_send_event,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0EH
$DGS	STA_SYM, _secdb_ffs,	U,	U,	0DH,	03H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	022CH,	01H,	00H
$DGS	BEG_FUN, ??bf_secdb_ffs,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_BEG, 019BH,		04H,	0222H
$DGS	FUN_ARG, _val,		02H,	0FFFFH,	0DH,	09H,	00H,	00H
$DGS	AUT_VAR, _i,		00H,	0FFFFH,	0DH,	01H,	00H,	00H
$DGS	BEG_BLK, ??bb00_secdb_ffs,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 04H,		00H,	0224H
$DGS	BEG_BLK, ??bb01_secdb_ffs,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_BEG, 05H,		00H,	00H
$DGS	END_BLK, ??eb01_secdb_ffs,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 07H
$DGS	END_BLK, ??eb00_secdb_ffs,	U,	U,	00H,	064H,	01H,	00H
$DGS	AUX_END, 08H
$DGS	END_FUN, ??ef_secdb_ffs,	U,	U,	00H,	065H,	01H,	00H
$DGS	AUX_END, 0BH
$DGS	GLV_SYM, _RBLE_VS_Flash_Access,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _@SEGDE,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _@SEGAX,	U,	U,	00H,	02H,	00H,	00H
$DGS	GLV_SYM, _RBLE_VS_Enable,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _RBLE_VS_Flash_Operation,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H
$DGS	GLV_SYM, _RBLE_VS_Flash_Management,	U,	U,	0CH,	02H,	01H,	02H
$DGS	AUX_FUN, 00H,		U,	U,	00H,	01H,	00H

	EXTRN	_RBLE_VS_Flash_Access
	EXTRN	_@SEGDE
	EXTRN	_@SEGAX
	EXTRN	_RBLE_VS_Enable
	EXTRN	_RBLE_VS_Flash_Operation
	EXTRN	_RBLE_VS_Flash_Management
	PUBLIC	_SecDb_Init
	PUBLIC	_SecDb_Load
	PUBLIC	_SecDb_Save

@@BITS	BSEG

@@CNST	CSEG	MIRRORP

@@R_INIT	CSEG	UNIT64KP

@@INIT	DSEG	BASEP

@@DATA	DSEG	BASEP
_info:	DS	(19)
	DS	(1)

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
bs_F0124:
	movw	ax,#0F0H	; 240 				;[INF] 3, 1
	br	!!_secdb_send_event				;[INF] 4, 3
es_F0124:

@@CODEL	CSEG
bs_F0122:
	movw	ax,hl						;[INF] 1, 1
	addw	ax,#02H	; 2 					;[INF] 3, 1
	br	!!_RBLE_VS_Flash_Access				;[INF] 4, 3
es_F0122:

@@CODEL	CSEG
bs_S0123:
	movw	ax,!_info					;[INF] 3, 1
	or	a,x						;[INF] 2, 1
	or	a,!_info+2					;[INF] 3, 1
	ret							;[INF] 1, 6
es_S0123:

@@CODEL	CSEG
bs_F0121:
	push	hl						;[INF] 1, 1
	mov	a,_@SEGDE					;[INF] 2, 1
	mov	CS,a						;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	call	de						;[INF] 2, 3
	ret							;[INF] 1, 6
es_F0121:

@@CODEL	CSEG
bs_S0120:
	mov	a,!_info+2					;[INF] 3, 1
	mov	_@SEGAX,a					;[INF] 2, 1
	movw	ax,!_info					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	mov	a,_@SEGAX					;[INF] 2, 1
	mov	_@SEGDE,a					;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	movw	de,ax						;[INF] 1, 1
	ret							;[INF] 1, 6
es_S0120:

; *** Sub-Routine Information ***
;
; $SUB bs_S0120
;      CODE SIZE= 16 bytes
;
; $SUB bs_F0121
;      CODE SIZE= 9 bytes
;
; $SUB bs_F0122
;      CODE SIZE= 8 bytes
;
; $SUB bs_S0123
;      CODE SIZE= 9 bytes
;
; $SUB bs_F0124
;      CODE SIZE= 7 bytes

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
; line    17
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
; line    29
; line    30
; line    31
; line    32
; line    33
; line    34
; line    35
; line    36
; line    37
; line    39
; line    40
; line    41
; line    42
; line    43
; line    44
; line    45
; line    46
; line    47
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
; line    40
; line    53
; line    56
; line    64
; line    70
; line    82
; line    87
; line    94
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
; line    62
; line    67
; line    72
; line    73
; line    74
; line    79
; line    80
; line    81
; line    82
; line    83
; line   686
; line   689
; line   692
; line   711
; line   727
; line    41
; line    81
; line    98
; line   115
; line   135
; line   152
; line   169
; line   180
; line   191
; line   202
; line   212
; line   223
; line    61
; line    63
; line    64
; line    65
; line    66
; line    75
; line    92
; line   111
; line   126

@@CODEL	CSEG
_SecDb_Init:
$DGL	1,298
	push	hl						;[INF] 1, 1
	push	bc						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_SecDb_Init:
; line   128
$DGL	0,3
	movw	ax,[hl]	; vs_callback 				;[INF] 1, 1
	movw	!_info,ax					;[INF] 3, 1
	mov	a,[hl+2]	; vs_callback 			;[INF] 2, 1
	mov	!_info+2,a					;[INF] 3, 1
; line   129
$DGL	0,4
	movw	ax,[hl+10]	; db_callback 			;[INF] 2, 1
	movw	!_info+4,ax					;[INF] 3, 1
	mov	a,[hl+12]	; db_callback 			;[INF] 2, 1
	mov	!_info+6,a					;[INF] 3, 1
; line   130
$DGL	0,5
	oneb	!_info+8					;[INF] 3, 1
; line   132
$DGL	0,7
	movw	ax,#loww (_secdb_vs_callback)			;[INF] 3, 1
	mov	c,#highw (_secdb_vs_callback)			;[INF] 2, 1
	clrb	b						;[INF] 1, 1
	call	!!_RBLE_VS_Enable				;[INF] 4, 3
	clrb	b						;[INF] 1, 1
; line   133
; line   133
$DGL	0,8
??ef_SecDb_Init:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_SecDb_Init:
; line   146
_SecDb_Load:
$DGL	1,308
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_SecDb_Load:
; line   147
$DGL	0,2
	mov	a,[hl+12]	; md 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	mov	a,[hl+10]	; ld_irk 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	movw	ax,[hl+8]	; bond_bitmap 			;[INF] 2, 1
	push	ax						;[INF] 1, 1
	movw	ax,#03H	; 3 					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	movw	ax,[hl]	; db 					;[INF] 1, 1
	call	!!_secdb_access					;[INF] 4, 3
	addw	sp,#08H	; 8 					;[INF] 2, 1
	clrb	b						;[INF] 1, 1
; line   148
; line   148
$DGL	0,3
??ef_SecDb_Load:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_SecDb_Load:
; line   161
_SecDb_Save:
$DGL	1,319
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_SecDb_Save:
; line   162
$DGL	0,2
	mov	a,[hl+12]	; md 				;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	mov	a,[hl+10]	; ld_irk 			;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	push	ax						;[INF] 1, 1
	movw	ax,[hl+8]	; bond_bitmap 			;[INF] 2, 1
	push	ax						;[INF] 1, 1
	onew	ax						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	ax,[hl]	; db 					;[INF] 1, 1
	call	!!_secdb_access					;[INF] 4, 3
	addw	sp,#08H	; 8 					;[INF] 2, 1
	clrb	b						;[INF] 1, 1
; line   163
; line   163
$DGL	0,3
??ef_SecDb_Save:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_SecDb_Save:
; line   171
_secdb_access:
$DGL	1,330
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_secdb_access:
; line   173
$DGL	0,3
	clrw	ax						;[INF] 1, 1
	cmpw	ax,[hl+0]	; db 				;[INF] 3, 1
	bnz	$?L0009						;[INF] 2, 4
??bb00_secdb_access:
; line   175
$DGL	0,5
	movw	bc,#0F3H	; 243 				;[INF] 3, 1
	br	$?L0008						;[INF] 2, 3
??eb00_secdb_access:
; line   176
?L0009:
; line   179
$DGL	0,9
	mov	a,!_info+8					;[INF] 3, 1
	and	a,#01H	; 1 					;[INF] 2, 1
	dec	a						;[INF] 1, 1
	bz	$?L0013						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0014						;[INF] 2, 3
?L0013:
	clrw	ax						;[INF] 1, 1
?L0014:
	or	a,x						;[INF] 2, 1
	bz	$?L0011						;[INF] 2, 4
??bb01_secdb_access:
; line   181
$DGL	0,11
	movw	bc,#0F2H	; 242 				;[INF] 3, 1
	br	$?L0008						;[INF] 2, 3
??eb01_secdb_access:
; line   182
?L0011:
; line   185
$DGL	0,15
	mov	a,!_info+8					;[INF] 3, 1
	and	a,#02H	; 2 					;[INF] 2, 1
	cmp	a,#02H	; 2 					;[INF] 2, 1
	bnz	$?L0017						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0018						;[INF] 2, 3
?L0017:
	clrw	ax						;[INF] 1, 1
?L0018:
	or	a,x						;[INF] 2, 1
	bz	$?L0015						;[INF] 2, 4
??bb02_secdb_access:
; line   187
$DGL	0,17
	movw	bc,#0F2H	; 242 				;[INF] 3, 1
	br	$?L0008						;[INF] 2, 3
??eb02_secdb_access:
; line   188
?L0015:
; line   191
$DGL	0,21
	movw	ax,[hl]	; db 					;[INF] 1, 1
	movw	!_info+10,ax					;[INF] 3, 1
; line   192
$DGL	0,22
	mov	a,[hl+8]	; cmd 				;[INF] 2, 1
	mov	!_info+12,a					;[INF] 3, 1
; line   193
$DGL	0,23
	movw	ax,[hl+10]	; bond_bitmap 			;[INF] 2, 1
	mov	!_info+14,a					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	mov	!_info+13,a					;[INF] 3, 1
; line   194
$DGL	0,24
	movw	ax,[hl+10]	; bond_bitmap 			;[INF] 2, 1
	mov	!_info+16,a					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	mov	!_info+15,a					;[INF] 3, 1
; line   195
$DGL	0,25
	mov	a,[hl+12]	; ld_irk 			;[INF] 2, 1
	mov	!_info+17,a					;[INF] 3, 1
; line   196
$DGL	0,26
	mov	a,[hl+14]	; md 				;[INF] 2, 1
	mov	!_info+18,a					;[INF] 3, 1
; line   197
$DGL	0,27
	set1	!_info+8.1					;[INF] 4, 2
; line   200
$DGL	0,30
	mov	!_info+9,#020H	; 32 				;[INF] 4, 1
; line   202
$DGL	0,32
	cmp0	!_info+17					;[INF] 3, 1
	sknz							;[INF] 2, 1
??bb03_secdb_access:
; line   203
$DGL	0,33
	set1	!_info+9.1					;[INF] 4, 2
??eb03_secdb_access:
; line   204
?L0019:
; line   206
$DGL	0,36
	cmp0	!_info+18					;[INF] 3, 1
	sknz							;[INF] 2, 1
??bb04_secdb_access:
; line   207
$DGL	0,37
	set1	!_info+9.2					;[INF] 4, 2
??eb04_secdb_access:
; line   208
?L0021:
; line   210
$DGL	0,40
	mov	a,!_info+13					;[INF] 3, 1
	or	a,!_info+14					;[INF] 3, 1
	sknz							;[INF] 2, 1
??bb05_secdb_access:
; line   211
$DGL	0,41
	set1	!_info+9.3					;[INF] 4, 2
??eb05_secdb_access:
; line   212
?L0023:
; line   215
$DGL	0,45
	call	!!_secdb_flash_sequence				;[INF] 4, 3
; line   217
$DGL	0,47
	clrw	bc						;[INF] 1, 1
; line   218
?L0008:
; line   218
$DGL	0,48
??ef_secdb_access:
	pop	ax						;[INF] 1, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_access:
; line   222
_secdb_flash_sequence:
$DGL	1,366
	push	hl						;[INF] 1, 1
	subw	sp,#08H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_secdb_flash_sequence:
; line   226
$DGL	0,5
	mov	a,!_info+12					;[INF] 3, 1
	mov	[hl+2],a	; param 			;[INF] 2, 1
; line   229
$DGL	0,8
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#020H	; 32 					;[INF] 2, 1
	cmp	a,#020H	; 32 					;[INF] 2, 1
	bz	$?L0029						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0030						;[INF] 2, 3
?L0029:
	clrw	ax						;[INF] 1, 1
?L0030:
	or	a,x						;[INF] 2, 1
	bz	$?L0027						;[INF] 2, 4
??bb00_secdb_flash_sequence:
; line   231
$DGL	0,10
	movw	ax,#04H	; 4 					;[INF] 3, 1
	call	!!_RBLE_VS_Flash_Operation			;[INF] 4, 3
??eb00_secdb_flash_sequence:
; line   234
$DGL	0,13
	br	$!?L0051					;[INF] 3, 3
?L0027:
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#01H	; 1 					;[INF] 2, 1
	dec	a						;[INF] 1, 1
	bz	$?L0033						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0034						;[INF] 2, 3
?L0033:
	clrw	ax						;[INF] 1, 1
?L0034:
	or	a,x						;[INF] 2, 1
	bz	$?L0031						;[INF] 2, 4
??bb01_secdb_flash_sequence:
; line   236
$DGL	0,15
	clrw	ax						;[INF] 1, 1
	call	!!_RBLE_VS_Flash_Management			;[INF] 4, 3
??eb01_secdb_flash_sequence:
; line   239
$DGL	0,18
	br	$!?L0051					;[INF] 3, 3
?L0031:
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#04H	; 4 					;[INF] 2, 1
	cmp	a,#04H	; 4 					;[INF] 2, 1
	bz	$?L0037						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0038						;[INF] 2, 3
?L0037:
	clrw	ax						;[INF] 1, 1
?L0038:
	or	a,x						;[INF] 2, 1
	bz	$?L0035						;[INF] 2, 4
??bb02_secdb_flash_sequence:
; line   240
$DGL	0,19
	mov	[hl+3],#02H	; param,2 			;[INF] 3, 1
; line   241
$DGL	0,20
	mov	[hl+4],#04H	; param,4 			;[INF] 3, 1
; line   242
$DGL	0,21
	movw	ax,!_info+10					;[INF] 3, 1
	addw	ax,#012H	; 18 				;[INF] 3, 1
	movw	[hl+6],ax	; param 			;[INF] 2, 1
; line   243
$DGL	0,22
	call	$!bs_F0122					;[INF] 3, 3
??eb02_secdb_flash_sequence:
; line   246
$DGL	0,25
	br	$!?L0051					;[INF] 3, 3
?L0035:
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#02H	; 2 					;[INF] 2, 1
	cmp	a,#02H	; 2 					;[INF] 2, 1
	bz	$?L0041						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0042						;[INF] 2, 3
?L0041:
	clrw	ax						;[INF] 1, 1
?L0042:
	or	a,x						;[INF] 2, 1
	bz	$?L0039						;[INF] 2, 4
??bb03_secdb_flash_sequence:
; line   247
$DGL	0,26
	mov	[hl+3],#03H	; param,3 			;[INF] 3, 1
; line   248
$DGL	0,27
	mov	[hl+4],#012H	; param,18 			;[INF] 3, 1
; line   249
$DGL	0,28
	movw	ax,!_info+10					;[INF] 3, 1
	movw	[hl+6],ax	; param 			;[INF] 2, 1
; line   250
$DGL	0,29
	call	$!bs_F0122					;[INF] 3, 3
??eb03_secdb_flash_sequence:
; line   253
$DGL	0,32
	br	$?L0051						;[INF] 2, 3
?L0039:
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#08H	; 8 					;[INF] 2, 1
	cmp	a,#08H	; 8 					;[INF] 2, 1
	bz	$?L0045						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0046						;[INF] 2, 3
?L0045:
	clrw	ax						;[INF] 1, 1
?L0046:
	or	a,x						;[INF] 2, 1
	bz	$?L0043						;[INF] 2, 4
??bb04_secdb_flash_sequence:
; line   254
$DGL	0,33
	mov	x,!_info+15					;[INF] 3, 1
	mov	a,!_info+16					;[INF] 3, 1
	call	!!_secdb_ffs					;[INF] 4, 3
	movw	ax,bc						;[INF] 1, 1
	movw	[hl],ax	; bidx 					;[INF] 1, 1
; line   255
$DGL	0,34
	mov	a,[hl]	; bidx 					;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	addw	ax,#04H	; 4 					;[INF] 3, 1
	mov	a,x						;[INF] 1, 1
	mov	[hl+3],a	; param 			;[INF] 2, 1
; line   256
$DGL	0,35
	mov	[hl+4],#054H	; param,84 			;[INF] 3, 1
; line   257
$DGL	0,36
	movw	de,!_info+10					;[INF] 3, 1
	movw	ax,[hl]	; bidx 					;[INF] 1, 1
	movw	bc,ax						;[INF] 1, 1
	mov	x,#054H	; 84 					;[INF] 2, 1
	mulu	x						;[INF] 1, 1
	xchw	ax,bc						;[INF] 1, 1
	mov	a,#054H	; 84 					;[INF] 2, 1
	mulu	x						;[INF] 1, 1
	add	a,c						;[INF] 2, 1
	xchw	ax,de						;[INF] 1, 1
	addw	ax,#016H	; 22 				;[INF] 3, 1
	xchw	ax,de						;[INF] 1, 1
	addw	ax,de						;[INF] 1, 1
	movw	[hl+6],ax	; param 			;[INF] 2, 1
; line   258
$DGL	0,37
	call	$!bs_F0122					;[INF] 3, 3
??eb04_secdb_flash_sequence:
; line   261
$DGL	0,40
	br	$?L0051						;[INF] 2, 3
?L0043:
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#010H	; 16 					;[INF] 2, 1
	cmp	a,#010H	; 16 					;[INF] 2, 1
	bz	$?L0049						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0050						;[INF] 2, 3
?L0049:
	clrw	ax						;[INF] 1, 1
?L0050:
	or	a,x						;[INF] 2, 1
	bz	$?L0047						;[INF] 2, 4
??bb05_secdb_flash_sequence:
; line   262
$DGL	0,41
	onew	ax						;[INF] 1, 1
	call	!!_RBLE_VS_Flash_Management			;[INF] 4, 3
??eb05_secdb_flash_sequence:
; line   264
$DGL	0,43
	br	$?L0051						;[INF] 2, 3
?L0047:
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#03FH	; 63 					;[INF] 2, 1
	cmp	a,#03FH	; 63 					;[INF] 2, 1
	bnz	$?L0053						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0054						;[INF] 2, 3
?L0053:
	clrw	ax						;[INF] 1, 1
?L0054:
	or	a,x						;[INF] 2, 1
	bz	$?L0051						;[INF] 2, 4
??bb06_secdb_flash_sequence:
; line   266
$DGL	0,45
	clrw	ax						;[INF] 1, 1
	call	!!_secdb_send_event				;[INF] 4, 3
??eb06_secdb_flash_sequence:
; line   268
?L0051:
??bb07_secdb_flash_sequence:
; line   269
??eb07_secdb_flash_sequence:
; line   270
; line   271
$DGL	0,50
??ef_secdb_flash_sequence:
	addw	sp,#08H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_flash_sequence:
; line   275
_secdb_vs_flash_management_comp_handler:
$DGL	1,407
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_secdb_vs_flash_management_comp_handler:
; line   276
$DGL	0,2
	mov	a,[hl]						;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0057						;[INF] 2, 4
??bb00_secdb_vs_flash_management_comp_handler:
; line   277
$DGL	0,3
	mov	a,!_info+9					;[INF] 3, 1
	and	a,#040H	; 64 					;[INF] 2, 1
	cmp	a,#040H	; 64 					;[INF] 2, 1
	bnz	$?L0061						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0062						;[INF] 2, 3
?L0061:
	clrw	ax						;[INF] 1, 1
?L0062:
	or	a,x						;[INF] 2, 1
	bz	$?L0059						;[INF] 2, 4
??bb01_secdb_vs_flash_management_comp_handler:
; line   278
$DGL	0,4
	clr1	!_info+9.6					;[INF] 4, 2
??eb01_secdb_vs_flash_management_comp_handler:
; line   280
$DGL	0,6
	br	$?L0065						;[INF] 2, 3
?L0059:
	mov	a,[hl+1]					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0063						;[INF] 2, 4
??bb02_secdb_vs_flash_management_comp_handler:
; line   281
$DGL	0,7
	set1	!_info+9.0					;[INF] 4, 2
??eb02_secdb_vs_flash_management_comp_handler:
; line   283
$DGL	0,9
	br	$?L0065						;[INF] 2, 3
?L0063:
	mov	a,[hl+1]					;[INF] 2, 1
	dec	a						;[INF] 1, 1
	sknz							;[INF] 2, 1
??bb03_secdb_vs_flash_management_comp_handler:
; line   284
$DGL	0,10
	set1	!_info+9.4					;[INF] 4, 2
??eb03_secdb_vs_flash_management_comp_handler:
; line   286
?L0065:
??bb04_secdb_vs_flash_management_comp_handler:
; line   287
??eb04_secdb_vs_flash_management_comp_handler:
; line   288
; line   290
$DGL	0,16
	call	!!_secdb_flash_sequence				;[INF] 4, 3
??eb00_secdb_vs_flash_management_comp_handler:
; line   292
$DGL	0,18
	br	$?L0068						;[INF] 2, 3
?L0057:
??bb05_secdb_vs_flash_management_comp_handler:
; line   294
$DGL	0,20
	mov	a,[hl+1]					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0067						;[INF] 2, 4
	mov	a,[hl]						;[INF] 1, 1
	cmp	a,#03H	; 3 					;[INF] 2, 1
	bnz	$?L0067						;[INF] 2, 4
??bb06_secdb_vs_flash_management_comp_handler:
; line   295
$DGL	0,21
	set1	!_info+9.6					;[INF] 4, 2
; line   296
$DGL	0,22
	onew	ax						;[INF] 1, 1
	call	!!_RBLE_VS_Flash_Management			;[INF] 4, 3
??eb06_secdb_vs_flash_management_comp_handler:
; line   298
$DGL	0,24
	br	$?L0068						;[INF] 2, 3
?L0067:
??bb07_secdb_vs_flash_management_comp_handler:
; line   300
$DGL	0,26
	call	$!bs_F0124					;[INF] 3, 3
??eb07_secdb_vs_flash_management_comp_handler:
; line   301
?L0068:
??eb05_secdb_vs_flash_management_comp_handler:
; line   302
; line   303
$DGL	0,29
??ef_secdb_vs_flash_management_comp_handler:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_vs_flash_management_comp_handler:
; line   307
_secdb_vs_flash_access_comp_handler:
$DGL	1,447
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_secdb_vs_flash_access_comp_handler:
; line   310
$DGL	0,4
	mov	a,[hl]						;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0073						;[INF] 2, 4
	mov	a,[hl]						;[INF] 1, 1
	cmp	a,#0AH	; 10 					;[INF] 2, 1
	bnz	$?L0071						;[INF] 2, 4
?L0073:
??bb00_secdb_vs_flash_access_comp_handler:
; line   311
$DGL	0,5
	mov	a,[hl+2]					;[INF] 2, 1
	cmp	a,#04H	; 4 					;[INF] 2, 1
	bc	$?L0074						;[INF] 2, 4
	mov	a,[hl+2]					;[INF] 2, 1
	cmp	a,#08H	; 8 					;[INF] 2, 1
	bnc	$?L0074						;[INF] 2, 4
??bb01_secdb_vs_flash_access_comp_handler:
; line   312
$DGL	0,6
	mov	a,[hl+2]					;[INF] 2, 1
	shrw	ax,8						;[INF] 2, 1
	subw	ax,#04H	; 4 					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	mov	c,a						;[INF] 1, 1
	xch	a,x						;[INF] 1, 1
	onew	ax						;[INF] 1, 1
	cmp0	c						;[INF] 1, 1
	bz	$?L0076						;[INF] 2, 4
?L0077:
	addw	ax,ax						;[INF] 1, 1
	dec	c						;[INF] 1, 1
	bnz	$?L0077						;[INF] 2, 4
?L0076:
	movw	bc,ax						;[INF] 1, 1
	clrw	ax						;[INF] 1, 1
	decw	ax						;[INF] 1, 1
	subw	ax,bc						;[INF] 1, 1
	and	a,!_info+16					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	and	a,!_info+15					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	mov	!_info+16,a					;[INF] 3, 1
	xch	a,x						;[INF] 1, 1
	mov	!_info+15,a					;[INF] 3, 1
; line   314
$DGL	0,8
	or	a,!_info+16					;[INF] 3, 1
	bnz	$?L0082						;[INF] 2, 4
??bb02_secdb_vs_flash_access_comp_handler:
; line   315
$DGL	0,9
	set1	!_info+9.3					;[INF] 4, 2
??eb02_secdb_vs_flash_access_comp_handler:
; line   316
??eb01_secdb_vs_flash_access_comp_handler:
; line   318
$DGL	0,12
	br	$?L0082						;[INF] 2, 3
?L0074:
	mov	a,[hl+2]					;[INF] 2, 1
	cmp	a,#03H	; 3 					;[INF] 2, 1
	bnz	$?L0080						;[INF] 2, 4
??bb03_secdb_vs_flash_access_comp_handler:
; line   319
$DGL	0,13
	set1	!_info+9.1					;[INF] 4, 2
??eb03_secdb_vs_flash_access_comp_handler:
; line   321
$DGL	0,15
	br	$?L0082						;[INF] 2, 3
?L0080:
	mov	a,[hl+2]					;[INF] 2, 1
	cmp	a,#02H	; 2 					;[INF] 2, 1
	sknz							;[INF] 2, 1
??bb04_secdb_vs_flash_access_comp_handler:
; line   322
$DGL	0,16
	set1	!_info+9.2					;[INF] 4, 2
??eb04_secdb_vs_flash_access_comp_handler:
; line   324
?L0082:
??bb05_secdb_vs_flash_access_comp_handler:
; line   325
??eb05_secdb_vs_flash_access_comp_handler:
; line   326
; line   328
$DGL	0,22
	call	!!_secdb_flash_sequence				;[INF] 4, 3
??eb00_secdb_vs_flash_access_comp_handler:
; line   330
$DGL	0,24
	br	$?L0085						;[INF] 2, 3
?L0071:
	mov	a,[hl]						;[INF] 1, 1
	cmp	a,#0BH	; 11 					;[INF] 2, 1
	bnz	$?L0084						;[INF] 2, 4
??bb06_secdb_vs_flash_access_comp_handler:
; line   332
$DGL	0,26
	clr1	!_info+9.5					;[INF] 4, 2
; line   333
$DGL	0,27
	call	!!_secdb_flash_sequence				;[INF] 4, 3
??eb06_secdb_vs_flash_access_comp_handler:
; line   335
$DGL	0,29
	br	$?L0085						;[INF] 2, 3
?L0084:
??bb07_secdb_vs_flash_access_comp_handler:
; line   337
$DGL	0,31
	call	$!bs_F0124					;[INF] 3, 3
??eb07_secdb_vs_flash_access_comp_handler:
; line   338
?L0085:
; line   339
$DGL	0,33
??ef_secdb_vs_flash_access_comp_handler:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_vs_flash_access_comp_handler:
; line   343
_secdb_vs_flash_operation_comp_handler:
$DGL	1,487
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_secdb_vs_flash_operation_comp_handler:
; line   344
$DGL	0,2
	mov	a,[hl]						;[INF] 1, 1
	cmp0	a						;[INF] 1, 1
	bnz	$?L0088						;[INF] 2, 4
??bb00_secdb_vs_flash_operation_comp_handler:
; line   345
$DGL	0,3
	set1	!_info+9.5					;[INF] 4, 2
; line   346
$DGL	0,4
	call	!!_secdb_flash_sequence				;[INF] 4, 3
??eb00_secdb_vs_flash_operation_comp_handler:
; line   348
$DGL	0,6
	br	$?L0089						;[INF] 2, 3
?L0088:
??bb01_secdb_vs_flash_operation_comp_handler:
; line   350
$DGL	0,8
	call	$!bs_F0124					;[INF] 3, 3
??eb01_secdb_vs_flash_operation_comp_handler:
; line   351
?L0089:
; line   352
$DGL	0,10
??ef_secdb_vs_flash_operation_comp_handler:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_vs_flash_operation_comp_handler:
; line   359
_secdb_vs_callback:
$DGL	1,503
	push	hl						;[INF] 1, 1
	movw	hl,ax						;[INF] 1, 1
??bf_secdb_vs_callback:
; line   361
$DGL	0,3
	mov	a,!_info+8					;[INF] 3, 1
	and	a,#02H	; 2 					;[INF] 2, 1
	cmp	a,#02H	; 2 					;[INF] 2, 1
	bnz	$?L0094						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	br	$?L0095						;[INF] 2, 3
?L0094:
	clrw	ax						;[INF] 1, 1
?L0095:
	or	a,x						;[INF] 2, 1
	bz	$?L0092						;[INF] 2, 4
??bb00_secdb_vs_callback:
; line   362
$DGL	0,4
	mov	a,[hl]						;[INF] 1, 1
	shrw	ax,8						;[INF] 2, 1
	onew	bc						;[INF] 1, 1
	subw	ax,#09H	; 9 					;[INF] 3, 1
	bz	$?L0097						;[INF] 2, 4
	subw	ax,bc						;[INF] 1, 1
	bz	$?L0098						;[INF] 2, 4
	subw	ax,bc						;[INF] 1, 1
	bz	$?L0099						;[INF] 2, 4
	br	$?L0100						;[INF] 2, 3
??bb01_secdb_vs_callback:
; line   363
?L0097:
; line   364
$DGL	0,6
	movw	ax,hl						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	call	!!_secdb_vs_flash_management_comp_handler	;[INF] 4, 3
; line   365
$DGL	0,7
	br	$?L0105						;[INF] 2, 3
; line   367
?L0098:
; line   368
$DGL	0,10
	movw	ax,hl						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	call	!!_secdb_vs_flash_access_comp_handler		;[INF] 4, 3
; line   369
$DGL	0,11
	br	$?L0105						;[INF] 2, 3
; line   371
?L0099:
; line   372
$DGL	0,14
	movw	ax,hl						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	call	!!_secdb_vs_flash_operation_comp_handler	;[INF] 4, 3
; line   373
$DGL	0,15
	br	$?L0105						;[INF] 2, 3
; line   375
?L0100:
; line   376
$DGL	0,18
	call	$!bs_S0123					;[INF] 3, 3
	bz	$?L0105						;[INF] 2, 4
??bb02_secdb_vs_callback:
; line   377
$DGL	0,19
	call	$!bs_S0120					;[INF] 3, 3
	call	$!bs_F0121					;[INF] 3, 3
??eb02_secdb_vs_callback:
; line   378
; line   379
$DGL	0,21
	br	$?L0105						;[INF] 2, 3
??eb01_secdb_vs_callback:
; line   380
??eb00_secdb_vs_callback:
; line   382
?L0092:
??bb03_secdb_vs_callback:
; line   383
$DGL	0,25
	call	$!bs_S0123					;[INF] 3, 3
	bz	$?L0105						;[INF] 2, 4
??bb04_secdb_vs_callback:
; line   384
$DGL	0,26
	call	$!bs_S0120					;[INF] 3, 3
	call	$!bs_F0121					;[INF] 3, 3
??eb04_secdb_vs_callback:
; line   385
?L0105:
??eb03_secdb_vs_callback:
; line   386
; line   387
$DGL	0,29
??ef_secdb_vs_callback:
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_vs_callback:
; line   394
_secdb_send_event:
$DGL	1,531
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	subw	sp,#06H						;[INF] 2, 1
	movw	hl,sp						;[INF] 3, 1
??bf_secdb_send_event:
; line   398
$DGL	0,5
	cmp	!_info+12,#02H	; 2 				;[INF] 4, 1
	bnz	$?L0109						;[INF] 2, 4
	onew	ax						;[INF] 1, 1
	incw	ax						;[INF] 1, 1
	br	$?L0110						;[INF] 2, 3
?L0109:
	onew	ax						;[INF] 1, 1
?L0110:
	mov	a,x						;[INF] 1, 1
	mov	[hl],a	; event 				;[INF] 1, 1
; line   399
$DGL	0,6
	mov	a,[hl+6]	; status 			;[INF] 2, 1
	mov	[hl+1],a	; event 			;[INF] 2, 1
; line   400
$DGL	0,7
	mov	x,!_info+13					;[INF] 3, 1
	mov	a,!_info+14					;[INF] 3, 1
	movw	[hl+2],ax	; event 			;[INF] 2, 1
; line   401
$DGL	0,8
	mov	a,!_info+17					;[INF] 3, 1
	mov	[hl+4],a	; event 			;[INF] 2, 1
; line   402
$DGL	0,9
	mov	a,!_info+18					;[INF] 3, 1
	mov	[hl+5],a	; event 			;[INF] 2, 1
; line   404
$DGL	0,11
	clr1	!_info+8.1					;[INF] 4, 2
; line   406
$DGL	0,13
	mov	a,!_info+6					;[INF] 3, 1
	mov	_@SEGAX,a					;[INF] 2, 1
	movw	ax,!_info+4					;[INF] 3, 1
	push	ax						;[INF] 1, 1
	mov	a,_@SEGAX					;[INF] 2, 1
	mov	_@SEGDE,a					;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	movw	de,ax						;[INF] 1, 1
	movw	ax,hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	mov	a,_@SEGDE					;[INF] 2, 1
	mov	CS,a						;[INF] 2, 1
	pop	ax						;[INF] 1, 1
	call	de						;[INF] 2, 3
; line   407
$DGL	0,14
??ef_secdb_send_event:
	addw	sp,#08H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_send_event:
; line   411
_secdb_ffs:
$DGL	1,540
	push	hl						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	push	ax						;[INF] 1, 1
	movw	hl,sp						;[INF] 3, 1
??bf_secdb_ffs:
; line   414
$DGL	0,4
	clrw	ax						;[INF] 1, 1
	movw	[hl],ax	; i 					;[INF] 1, 1
?L0113:
	movw	ax,[hl]	; i 					;[INF] 1, 1
	cmpw	ax,#010H	; 16 				;[INF] 3, 1
	bnc	$?L0114						;[INF] 2, 4
??bb00_secdb_ffs:
; line   415
$DGL	0,5
	mov	a,[hl]	; i 					;[INF] 1, 1
	mov	c,a						;[INF] 1, 1
	movw	ax,[hl+2]	; val 				;[INF] 2, 1
	cmp0	c						;[INF] 1, 1
	bz	$?L0118						;[INF] 2, 4
?L0119:
	shrw	ax,1						;[INF] 2, 1
	dec	c						;[INF] 1, 1
	bnz	$?L0119						;[INF] 2, 4
?L0118:
	mov	a,x						;[INF] 1, 1
	and	a,#01H	; 1 					;[INF] 2, 1
	cmp0	a						;[INF] 1, 1
	bz	$?L0116						;[INF] 2, 4
??bb01_secdb_ffs:
; line   416
$DGL	0,6
	movw	ax,[hl]	; i 					;[INF] 1, 1
	movw	bc,ax						;[INF] 1, 1
	br	$?L0112						;[INF] 2, 3
??eb01_secdb_ffs:
; line   417
?L0116:
??eb00_secdb_ffs:
; line   418
$DGL	0,8
	incw	[hl+0]	; i 					;[INF] 3, 2
	br	$?L0113						;[INF] 2, 3
?L0114:
; line   420
$DGL	0,10
	clrw	bc						;[INF] 1, 1
	decw	bc						;[INF] 1, 1
; line   421
?L0112:
; line   421
$DGL	0,11
??ef_secdb_ffs:
	addw	sp,#04H						;[INF] 2, 1
	pop	hl						;[INF] 1, 1
	ret							;[INF] 1, 6
??ee_secdb_ffs:

@@CODE	CSEG	BASE

@@BASE	CSEG	BASE
	END


; *** Code Information ***
;
; $FILE C:\Users\K98David\Desktop\Renesas1.21SDK\Renesas\BLE_Software_Ver_1_21\
;	RL78_G1D\Project_Source\rBLE\src\sample_app\seclib\secdb.c
;
; $FUNC SecDb_Init(126)
;	bc=(pointer vs_callback:ax,bc, pointer db_callback:[sp+4])
;	CODE SIZE= 43 bytes, CLOCK_SIZE= 28 clocks, STACK_SIZE= 10 bytes
;
; $CALL RBLE_VS_Enable(132)
;	bc=(pointer:ax,bc)
;
; $FUNC SecDb_Load(146)
;	bc=(pointer db:ax, unsigned short bond_bitmap:[sp+4], 
;	    unsigned char ld_irk:[sp+6], unsigned char md:[sp+8])
;	CODE SIZE= 33 bytes, CLOCK_SIZE= 27 clocks, STACK_SIZE= 16 bytes
;
; $CALL secdb_access(147)
;	bc=(pointer:ax, int:[sp+4], unsigned short:[sp+6], int:[sp+8], 
;	    int:[sp+10])
;
; $FUNC SecDb_Save(161)
;	bc=(pointer db:ax, unsigned short bond_bitmap:[sp+4], 
;	    unsigned char ld_irk:[sp+6], unsigned char md:[sp+8])
;	CODE SIZE= 32 bytes, CLOCK_SIZE= 28 clocks, STACK_SIZE= 16 bytes
;
; $CALL secdb_access(162)
;	bc=(pointer:ax, int:[sp+4], unsigned short:[sp+6], int:[sp+8], 
;	    int:[sp+10])
;
; $FUNC secdb_access(171)
;	bc=(pointer db:ax, unsigned char cmd:[sp+4], 
;	    unsigned short bond_bitmap:[sp+6], unsigned char ld_irk:[sp+8], 
;	    unsigned char md:[sp+10])
;	CODE SIZE= 142 bytes, CLOCK_SIZE= 99 clocks, STACK_SIZE= 8 bytes
;
; $CALL secdb_flash_sequence(215)
;	void=(void)
;
; $FUNC secdb_flash_sequence(222)
;	void=(void)
;	CODE SIZE= 250 bytes, CLOCK_SIZE= 226 clocks, STACK_SIZE= 14 bytes
;
; $CALL RBLE_VS_Flash_Operation(231)
;	bc=(int:ax)
;
; $CALL RBLE_VS_Flash_Management(236)
;	bc=(int:ax)
;
; $CALL RBLE_VS_Flash_Access(243)
;	bc=(pointer:ax)
;
; $CALL RBLE_VS_Flash_Access(250)
;	bc=(pointer:ax)
;
; $CALL secdb_ffs(254)
;	bc=(unsigned short:ax)
;
; $CALL RBLE_VS_Flash_Access(258)
;	bc=(pointer:ax)
;
; $CALL RBLE_VS_Flash_Management(262)
;	bc=(int:ax)
;
; $CALL secdb_send_event(266)
;	void=(int:ax)
;
; $FUNC secdb_vs_flash_management_comp_handler(275)
;	void=(pointer result:ax)
;	CODE SIZE= 81 bytes, CLOCK_SIZE= 87 clocks, STACK_SIZE= 6 bytes
;
; $CALL secdb_flash_sequence(290)
;	void=(void)
;
; $CALL RBLE_VS_Flash_Management(296)
;	bc=(int:ax)
;
; $CALL secdb_send_event(300)
;	void=(int:ax)
;
; $FUNC secdb_vs_flash_access_comp_handler(307)
;	void=(pointer result:ax)
;	CODE SIZE= 119 bytes, CLOCK_SIZE= 115 clocks, STACK_SIZE= 6 bytes
;
; $CALL secdb_flash_sequence(328)
;	void=(void)
;
; $CALL secdb_flash_sequence(333)
;	void=(void)
;
; $CALL secdb_send_event(337)
;	void=(int:ax)
;
; $FUNC secdb_vs_flash_operation_comp_handler(343)
;	void=(pointer result:ax)
;	CODE SIZE= 21 bytes, CLOCK_SIZE= 30 clocks, STACK_SIZE= 6 bytes
;
; $CALL secdb_flash_sequence(346)
;	void=(void)
;
; $CALL secdb_send_event(350)
;	void=(int:ax)
;
; $FUNC secdb_vs_callback(359)
;	void=(pointer event:ax)
;	CODE SIZE= 89 bytes, CLOCK_SIZE= 175 clocks, STACK_SIZE= 10 bytes
;
; $CALL secdb_vs_flash_management_comp_handler(364)
;	void=(pointer:ax)
;
; $CALL secdb_vs_flash_access_comp_handler(368)
;	void=(pointer:ax)
;
; $CALL secdb_vs_flash_operation_comp_handler(372)
;	void=(pointer:ax)
;
; $CALL info(377)
;	void=(pointer:ax)
;
; $CALL info(384)
;	void=(pointer:ax)
;
; $FUNC secdb_send_event(394)
;	void=(unsigned char status:x)
;	CODE SIZE= 74 bytes, CLOCK_SIZE= 52 clocks, STACK_SIZE= 14 bytes
;
; $CALL info(406)
;	void=(pointer:ax)
;
; $FUNC secdb_ffs(411)
;	bc=(unsigned short val:ax)
;	CODE SIZE= 47 bytes, CLOCK_SIZE= 53 clocks, STACK_SIZE= 6 bytes

; Target chip : R5F11AGJ
; Device file : V1.10 

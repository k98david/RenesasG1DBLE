#include    "QFlash.h"
#include    "compiler.h"
#include    "dataflash.h"
#include    "rble_api.h"
#include  "eel_descriptor_t02.h"
#include "QTask.h"

Seting_Data_t L_Seting_Data;
Seting_Data_t R_Seting_Data;
Switch_t ButtSet;

extern RBLE_BD_NAME bd_name_param;
uint8_t temp[50]={0},x=0;
uint8_t Readtemp[50]={0};

extern RBLE_BD_NAME bd_name_param_flash;

void Write_Data_flash(uint8_t *Arr,uint8_t id){
	/*
    uint8_t Ret=0;

    RBLE_VS_FLASH_ACCESS_PARAM param;
    
    //df_stat = DF_STAT_START;
    
    param.cmd  = RBLE_VS_FLASH_CMD_WRITE;
    param.id   = id;
    param.size = 20;
    
    for(x=0;x<=20;x++){
        temp[x]=*(Arr+x);
    }
    param.addr=temp;
    Ret=RBLE_VS_Flash_Access( &param );
    */
    
    
    if(dataflash_start(DF_MODE_ENFORCED) == DF_OK)
    {
        dataflash_rw(DF_MODE_ENFORCED, DF_WRITE, id, (uint8_t*)Arr);

        dataflash_stop(DF_MODE_ENFORCED);
    }
    
}

void Read_Data_flash(uint8_t *Arr,uint8_t id){
	/*
    uint8_t Ret=0;

    RBLE_VS_FLASH_ACCESS_PARAM param;
    
    //df_stat = DF_STAT_START;
    
    param.cmd  = RBLE_VS_FLASH_CMD_READ;
    param.id   = id;
    param.size = 20;
    
    for(x=0;x<=20;x++){
        temp[x]=*(Arr+x);
    }
    param.addr=temp;
    Ret=RBLE_VS_Flash_Access( &param );
    */
	
    if(dataflash_start(DF_MODE_ENFORCED) == DF_OK)
    {
        dataflash_rw(DF_MODE_ENFORCED, DF_READ, id, (uint8_t*)Arr);

        dataflash_stop(DF_MODE_ENFORCED);
    }
    
}

void Push_Data_to_G1D(void){
	
//Read_Data_flash(&TesFlashData,0x0C);

//Read_Data_flash(&bd_name_param_flash,EEL_ID_Data2_ADV);
//dataflash_format(DF_MODE_ENFORCED);

Read_Data_flash(&Eddystone_URL_N_flash,EEL_ID_NURL);
Read_Data_flash(&Eddystone_URL_L_flash,EEL_ID_LURL);
Read_Data_flash(&Eddystone_URL_R_flash,EEL_ID_RURL);

Read_Data_flash(&Eddystone_UID_N_flash,EEL_ID_NUID);
Read_Data_flash(&Eddystone_UID_L_flash,EEL_ID_LUID);
Read_Data_flash(&Eddystone_UID_R_flash,EEL_ID_RUID);



//Read_Data_flash(&bd_name_param_flash,EEL_ID_ADV);
/*
if(G1D_Data_Flash.Mark!=0x88){   //defuld 
	G1D_Data_Flash.Mark=0x88;
	G1D_Data_Flash.Buzzer_Level=2;
	G1D_Data_Flash.Buzzer_Enable=1;
        G1D_Data_Flash.LED_Enable=1;
	G1D_Data_Flash.Leq_Alrt=30;
	G1D_Data_Flash.Bag_Weight=180;
	G1D_Data_Flash.Read_Duty_time=10;
	dataflash_format(DF_MODE_ENFORCED);
	Write_Data_flash(&G1D_Data_Flash,EEL_ID_Data2);
}else{
    Read_Duty_Time=G1D_Data_Flash.Read_Duty_time*100;
}
*/

	/*
    uint8_t i=0,x=0;
    uint8_t         Tx_Power_Lvl;
    for(i=2;i<=7;i++){
	uint8_t Readtemp[20]={0};
        Read_Data_flash(Readtemp,i);
	if(Readtemp[0]==iBeacon_DataFlashID_HaveData){
	    switch(i){
                case iBeacon_DataFlashID_UUD:
	    	    for(x=0;x<17;x++){
		        broadcast.adv_info.adv_data.adv_data.data[9+x]=Readtemp[x+1];
		    }
		    break;
	
                case iBeacon_DataFlashID_Major:
	    	    for(x=0;x<=1;x++){
		        broadcast.adv_info.adv_data.adv_data.data[25+x]=Readtemp[x+1];
		    }
		    break;
                case iBeacon_DataFlashID_Minor:
	    	    for(x=0;x<=1;x++){
		        broadcast.adv_info.adv_data.adv_data.data[27+x]=Readtemp[x+1];
		    }
		    break;
                case iBeacon_DataFlashID_Advint:
                    broadcast.adv_info.adv_param.adv_intv_min=Readtemp[1]*17;
		    broadcast.adv_info.adv_param.adv_intv_max=Readtemp[1]*17;
		    break;
                case iBeacon_DataFlashID_1mPower:
	            broadcast.adv_info.adv_data.adv_data.data[29]=Readtemp[1];
		    break;
                case iBeacon_DataFlashID_TXpower:
		    switch(Readtemp[1]){   
		        case 0x0F:
			    Tx_Power_Lvl=RBLE_VS_TXPW_LV1;
			    break;
			case 0x0A:
			    Tx_Power_Lvl=RBLE_VS_TXPW_LV2;
			    break;
			case 0x07:
			    Tx_Power_Lvl=RBLE_VS_TXPW_LV3;
			    break;
			case 0x02:
			    Tx_Power_Lvl=RBLE_VS_TXPW_LV4;
			    break;
			case 0x01:
			    Tx_Power_Lvl=RBLE_VS_TXPW_LV7;
			    break;
			case 0x00:
			    Tx_Power_Lvl=RBLE_VS_TXPW_LV9;
			    break;
			default:
			    Tx_Power_Lvl=RBLE_VS_TXPW_LV9;
			    break;
			}
		    RBLE_VS_Set_Tx_Power( 0x10, Tx_Power_Lvl, RBLE_VS_TXPW_MODE_NORMAL );
		    if(Tx_Power_Lvl==RBLE_VS_TXPW_LV9){
		        iBeacon_TXpower_val[0]=0x00;    
		    }else{
		        iBeacon_TXpower_val[0]=Readtemp[1];		    
		    }
		    break;
		    
		    
		default:
	            break;    
	    }
	}
    }
    */
}
void Stop_Data_flash(void){
	/*
    uint8_t errno = 0;
    
    /* -- STOP -- (state : started -> opened) */
    /*df_cmd = EEL_CMD_SHUTDOWN;
    df_req.command_enu = EEL_CMD_SHUTDOWN;

    EEL_Execute(&df_req);

    //errno = dataflash_errno(df_req.status_enu);
    if(errno == DF_OK)
    {
            /* -- CLOSE -- (state : opened -> closed) */
     /*       EEL_Close();
            //plf_hoco_stop();
    }*/
}
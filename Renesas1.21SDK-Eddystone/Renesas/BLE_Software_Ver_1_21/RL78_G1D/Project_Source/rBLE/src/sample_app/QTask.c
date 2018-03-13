/**
 ****************************************************************************************
 *
 * @file        rble_app.c
 *
 * @brief       rBLE Sample Application
 *
 * Copyright(C) 2013-2015 Renesas Electronics Corporation
 *
 * $Rev: 6128 $
 *
 ****************************************************************************************
 */

#include    "rwke_api.h"
#include    "rble.h"
#include    "rble_app.h"
#include    "push_sw.h"
#include    "led.h"
#include    "rble_api.h"
#include    "dataflash.h"
//#include    "r_cg_adc.h"
#include "rble_sample_app_peripheral.h"

#include    <stdio.h>
#include    <string.h>
#include    <stdlib.h>

#include "QTask.h"
#include "led.h"
#include    "QFlash.h"
#include "sam/sams.h"
#include "eel_descriptor_t02.h"
#include    "Qkey.h"

#include "r_cg_tau.h"
#include "console.h"

#ifndef char_t
typedef char            char_t;
#endif
static void sw_callback(void);

uint8_t Write_FlashTemp[20]={0};
uint8_t Flash_ID_Temp=0;
bool LED=true;
uint8_t ADC_Temp2=0;

bool G1D_Sleep_flag=false;

extern SET_DATA_INFO ADV_Data;
extern void new_profile_server_set_data(SET_DATA_INFO *sd_info);
//extern Weight_SetData_t LPC_Weight_SetData;


bool LedState=true;
bool Delay_LED_CMD_flag=false;
uint8_t Delay_LED_CMD_Count=0;
bool SendRead_CMD_Flag=false;   //mark to  send Read CMD Block LED CMD
uint16_t Read_Duty_Time=0;
bool ADC_CMD_Flag=false;

/*Battery */
#define BatteryLowValue  155
extern uint8_t ADC_Temp;
extern uint8_t cxyz;

/*Buzzer*/
uint8_t Buzzer_Count=3;
uint8_t Buzzer_Count_Temp=0;
bool FW_Buzzer_Flag=1;
/*LED*/
uint8_t LEDChoose=LEDGree;
uint8_t LED_Count_Temp=0;
bool FW_LED_Flag=1;
/*ADV_Count*/
uint16_t ADV_TLM_Count=0;
uint8_t ADV_UID_Count=0;
uint8_t ADV_URL_Count=0;
uint8_t Time_Count=0;

/* Data_mode*/
extern Setup_Data_t Default;
extern Setup_Data_t Normal;
extern Setup_Data_t Left;
extern Setup_Data_t Right;
extern Setup_Data_t RamTemp;
/*Profile_Mode*/
extern Profile_Mode_t Profile;

/*ADV_Fifo*/
uint8_t ADV_Fifo[6]={0};
uint8_t ADV_Fifo_Head=0;
uint8_t ADV_Fifo_Tail=0;
extern ADV_Data_t Ram_ADV;

/*Chr Data*/
SET_DATA_INFO Data_chr;
SET_DATA_INFO Seting_chr;
/**************************** Define Declaration **************************************/
#define     ILLEGAL_CONNECTION_HANDLE       0xffff

static uint16_t         ConnectionHdl = ILLEGAL_CONNECTION_HANDLE;


  /* ------------------------- -Sleep G1D -----------------------*/
static int_t APP_Sleep_G1D_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- Flash G1D -----------------------*/
static int_t APP_Write_Flash_Dlay_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_Flash_Stop_Dlay_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_GAP_Change_Connection_Param_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_Flash_Erase_Dlay_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_Flash_iBeacon_Reset_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- UPdateCHR G1D -----------------------*/
static int_t APP_Update_Chr_ADV_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_Update_Chr_Data_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- Read ADC -----------------------*/
static int_t APP_Read_ADC_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- LPC Reset -----------------------*/
static int_t APP_LPC_Rest_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- iBeacon -----------------------*/
static int_t APP_ADV_Update_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- Key -----------------------*/
static int_t APP_SW1_Long_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_SW2_Long_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_SW1_Short_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_SW2_Short_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);


static int_t APP_Key_Auto_Retun_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);

   /* -------------------------- Evt Timer -----------------------*/
static int_t APP_Evt_timer_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- BUZZER -----------------------*/
static int_t APP_Buzzer_ON_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_Buzzer_OFF_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_Buzzer_Count_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
  

  /* -------------------------- LED -----------------------*/
static int_t APP_LED_ON_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t APP_LED_OFF_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);

    /* -------------------------- ADV -----------------------*/
static int_t APP_Auto_return_UID_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- ADV_Periodic_Change -----------------------*/
static int_t ADV_Periodic_Change_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
    /* -------------------------- ADV_Periodic_Change -----------------------*/
static int_t UID_Change_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t URL_Change_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);
static int_t Periodic_Change_Command(ke_msg_id_t const msgid, void const *param, ke_task_id_t const dest_id, ke_task_id_t const src_id);

/**************************** PUBLIC Memory Declaration *******************************/
const struct ke_msg_handler APP_Handler[] =
{
    /* -------------------------- Sleep G1D -----------------------*/
    { APP_Sleep_G1D     , (ke_msg_func_t)APP_Sleep_G1D_Command   },
    /* -------------------------- Flash G1D -----------------------*/
    { APP_Flash_iBeacon_Reset        , (ke_msg_func_t)APP_Flash_iBeacon_Reset_Command   },
    { APP_Write_Flash_Dlay          , (ke_msg_func_t)APP_Write_Flash_Dlay_Command   },
    { APP_Flash_Stop_Dlay           , (ke_msg_func_t)APP_Flash_Stop_Dlay_Command   },
    { APP_GAP_Change_Connection_Param   , (ke_msg_func_t)APP_GAP_Change_Connection_Param_Command   },
    { APP_Flash_Erase_Dlay       , (ke_msg_func_t)APP_Flash_Erase_Dlay_Command   },
    /* -------------------------- UPdateCHR G1D -----------------------*/
    { APP_Update_Chr_ADV     , (ke_msg_func_t)APP_Update_Chr_ADV_Command   },
    { APP_Update_Chr_Data     , (ke_msg_func_t)APP_Update_Chr_Data_Command   },
    /* -------------------------- Read ADC -----------------------*/
    { APP_Read_ADC     , (ke_msg_func_t)APP_Read_ADC_Command   },
    /* -------------------------- LPC Reset -----------------------*/
    { APP_LPC_Rest     , (ke_msg_func_t)APP_LPC_Rest_Command   },
    /* -------------------------- iBeacon -----------------------*/
    { APP_ADV_Update     , (ke_msg_func_t)APP_ADV_Update_Command   },
    
    /* -------------------------- Key -----------------------*/
    { APP_SW1_Long     , (ke_msg_func_t)APP_SW1_Long_Command   },
    { APP_SW2_Long     , (ke_msg_func_t)APP_SW2_Long_Command   },
    { APP_SW1_Short     , (ke_msg_func_t)APP_SW1_Short_Command   },
    { APP_SW2_Short     , (ke_msg_func_t)APP_SW2_Short_Command   },
    
    
    
    { APP_Key_Auto_Retun     , (ke_msg_func_t)APP_Key_Auto_Retun_Command   },
    /* -------------------------- Evt Timer -----------------------*/
    { APP_Evt_timer     , (ke_msg_func_t)APP_Evt_timer_Command   },
    /* -------------------------- BUZZER -----------------------*/
    { APP_Buzzer_ON     , (ke_msg_func_t)APP_Buzzer_ON_Command   },
    { APP_Buzzer_OFF     , (ke_msg_func_t)APP_Buzzer_OFF_Command   },
    { APP_Buzzer_Count     , (ke_msg_func_t)APP_Buzzer_Count_Command   },
    /* -------------------------- LED -----------------------*/
    { APP_LED_ON     , (ke_msg_func_t)APP_LED_ON_Command   },
    { APP_LED_OFF     , (ke_msg_func_t)APP_LED_OFF_Command   },
    /* -------------------------- ADV -----------------------*/
    { APP_Auto_return_UID     , (ke_msg_func_t)APP_Auto_return_UID_Command   },
    /* -------------------------- ADV_Periodic_Change -----------------------*/
    { ADV_Periodic_Change     , (ke_msg_func_t)ADV_Periodic_Change_Command   },
    /* -------------------------- ADV_Periodic_Change -----------------------*/
    { UID_Change     , (ke_msg_func_t)UID_Change_Command   },
    { URL_Change     , (ke_msg_func_t)URL_Change_Command   },
    { Periodic_Change     , (ke_msg_func_t)Periodic_Change_Command   },
    
    
    
};
const struct ke_state_handler APP_State_Handler[APP_STATE_MAX] =
{
    KE_STATE_HANDLER(APP_Handler)
};
const struct ke_state_handler APP_Default_Handler = KE_STATE_HANDLER_NONE;

ke_state_t APP_State[APP_IDX_MAX];

void APP_Clear_Timer( ke_msg_id_t Id );

extern bool Buzzer_ReAuto;
static void sw_callback(void){
    //APP_Set_RunCmd(APP_TIMER_iBeacon_ConnectADV);
    /*
    if(LED==true){
	    write1_sfrbit(LED01, ON);
	    write1_sfrbit(LED02, OFF );
	    LED=false;
    }else{
	    write1_sfrbit(LED01, OFF);
	    write1_sfrbit(LED02, ON );  
	    LED=true;
    }
*/
    //APP_Set_Timer( APP_TIMER_iBeacon_NoConnectADV, 500 );
}
/******************************************************************************************/
/**
 *  @brief      Queueing Command
 *
 *  @param      cmd     Command Value , defined by APP_TASK_ID_enum
 *
 *  @retval     None
 */
/******************************************************************************************/
void APP_Set_RunCmd( uint16_t cmd )
{
    uint8_t *ke_msg;

    ke_msg = ke_msg_alloc(cmd, TASK_USR_1, TASK_USR_1, 0);
    ke_msg_send(ke_msg);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Battery_Enable_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Battery_Enable_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    /* security level */
    const uint8_t sec_lvl = RBLE_SVC_SEC_NONE;
    /* ConType */
    static uint8_t con_type = RBLE_PRF_CON_DISCOVERY;
//  static uint8_t con_type = RBLE_PRF_CON_NORMAL;

    RBLE_CPP_SENSOR_PARAM    paramm = {
        RBLE_PRF_START_NTF,         /* Cycling Power measurement notification configuration */
        RBLE_PRF_START_BRD,         /* Cycling Power measurement broadcast configuration */
        RBLE_PRF_START_NTF,         /* Cycling Power vector notification configuration */
        RBLE_PRF_START_IND,         /* Cycling Power control point indication configuration */
        RBLE_PRF_START_NTF,         /* Battery Level notification configuration */
        RBLE_CPPC_SENSOR_REAR_WHEEL /* Sensor Location Info */
    };

//    RBLE_CPP_Sensor_Enable( ConnectionHdl, sec_lvl, con_type, &paramm, RBLE_APP_CPPS_CallBack );
   
    return(KE_MSG_CONSUMED);
}


/**************************************************************************************/
/**
 *  @brief      Application Idle Check
 *  
 *  @retval     TRUE if App is Idle Status, FALSE if it is necessary to keep MCU Running
 */
/******************************************************************************************/
BOOL APP_Check_sleep( void )
{
	/*
    if(G1D_Sleep_flag){
	    //Debugpin_On
        return( FALSE );     //no sleep
    }else{
	    //Debugpin_Off
        return( TRUE );    //go sleep
    }
    */
        return( FALSE );    //go sleep
}

/******************************************************************************************/
/**
 *  @brief      Set Kernel Timer
 *
 *  @retval     Random Number
 */
/******************************************************************************************/
void APP_Set_Timer( ke_msg_id_t Id, uint16_t Timer_Cnt )
{
    if ( 0 == Timer_Cnt )
    {
        return;
    }
    ke_timer_set(Id, TASK_USR_1, Timer_Cnt);
    return;
}

/******************************************************************************************/
/**
 *  @brief      Clear Kernel Timer
 *
 *  @retval     Random Number
 */
/******************************************************************************************/
void APP_Clear_Timer( ke_msg_id_t Id )
{
    ke_timer_clear(Id, TASK_USR_1);
    return;
}

/********************  Update WeightData ********************/
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Process_Uart_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Update_Chr_WeightData_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
//    scps_set_data(Weight_HDL_Data_VAL, &event->param.Cmd_UUID.value[0], 10);
    return(KE_MSG_CONSUMED);
}
/********************  APP_Sleep_G1D_Command ********************/
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Sleep_G1D_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Sleep_G1D_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
/*
    if(!Send_Flg){
        G1D_Sleep_flag=false;     
    }
*/
    return(KE_MSG_CONSUMED); 
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : SCP Server Send Notification
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Flash_iBeacon_Reset_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{

    platform_reset(0);

    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Flash_Erase_Dlay_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Flash_Erase_Dlay_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    RBLE_VS_Flash_Operation( 0x05 );
    
    APP_Set_Timer( APP_Flash_iBeacon_Reset, 100 );
    
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Write_Flash_Dlay_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Write_Flash_Dlay_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	/*
    uint8_t x=0,len=0;

    len=20;
    for(x=0;x<=20;x++){
        Write_FlashTemp[x]=0x10+x;  
    }
    FlashData.Weight_State=1;
   // FlashData.Weight_Zero_Adc=30000;
    //FlashData.Weight_OneKG_Adc=200000;
    FlashData.Buzzer_Level=6;
    FlashData.Buzzer_Enable=1;
    */
    
  //  Write_Data_flash(&G1D_Data_Flash,EEL_ID_Data2);
  
    APP_Set_Timer( APP_Flash_Stop_Dlay, 5 );
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : SCP Server Send Notification
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Flash_Stop_Dlay_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    dataflash_stop(DF_MODE_ENFORCED);
    
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_GAP_Change_Connection_Param_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_GAP_Change_Connection_Param_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    uint8_t x=0;
    RBLE_CONN_PARAM conn_param = {
        0x0050,     /* Connection interval minimum ( 600msec = 0xc8 * 1.25msec ) Range:0x0006-0x0c80 */   //200ms
        0x00A0,     /* Connection interval maximum ( 650msec = 0xf0 * 1.25msec ) Range:0x0006-0x0c80 */   //250ms
        0x0000,     /* Latency Range:0x0000-0x03e8 */
        0x258,     /* Supervision timeout ( 8.0s = 0x320 * 10msec ) Range:0x000a-0x0c80 */
    };
    
    x=RBLE_GAP_Change_Connection_Param( 0x0000, 0x0000, &conn_param, 0x01);
    	//RBLE_GAP_Channel_Map_Req(1,ConnectionHdl,0x25);
    return(KE_MSG_CONSUMED);
}


    /* -------------------------- UPdateCHR G1D -----------------------*/
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_GAP_Change_Connection_Param_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Update_Chr_ADV_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    new_profile_server_set_data(&ADV_Data);
    
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_GAP_Change_Connection_Param_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Update_Chr_Data_Command (ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    uint8_t Temp[20]={0};
    uint8_t ZeroTemp[20]={0};
    uint8_t x=0;
    
    /* N_UID */
    Data_chr.hdl=NEW_PROFILE_HDL_BS_N_UID_VAL;
    Data_chr.len=18;
    memcpy(&Data_chr.value,&Eddystone_UID_N_flash.adv_data.adv_data.data[13],18);
    new_profile_server_set_data(&Data_chr);
    memcpy(&Data_chr.value,ZeroTemp,20);
    
    /* L_UID */
    Data_chr.hdl=NEW_PROFILE_HDL_BS_L_UID_VAL;
    Data_chr.len=18;
    memcpy(&Data_chr.value,&Eddystone_UID_L_flash.adv_data.adv_data.data[13],18);
    new_profile_server_set_data(&Data_chr);
    memcpy(&Data_chr.value,ZeroTemp,20);
   
    /* R_UID */
    Data_chr.hdl=NEW_PROFILE_HDL_BS_R_UID_VAL;
    Data_chr.len=18;
    memcpy(&Data_chr.value,&Eddystone_UID_R_flash.adv_data.adv_data.data[13],18);
    new_profile_server_set_data(&Data_chr);
    memcpy(&Data_chr.value,ZeroTemp,20);
   
    
    /* N_URL */
    Data_chr.hdl=NEW_PROFILE_HDL_BS_N_URL_VAL;
    Data_chr.len=18;
    memcpy(&Data_chr.value,&Eddystone_URL_N_flash.adv_data.adv_data.data[13],18);
    new_profile_server_set_data(&Data_chr);
    memcpy(&Data_chr.value,ZeroTemp,20);
   
    /* L_URL */
    Data_chr.hdl=NEW_PROFILE_HDL_BS_L_URL_VAL;
    Data_chr.len=18;
    memcpy(&Data_chr.value,&Eddystone_URL_L_flash.adv_data.adv_data.data[13],18);
    new_profile_server_set_data(&Data_chr);
    memcpy(&Data_chr.value,ZeroTemp,20);
   
    /* R_URL */
    Data_chr.hdl=NEW_PROFILE_HDL_BS_R_URL_VAL;
    Data_chr.len=18;
    memcpy(&Data_chr.value,&Eddystone_URL_R_flash.adv_data.adv_data.data[13],18);
    new_profile_server_set_data(&Data_chr);
    memcpy(&Data_chr.value,ZeroTemp,20);
   
    /* Seting Group1 */
    Seting_chr.hdl=NEW_PROFILE_HDL_BS_Set1_VAL;
    Seting_chr.len=18;
    
    Temp[0]= Normal.Adv_Interval;
    Temp[1]= Normal.UID_Count;
    Temp[2]= Normal.URL_Count;
    Temp[3]= Normal.TLM_Interval>>8;
    Temp[4]= Normal.TLM_Interval;
    
    Temp[5]= Left.Adv_Interval;
    Temp[6]= Left.UID_Count;
    Temp[7]= Left.URL_Count;
    Temp[8]= Left.TLM_Interval>>8;
    Temp[9]= Left.TLM_Interval;
    
    Temp[10]= Right.Adv_Interval;
    Temp[11]= Right.UID_Count;
    Temp[12]= Right.URL_Count;
    Temp[13]= Right.TLM_Interval>>8;
    Temp[14]= Right.TLM_Interval;

    memcpy(&Seting_chr.value,Temp,15);
    
    new_profile_server_set_data(&Seting_chr);
    
    memcpy(Temp,ZeroTemp,20);
    memcpy(&Seting_chr.value,ZeroTemp,20);
   
    /* Seting Group2 */
    Seting_chr.hdl=NEW_PROFILE_HDL_BS_Set2_VAL;
    Seting_chr.len=18;
    
    if(Normal.TLM_Enable==1){
        Temp[0]|=1;
    }else{
        Temp[0]&=~1; 
    }
    
    if(Left.TLM_Enable==1){
        Temp[0]|=2;
    }else{
        Temp[0]&=~2; 
    }
    
    if(Right.TLM_Enable==1){
        Temp[0]|=4;
    }else{
        Temp[0]&=~4; 
    }
    
    if(Normal.URL_Enable==1){
        Temp[0]|=8;
    }else{
        Temp[0]&=~8; 
    }
    
    if(Left.URL_Enable==1){
        Temp[0]|=16;
    }else{
        Temp[0]&=~16; 
    }
    
    if(Right.URL_Enable==1){
        Temp[0]|=32;
    }else{
        Temp[0]&=~32; 
    }
    
    if(Normal.UID_Enable==1){
        Temp[0]|=64;
    }else{
        Temp[0]&=~64; 
    }
    
    if(Left.UID_Enable==1){
        Temp[0]|=128;
    }else{
        Temp[0]&=~128; 
    }
    Temp[1]=Right.UID_Enable;

    memcpy(&Seting_chr.value,Temp,2);
    
    new_profile_server_set_data(&Seting_chr);
    
    memcpy(Temp,ZeroTemp,20);
    memcpy(&Seting_chr.value,ZeroTemp,20);
    /* Seting Group3 */
    Seting_chr.hdl=NEW_PROFILE_HDL_BS_Set3_VAL;
    Seting_chr.len=18;
    
    if(Left.AR_Enable==1){
        Temp[0]|=1;
    }else{
        Temp[0]&=~1; 
    }
    
    if(Right.AR_Enable==1){
        Temp[0]|=2;
    }else{
        Temp[0]&=~2; 
    }
    
    if(Left.BTN_Enable==1){
        Temp[0]|=4;
    }else{
        Temp[0]&=~4; 
    }
    
    if(Right.BTN_Enable==1){
        Temp[0]|=8;
    }else{
        Temp[0]&=~8; 
    }
    
    if(Left.BTNL_Enable==1){
        Temp[0]|=16;
    }else{
        Temp[0]&=~16; 
    }
    
    if(Right.BTNL_Enable==1){
        Temp[0]|=32;
    }else{
        Temp[0]&=~32; 
    }
		    
    if(Left.AR_Profile==1){
        Temp[1]|=1;
    }else if(Left.AR_Profile==2){
        Temp[1]|=2;  
    }else if(Left.AR_Profile==4){
        Temp[1]|=4;
    }else if(Left.AR_Profile==8){
        Temp[1]|=8;
    }	
    
    if(Right.AR_Profile==16){
        Temp[1]|=16;
    }else if(Right.AR_Profile==32){
        Temp[1]|=32;  
    }else if(Right.AR_Profile==64){
        Temp[1]|=64;
    }else if(Right.AR_Profile==128){
        Temp[1]|=128;
    }
    Temp[2]=Left.AR_Interval<<8;
    Temp[3]=Left.AR_Interval;
    Temp[4]=Right.AR_Interval<<8;
    Temp[5]=Right.AR_Interval;	
    

    Temp[6]=Normal.HW_Led_Mode;
    Temp[7]=Left.HW_Led_Mode;
    Temp[8]=Right.HW_Led_Mode;    

    
    Temp[9]=Normal.HW_Speaker_Mode;
    Temp[10]==Left.HW_Speaker_Mode;
    Temp[11]==Right.HW_Speaker_Mode;    

    Temp[12]=Normal.HW_Led_Color;
    Temp[13]==Left.HW_Led_Color;
    Temp[14]==Right.HW_Led_Color;    

    memcpy(&Seting_chr.value,Temp,15);
    
    new_profile_server_set_data(&Seting_chr);
    
    memcpy(Temp,ZeroTemp,20);
    memcpy(&Seting_chr.value,ZeroTemp,20);
    
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : SCP Server Send Notification
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Read_ADC_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	/*
    //uint8_t abcd=0x00;
    R_ADC_Create();
    R_ADC_Set_OperationOn();
    R_ADC_Start();

    //R_ADC_Get_Result_8bit(ADC_Temp+xyz); 
    if(ADC_Temp!=0x00){
	ADC_Temp=(ADC_Temp-BatteryLowValue);
	//broadcast.adv_info.adv_data.adv_data.data[30]=ADC_Temp3[cxyz-1];
	//APP_Set_RunCmd(APP_CMD_GAP_BROADCAST_ENABLE);
        //RBLE_CPP_Sensor_Send_Battery_Level(ConnectionHdl,ADC_Temp3[cxyz-1]);	    
    }
*/
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : SCP Server Send Notification
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_LPC_Rest_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
//    Weak_LPC_Down;
    return(KE_MSG_CONSUMED);
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_ADV_Update_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_ADV_Update_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	
	
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_ADV_Update_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_SW1_Long_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	
	/*
    toggle1_sfrbit(LED00);
    gKeyState= QKeyNothing;
    RBLE_GAP_Broadcast_Disable();
    (void)RBLE_GAP_Broadcast_Enable(
        RBLE_GAP_GEN_DISCOVERABLE, RBLE_GAP_UND_CONNECTABLE,
        &Eddystone_URL_R_flash);
    */
    
    APP_Clear_Timer(UID_Change);
    APP_Clear_Timer(URL_Change);
      RBLE_GAP_Broadcast_Disable();
       // G1D_Sleep_flag=0;    
   // APP_Set_Timer( APP_Auto_return_UID, (R_Seting_Data.Mod_Time*62.5));   //160ms
    
    return(KE_MSG_CONSUMED);
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_ADV_Update_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_SW2_Long_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	/*
    toggle1_sfrbit(LED00);
    gKeyState= QKeyNothing;
    RBLE_GAP_Broadcast_Disable();
    (void)RBLE_GAP_Broadcast_Enable(
        RBLE_GAP_GEN_DISCOVERABLE, RBLE_GAP_UND_CONNECTABLE,
        &Eddystone_URL_L_flash);
	*/
    APP_Set_RunCmd(UID_Change);

   // G1D_Sleep_flag=0;
   // APP_Set_Timer( APP_Auto_return_UID, (L_Seting_Data.Mod_Time*62.5));   //160ms
    
    return(KE_MSG_CONSUMED);
}


/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_ADV_Update_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_SW1_Short_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    uint8_t x=0;
    
    x=10;
    
    
    Profile.Profile_Mode=Mod_Left;

    switch(Profile.Profile_Mode){
        case Mod_Default:
            memcpy(&RamTemp,&Default,17);

            memcpy(&Ram_ADV.UID,&Eddystone_UID,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL,48);
	    
	    RamADV_Count=Default.Adv_Interval;
	    RamUID_Count=Default.UID_Count;
	    RamURL_Count=Default.URL_Count;
	    RamADV_Interval=Default.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	    
        case Mod_Normal:
            memcpy(&RamTemp,&Normal,17);
	    
	    memcpy(&Ram_ADV.UID,&Eddystone_UID_N_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_N_flash,48);
	    
	    RamADV_Count=Normal.Adv_Interval;
	    RamUID_Count=Normal.UID_Count;
	    RamURL_Count=Normal.URL_Count;
	    RamADV_Interval=Normal.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	
        case Mod_Left:
            memcpy(&RamTemp,&Left,17);
	    
            memcpy(&Ram_ADV.UID,&Eddystone_UID_L_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_L_flash,48);
	    
	    RamADV_Count=Left.Adv_Interval;
	    RamUID_Count=Left.UID_Count;
	    RamURL_Count=Left.URL_Count;
	    RamADV_Interval=Left.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	
        case Mod_Right:
            memcpy(&RamTemp,&Right,17);
	    
            memcpy(&Ram_ADV.UID,&Eddystone_UID_R_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_R_flash,48);
	    
	    RamADV_Count=Right.Adv_Interval;
	    RamUID_Count=Right.UID_Count;
	    RamURL_Count=Right.URL_Count;
	    RamADV_Interval=Right.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
    }
    
    
    
	
    if(RamTemp.AR_Enable){
        APP_Set_Timer( APP_Key_Auto_Retun, (RamTemp.AR_Interval*100));   //160ms
    }
	
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_ADV_Update_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_SW2_Short_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    uint8_t x=0;
    
    x=10;
    
    Profile.Profile_Mode=Mod_Right;

    switch(Profile.Profile_Mode){
        case Mod_Default:
            memcpy(&RamTemp,&Default,17);

            memcpy(&Ram_ADV.UID,&Eddystone_UID,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL,48);
	    
	    RamADV_Count=Default.Adv_Interval;
	    RamUID_Count=Default.UID_Count;
	    RamURL_Count=Default.URL_Count;
	    RamADV_Interval=Default.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	    
        case Mod_Normal:
            memcpy(&RamTemp,&Normal,17);
	    
	    memcpy(&Ram_ADV.UID,&Eddystone_UID_N_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_N_flash,48);
	    
	    RamADV_Count=Normal.Adv_Interval;
	    RamUID_Count=Normal.UID_Count;
	    RamURL_Count=Normal.URL_Count;
	    RamADV_Interval=Normal.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	
        case Mod_Left:
            memcpy(&RamTemp,&Left,17);
	    
            memcpy(&Ram_ADV.UID,&Eddystone_UID_L_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_L_flash,48);
	    
	    RamADV_Count=Left.Adv_Interval;
	    RamUID_Count=Left.UID_Count;
	    RamURL_Count=Left.URL_Count;
	    RamADV_Interval=Left.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	
        case Mod_Right:
            memcpy(&RamTemp,&Right,17);
	    
            memcpy(&Ram_ADV.UID,&Eddystone_UID_R_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_R_flash,48);
	    
	    RamADV_Count=Right.Adv_Interval;
	    RamUID_Count=Right.UID_Count;
	    RamURL_Count=Right.URL_Count;
	    RamADV_Interval=Right.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
    }
    
	
    if(RamTemp.AR_Enable){
        APP_Set_Timer( APP_Key_Auto_Retun, (RamTemp.AR_Interval*100));   //160ms
    }
    return(KE_MSG_CONSUMED);
}




/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_ADV_Update_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Evt_timer_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    APP_Set_Timer( APP_Evt_timer, 1 );   //16ms
    
    if (gKeyPressed1||gKeyPressed2){
        if (gDebounceCount>10){
	        if (gDebounceCount>=200){
		    if (gKeyState==QKeyNothing){
			if(gKeyPressed1&&(!(P1&0x40))){
			    gKeyState= QKey1LongPressed;
			    gDebounceCount=0;
			    APP_Set_RunCmd(APP_SW1_Long);
			    APP_Clear_Timer(APP_Evt_timer);
			    gKeyState=QKeyNothing;
			    gKeyPressed1=0;
			}else if(gKeyPressed2&&(!(P3&0x01))){
			    gKeyState= QKey2LongPressed;
			    gDebounceCount=0;
			    APP_Set_RunCmd(APP_SW2_Long);
			    APP_Clear_Timer(APP_Evt_timer);
			    gKeyState=QKeyNothing;
			    gKeyPressed2=0;
			}

		    }
		}else {
		    gDebounceCount++;
		}
		
		if((P1&0x40) && gKeyPressed1){
			
			if(gKeyState==QKeyNothing){
			    APP_Set_RunCmd(APP_SW1_Short);
			}
			
		        gKeyPressed1=false;  
			gDebounceCount=0;
		        APP_Clear_Timer(APP_Evt_timer);
			
		}else if((P3&0x01) && gKeyPressed2){
			
			if(gKeyState==QKeyNothing){
			    APP_Set_RunCmd(APP_SW2_Short);
			}
			
		        gKeyPressed2=false;  
			gDebounceCount=0;
			APP_Clear_Timer(APP_Evt_timer);
		}
	}else{
	    gDebounceCount++;
	}
	
	
	
	
	
    }else{
        APP_Clear_Timer(APP_Evt_timer);
    }

    return(KE_MSG_CONSUMED);
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Buzzer_ON_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Buzzer_ON_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{

    if((RamTemp.HW_Speaker_Mode!=Buzzer_Stop) &&(FW_Buzzer_Flag)){
        R_TAU0_Channel0_Start();   //PWM Buzzer
    
        Printf("BUZZERON\r\n"); 
        APP_Set_Timer( APP_Buzzer_OFF, 10 );   //160ms
    }else{
        R_TAU0_Channel0_Stop();    //PWM Buzzer
    }
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Buzzer_OFF_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Buzzer_OFF_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	if(FW_Buzzer_Flag){   //FW close
	    R_TAU0_Channel0_Stop();    //PWM Buzzer

	    Printf("BUZZEROFF\r\n"); 

	    if(RamTemp.HW_Speaker_Mode!=Buzzer_Stop){
		    if(Buzzer_Count_Temp>0){
		        APP_Set_Timer( APP_Buzzer_ON, 10 );   //160ms
			Buzzer_Count_Temp--;
		    }else{
			switch(RamTemp.HW_Speaker_Mode){    //HW_Speaker_Mode
				    
			    case Buzzer_Stop:
			            
			    break;
				
			    case Buzzer_one_sound:
			        Buzzer_Count_Temp=0;
			    break;
				
			    case Buzzer_two_sound:
			        Buzzer_Count_Temp=1;
			    break;
				
			    case Buzzer_three_sound:
			        Buzzer_Count_Temp=2;
			    break;
			} 
			APP_Set_Timer( APP_Buzzer_ON, 100 );   //160ms
		        G1D_Sleep_flag=false;
		    }    
	    }
		
	}else{
	    R_TAU0_Channel0_Stop();    //PWM Buzzer
	}
    return(KE_MSG_CONSUMED);
}



/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Buzzer_Count_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Buzzer_Count_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{

	    
    switch(RamTemp.HW_Speaker_Mode){    //HW_Speaker_Mode
	    
        case Buzzer_Stop:
            
	break;
	
        case Buzzer_one_sound:
           Buzzer_Count_Temp=0;
	break;
	
        case Buzzer_two_sound:
           Buzzer_Count_Temp=1;
	break;
	
        case Buzzer_three_sound:
           Buzzer_Count_Temp=2;
	break;
    }
	
    APP_Set_RunCmd(APP_Buzzer_ON);
    
    return(KE_MSG_CONSUMED);
}



/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_LED_ON_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_LED_ON_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    if(FW_LED_Flag){
	    if(RamTemp.HW_Led_Mode!=LED_Stop){
		    switch(RamTemp.HW_Led_Color){    //color
			    
		        case LEDBlue:
			        Printf("LEDBON\r\n"); 
		            write1_sfrbit(LEDB, ON );
			break;
			
		        case LEDGree:
		            write1_sfrbit(LEDG, ON );
			break;
			
		        case LEDRead:
		            write1_sfrbit(LEDR, ON );
			break;

		    }
	    }
	    
	    switch(RamTemp.HW_Led_Mode){    //LED_Mode
		    
	        case LED_Stop:    //stop
	            write1_sfrbit(LEDB, OFF );
	            write1_sfrbit(LEDG, OFF );
	            write1_sfrbit(LEDR, OFF );
		break;
		
	        case LED_Slow_Flash:
	            APP_Set_Timer( APP_LED_OFF, 20 );   //320ms
		break;
		
	        case LED_Fast_Flash:
	            APP_Set_Timer( APP_LED_OFF, 10 );   //160ms
		break;
		
	        case LED_ON:
		break;
	    }
	        
    }else{
        write1_sfrbit(LEDB, OFF );
        write1_sfrbit(LEDG, OFF );
        write1_sfrbit(LEDR, OFF );    
    }


    
    return(KE_MSG_CONSUMED);
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_LED_OFF_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_LED_OFF_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    if(FW_LED_Flag){
	    switch(RamTemp.HW_Led_Color){    //color
		    
	        case LEDBlue:
				        Printf("LEDBOFF\r\n"); 
	            write1_sfrbit(LEDB, OFF );
		break;
		
	        case LEDGree:
	            write1_sfrbit(LEDG, OFF );
		break;
		
	        case LEDRead:
	            write1_sfrbit(LEDR, OFF );
		break;

	    }
	    
	    switch(RamTemp.HW_Led_Mode){    //LED_Mode
		    
	        case LED_Stop:    //stop
	            write1_sfrbit(LEDB, OFF );
	            write1_sfrbit(LEDG, OFF );
	            write1_sfrbit(LEDR, OFF );
		break;
		
	        case LED_Slow_Flash:
	            APP_Set_Timer( APP_LED_ON, 20 );   //320ms
		break;
		
	        case LED_Fast_Flash:
	            APP_Set_Timer( APP_LED_ON, 10 );   //160ms
		break;
		
	        case LED_ON:
		break;
	    }	    
    }else{
        write1_sfrbit(LEDB, OFF );
        write1_sfrbit(LEDG, OFF );
        write1_sfrbit(LEDR, OFF );    
    }



    return(KE_MSG_CONSUMED);
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Auto_return_UID_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Auto_return_UID_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	
    RBLE_GAP_Broadcast_Disable();
    
    (void)RBLE_GAP_Broadcast_Enable(
        RBLE_GAP_GEN_DISCOVERABLE, RBLE_GAP_UND_CONNECTABLE,
        &Eddystone_Temp);

	
    return(KE_MSG_CONSUMED);
}


/**************************************************************************************/
/**
 *  @brief      rBLE API Call : ADV_Periodic_Change_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t ADV_Periodic_Change_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
    uint8_t x=0;
    
    Time_Count++;
    		
    if(Time_Count==2){
        Printf("1's\r\n");  
        ADV_TLM_Count++;
	ADV_UID_Count++;
        ADV_URL_Count++;  
	Time_Count=0;
    }

    for(x=0;x<=3;x++){   //TLM UID URL
	    switch(Profile.Profile_Mode){
	        case Mod_Normal:   //Normal 
		if((Normal.TLM_Enable)&&(Normal.TLM_Interval==ADV_TLM_Count)){
		    ADV_TLM_Count=0;
		    ADV_Fifo[ADV_Fifo_Head]=ADV_TLM;
		    ADV_Fifo_Head++;
		    if(ADV_Fifo_Head>=6){
		        ADV_Fifo_Head=0;
		    }
		   // Printf("TLM ADV_Fifo_Head=%02d\r\n",ADV_Fifo_Head);
		}else if((Normal.UID_Enable)&&(Normal.UID_Count==ADV_UID_Count)){
		    ADV_UID_Count=0;
		    ADV_Fifo[ADV_Fifo_Head]=ADV_UID;
		    ADV_Fifo_Head++;
		    if(ADV_Fifo_Head>=6){
		        ADV_Fifo_Head=0;
		    }
		    //Printf("UID ADV_Fifo_Head=%02d\r\n",ADV_Fifo_Head);
		}else if((Normal.URL_Enable)&&(Normal.URL_Count==ADV_URL_Count)){
		    ADV_URL_Count=0;
		    ADV_Fifo[ADV_Fifo_Head]=ADV_URL;
		    ADV_Fifo_Head++;
		    if(ADV_Fifo_Head>=6){
		        ADV_Fifo_Head=0;
		    }
		    //Printf("URL ADV_Fifo_Head=%02d\r\n",ADV_Fifo_Head);

		}
		break;
		
	        case Mod_Left:    //Left
		
		break;  
		
	        case Mod_Right:    //Right 
		
		break;      
	    }    
    }


    if(ADV_Fifo_Head!=ADV_Fifo_Tail){   //Change ADV data 3 states
        switch(ADV_Fifo[ADV_Fifo_Tail]){
	    case ADV_TLM:
	        Printf("Get Change ADV TLM\r\n");
	    break;
	    case ADV_UID:
	    	Printf("Get Change ADV UID\r\n");
	    break;
	    case ADV_URL:
	        Printf("Get Change ADV URL\r\n");
	    break;
	}
	//Printf("ADV_Fifo_Tail=%02d\r\n",ADV_Fifo_Tail);
	ADV_Fifo_Tail++;
	if(ADV_Fifo_Tail>=6){
	    ADV_Fifo_Tail=0;
	}
    }

    

   // Printf("Time_Count=%02d  ADV_TLM_Count=%02d  ADV_UID_Count=%02d  ADV_URL_Count=%02d\r\n",Time_Count,ADV_TLM_Count,ADV_UID_Count,ADV_URL_Count);

    APP_Set_Timer( ADV_Periodic_Change, 50 );   //500ms
    return(KE_MSG_CONSUMED);
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : APP_Auto_return_UID_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t APP_Key_Auto_Retun_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
        Printf("AR_Profile\r\n"); 
    switch(RamTemp.AR_Profile){
        case Mod_Default:
            memcpy(&RamTemp,&Default,17);

            memcpy(&Ram_ADV.UID,&Eddystone_UID,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL,48);
	    
	    RamADV_Count=Default.Adv_Interval;
	    RamUID_Count=Default.UID_Count;
	    RamURL_Count=Default.URL_Count;
	    RamADV_Interval=Default.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	    
        case Mod_Normal:
            memcpy(&RamTemp,&Normal,17);
	    
	    memcpy(&Ram_ADV.UID,&Eddystone_UID_N_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_N_flash,48);
	    
	    RamADV_Count=Normal.Adv_Interval;
	    RamUID_Count=Normal.UID_Count;
	    RamURL_Count=Normal.URL_Count;
	    RamADV_Interval=Normal.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	
        case Mod_Left:
            memcpy(&RamTemp,&Left,17);
	    
            memcpy(&Ram_ADV.UID,&Eddystone_UID_L_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_L_flash,48);
	    
	    RamADV_Count=Left.Adv_Interval;
	    RamUID_Count=Left.UID_Count;
	    RamURL_Count=Left.URL_Count;
	    RamADV_Interval=Left.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
	
        case Mod_Right:
            memcpy(&RamTemp,&Right,17);
	    
            memcpy(&Ram_ADV.UID,&Eddystone_UID_R_flash,48);
            memcpy(&Ram_ADV.URL,&Eddystone_URL_R_flash,48);
	    
	    RamADV_Count=Right.Adv_Interval;
	    RamUID_Count=Right.UID_Count;
	    RamURL_Count=Right.URL_Count;
	    RamADV_Interval=Right.Adv_Interval*17;
	    Ram_ADV.UID.adv_param.adv_intv_min=RamADV_Interval;
	    Ram_ADV.UID.adv_param.adv_intv_max=RamADV_Interval;
        break; 
    }
    
    return(KE_MSG_CONSUMED);
}


/**************************************************************************************/
/**
 *  @brief      rBLE API Call : UID_Change_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t UID_Change_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	
    if(RamTemp.UID_Enable){
	        RBLE_GAP_Broadcast_Disable();
    //Printf("UID_ADV");
	(void)RBLE_GAP_Broadcast_Enable(
	RBLE_GAP_GEN_DISCOVERABLE, RBLE_GAP_UND_CONNECTABLE,
	&Ram_ADV.UID);

       APP_Set_Timer( URL_Change, (RamADV_Count*RamUID_Count) );   
	   
    }else{
    }
    
    
    
	
    return(KE_MSG_CONSUMED);
}

/**************************************************************************************/
/**
 *  @brief      rBLE API Call : URL_Change_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t URL_Change_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	
	
    if(RamTemp.URL_Enable){
	        RBLE_GAP_Broadcast_Disable();
    //Printf("URL_ADV");
	(void)RBLE_GAP_Broadcast_Enable(
	RBLE_GAP_GEN_DISCOVERABLE, RBLE_GAP_UND_CONNECTABLE,
	&Ram_ADV.URL);

        APP_Set_Timer( UID_Change, (RamADV_Count*RamURL_Count) );   
	 
    }else{
    }
    
	
    return(KE_MSG_CONSUMED);
}
/**************************************************************************************/
/**
 *  @brief      rBLE API Call : Periodic_Change_Command
 *  
 *  @retval     rBLE API Return Status
 */
/******************************************************************************************/
static int_t Periodic_Change_Command(ke_msg_id_t  const  msgid,
                                          void         const *param,
                                          ke_task_id_t const  dest_id,
                                          ke_task_id_t const  src_id)
{
	
    return(KE_MSG_CONSUMED);
}



void Delay1us(uint16_t ms){  //3.65us
	 uint16_t delay;
	 volatile uint32_t i;
	 for (delay = ms; delay >0 ; delay--)
	//1ms loop with -Os optimisation
	  {
	  for (i=1; i >0;i--){};
	  }
}

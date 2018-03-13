#include	"types.h"
#include "arch.h"
#include "rble.h"
#include "rble_api.h"
#include "rble_app.h"
#include "rwke_api.h"
#include "prf_sel.h"
#include "rble_sample_app_peripheral.h"

void APP_Set_RunCmd( uint16_t cmd );
void APP_Set_Timer( ke_msg_id_t Id, uint16_t Timer_Cnt );

enum APP_TASK_ID_enum {
    /* -------------------------- Update Data to chr -----------------------*/
    APP_Update_Chr_Data,
    /* -------------------------- SendLPCCMD -----------------------*/
    APP_Send_ReadCMD2LPC,
    APP_Send_CMD,
    APP_LED_Duty,
    APP_LED_Set,
    APP_LED_Color,
    /* -------------------------- Weak up LPC -----------------------*/
    APP_Weak_UP_LPC_Read,
    APP_Weak_UP_LPC_LED,
    APP_Weak_UP_LPC_CMD,
    /* -------------------------- Sleep G1D -----------------------*/
    APP_Sleep_G1D,
    /* -------------------------- Flash G1D -----------------------*/
    APP_Flash_iBeacon_Reset,
    APP_Write_Flash_Dlay  ,
    APP_Flash_Stop_Dlay,
    APP_GAP_Change_Connection_Param,
    APP_Flash_Erase_Dlay,
    /* -------------------------- UPdateCHR G1D -----------------------*/
    APP_Update_Chr_ADV,
    APP_Update_Chr_Weight,
    /* -------------------------- Read ADC -----------------------*/
    APP_Read_ADC,
    APP_LPC_Rest,
    /* -------------------------- iBeacon -----------------------*/
    APP_ADV_Update,
    /* -------------------------- Key -----------------------*/
    APP_SW1_Long,
    APP_SW2_Long,
    APP_SW1_Short,
    APP_SW2_Short,
    APP_Key_Auto_Retun,
    /* -------------------------- Evt Timer -----------------------*/
    APP_Evt_timer,
    /* -------------------------- BUZZER -----------------------*/
    APP_Buzzer_ON,
    APP_Buzzer_OFF,
    APP_Buzzer_Count,
    /* -------------------------- LED -----------------------*/
    APP_LED_ON,
    APP_LED_OFF, 
    /* -------------------------- ADV -----------------------*/
    APP_Auto_return_UID,
    /* -------------------------- ADV_Periodic_Change -----------------------*/
    ADV_Periodic_Change,
    /* -------------------------- ADV_Periodic_Change -----------------------*/
    UID_Change,
    URL_Change,
    Periodic_Change,
};



/*******************************************************************************
 * Variable Declarations
 ******************************************************************************/
extern const struct ke_state_handler APP_State_Handler[APP_STATE_MAX];
extern const struct ke_state_handler APP_Default_Handler;
extern ke_state_t APP_State[APP_IDX_MAX];
extern bool Delay_LED_CMD_flag;
extern uint8_t Delay_LED_CMD_Count;
extern bool SendRead_CMD_Flag;
extern uint16_t Read_Duty_Time;
extern bool ADC_CMD_Flag;
extern bool G1D_Sleep_flag;
extern BOOL APP_Check_sleep( void );
void Delay1us(uint16_t ms);


/*Buzzer*/
extern uint8_t Buzzer_Count;
extern uint8_t Buzzer_Count_Temp;
extern bool FW_Buzzer_Flag;
/*LED*/
extern uint8_t LED_Count_Temp;
extern bool FW_LED_Flag;


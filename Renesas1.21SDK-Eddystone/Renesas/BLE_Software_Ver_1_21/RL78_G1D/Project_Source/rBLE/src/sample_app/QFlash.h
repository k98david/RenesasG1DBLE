#include    "rwke_api.h"
#include    "rble.h"
#include    "rble_app.h"

#include    "compiler.h"


#define Data_Flash_2_Len    50
#define Data_All_Set_Len    92
void Write_Data_flash(uint8_t *Arr,uint8_t id);
void Read_Data_flash(uint8_t *Arr,uint8_t id);
void Push_Data_to_G1D(void);
void Stop_Data_flash(void);
//Data Flash struce
typedef struct{
    uint8_t Mark;
    uint8_t Adv_Interval;
    uint8_t Adv_Range;
    bool LED_Switch;
    uint8_t LED_Color;
    uint8_t LED_Count;
    bool Sound_Switch;
    uint8_t Sound_Count; 
    uint8_t Mod_Time; 
    bool Auto_Rec;
    bool Auto_Rec_ID;
}Seting_Data_t;

typedef struct{
    uint8_t Mark;
    bool Left_Button;
    bool Right_Button;
}Switch_t;

enum {
  LEDBlue,
  LEDGree,
  LEDRead
};


typedef struct{
    uint8_t Mark;
    uint8_t Adv_Interval;
    uint8_t SHR_Txpower;
    bool TLM_Enable;
    uint16_t TLM_Interval;
    bool URL_Enable;
    uint8_t URL_Count;
    bool UID_Enable;
    uint8_t UID_Count;
    bool AR_Enable;
    uint8_t AR_Profile;
    uint16_t AR_Interval;
    bool BTN_Enable;
    bool BTNL_Enable;
    uint8_t HW_Led_Mode;
    uint8_t HW_Led_Color;
    uint8_t HW_Speaker_Mode;
}Setup_Data_t;

extern Setup_Data_t Normal;
extern Setup_Data_t Left;
extern Setup_Data_t Right;

typedef  struct  {
    Setup_Data_t Default2;
    Setup_Data_t Normal2;	
    Setup_Data_t Left2;
    Setup_Data_t Right2;
}Setup_ALLData_t;

typedef struct{
    uint8_t Mark;
    uint8_t Profile_Mode;
}Profile_Mode_t;

enum {
  LED_Stop,
  LED_Slow_Flash,
  LED_Fast_Flash,
  LED_ON
};

enum {
  Buzzer_Stop,
  Buzzer_one_sound,
  Buzzer_two_sound,
  Buzzer_three_sound
};

enum {
  Mod_Default,
  Mod_Normal,
  Mod_Left,
  Mod_Right
};

enum {
  ADV_TLM,
  ADV_UID,
  ADV_URL
};

typedef struct{
    RBLE_ADV_INFO UID;
    RBLE_ADV_INFO URL;
}ADV_Data_t;



extern Seting_Data_t L_Seting_Data;
extern Seting_Data_t R_Seting_Data;
extern Switch_t ButtSet;

	

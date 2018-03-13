/**
 ****************************************************************************************
 *
 * @file iic_master.c
 *
 * @brief IIC Master Driver module.
 *
 * Copyright(C) 2012-2014 Renesas Electronics Corporation
 *
 ****************************************************************************************
 */
 
/**
 ****************************************************************************************
 * @addtogroup IICA
 * @{
 ****************************************************************************************
 */
#if defined(_USE_REL_RL78)
#pragma interrupt INTIICA0 iica0_isr
#pragma interrupt INTP3    intp3_isr
#elif defined(_USE_CCRL_RL78)
#include "iodefine.h"
#pragma interrupt iica0_isr (vect=INTIICA0)
#pragma interrupt intp3_isr (vect=INTP3)
#endif // _USE_REL_RL78

/*
 * INCLUDE FILES
 ****************************************************************************************
 */
#include "arch.h"
#include "port.h"
#include "serial.h"
#include "timer.h"
#include "iic_master.h"
#include "rscip_uart.h"


#if  (!SERIAL_I_3WIRE) || \
     ( SERIAL_C_4WIRE  || SERIAL_C_5WIRE || \
       SERIAL_U_2WIRE  || SERIAL_U_3WIRE || SERIAL_U_DIV_2WIRE)
 #error "Serial setting in serial.h is wrong."
#endif

/*
 * DEFINES MACRO
 ****************************************************************************************
 */
///transmit request signal port operation
#define IIC_REQ_EI()   write1_sfrbit(PMK3, IRQ_ENABLE)
#define IIC_REQ_DI()   write1_sfrbit(PMK3, IRQ_DISABLE)
#define IIC_REQ_CLR()  write1_sfrbit(PIF3, IRQ_CLEAR)
#define IIC_REQ_VAL()  read1_sfr(P3, 0)
#define IIC_REQ_INIT()                          \
{                                               \
    write1_sfr(PM3, 0, PORT_INPUT);             \
    write1_sfr(PU3, 0, PORT_PULLUP);            \
}
#define IIC_REQ_DETECT_FALL()                   \
{                                               \
    write1_sfr(EGP0, 3, 0);                     \
    write1_sfr(EGN0, 3, 1);                     \
}
#define IIC_REQ_DETECT_RISE()                   \
{                                               \
    write1_sfr(EGP0, 3, 1);                     \
    write1_sfr(EGN0, 3, 0);                     \
}

/// callback macro
#define IIC_CALLBACK(cb)        SERIAL_CALLBACK_VOID(cb)
#define IIC_CB_TX_DONE()        IIC_CALLBACK(iic_cb_info.tx_callback)
#define IIC_CB_RX_DONE()        IIC_CALLBACK(iic_cb_info.rx_callback)
#define IIC_CB_RX_ERR()         IIC_CALLBACK(iic_cb_info.err_callback)
#define IIC_CB_RX_FIRST_BYTE()  /* no use */
#define IIC_CB_RX_COMP_CHK()    /* no use */

/// check slave request state
#define IIC_IS_SLAVE_REQUESTED()   (IIC_REQ_VAL()==0)

/// initialize IIC info
#define IIC_INFO_INIT(info)   \
{                             \
    info.size = 0;            \
    info.cnt  = 0;            \
}

/*
 * STATIC FUNCTIONS PROTOTYPE
 ****************************************************************************************
 */
static bool iic_master_start(uint8_t dir);
static void iic_master_end(const uint8_t err_code);
static void iic_byte_tx(void);
static void iic_byte_rx(void);

/*
 * GLOBAL VARIABLE DEFINITIONS
 ****************************************************************************************
 */
static SERIAL_EVENT_PARAM     iic_cb_info;
static IIC_INFO               iic_tx_info;
static IIC_INFO               iic_rx_info;
static uint8_t                iic_target_addr;
static uint8_t                iic_state;

/*
 * FUNCTION DEFINITIONS
 ****************************************************************************************
 */

#define IIC_ADDR_WIRTE()      write_sfr(IICA0, iic_target_addr)
#define IIC_ADDR_READ()       write_sfr(IICA0, (uint8_t)(iic_target_addr|0x01U))
#define IIC_DISABLE_INT()     write1_sfrbit(IICAMK0, 1)
#define IIC_ENABLE_INT()      write1_sfrbit(IICAMK0, 0)
#define IIC_IS_BUSY()         (read_sfr(IICBSY0)!=0)
#define IIC_IS_START()        (read_sfr(STT0)!=0)
#define IIC_IS_STOP()         (read_sfr(SPT0)!=0)
#define IIC_CLEAR_INT()       write1_sfrbit(IICAIF0, 0)
#define IIC_START_CONDITION() write1_sfrbit(STT0, 1)
#define IIC_STOP_CONDITION()  write1_sfrbit(SPT0, 1)


/**
 ****************************************************************************************
 * @brief Initialize IIC communication.
 *****************************************************************************************
 */
BOOL serial_init (void)
{
    SERIAL_EVENT_PARAM cb = {0};

    cb.rx_callback     = &RSCIP_Uart_Rx_Done;
    cb.tx_callback     = &RSCIP_Uart_Tx_Done;
    cb.err_callback    = &RSCIP_Uart_Rx_Error;

    iic_master_init(&cb, IIC_SLAVE_ADDRESS);

    return( TRUE );
}

/**
 ****************************************************************************************
 * @brief Start IIC receiving data.
 *****************************************************************************************
 */
void serial_read(uint8_t *bufptr, const uint16_t size)
{
    iic_master_read(bufptr, size);
}

/**
 ****************************************************************************************
 * @brief Start IIC transmit data.
 *****************************************************************************************
 */
void serial_write(const uint8_t *bufptr, const uint16_t size)
{
    iic_master_write(bufptr, size);
}

/**
 ****************************************************************************************
 * @brief Stop IIC communication.
 *****************************************************************************************
 */
void serial_exit( void )
{
}


/**
 ****************************************************************************************
 * @brief re-request to tx after timeout timer was expired
 *****************************************************************************************
 */
static void iic_master_tx_timeout(void)
{
    /* Inform the end of transmission */
    iic_master_end(IIC_ERR_TIMEOUT);
}

/**
 ****************************************************************************************
 * @brief iic master communication start
 *****************************************************************************************
 */
static bool iic_master_start(uint8_t dir)
{
    bool rtn = false;

    /* Write */
    if( dir == IIC_MASTER_WRITE )
    {
        /* start to check timeout */
        RBLE_Set_Timer_Id(_RBLE_TIMER_ID_SERIAL, (RBLE_FUNC)iic_master_tx_timeout, 0x0002);
    }
    /* disable INTIIA0 interrupt */
    IIC_DISABLE_INT();
    
    if( (iic_state != IIC_STAT_IDLE) ||     /* Check state */
        IIC_IS_BUSY()                ||     /* Check bus busy */
        IIC_IS_START()               ||     /* Check trigger START */
        IIC_IS_STOP()  )                    /* Check trigger STOP */
    {
        /* enable INTIIA0 interrupt */
        IIC_ENABLE_INT();
    }   
    else
    {
        /* set IICA0 start condition */
        IIC_START_CONDITION();
        /* enable INTIIA0 interrupt */
        IIC_ENABLE_INT();


        /* Write */
        if( dir == IIC_MASTER_WRITE )
        {
            /* Update state */
            iic_state = IIC_STAT_TX_ACK_WAIT;
            /* send address+write */
            IIC_ADDR_WIRTE();
        }
        /* Read */
        else
        {
            /* Update state */
            iic_state = IIC_STAT_RX_ACK_WAIT;
            /* send address+read */
            IIC_ADDR_READ();
        }
        rtn = true;
    }
    return rtn;
}

/**
 ****************************************************************************************
 * @brief iic master communication end
 *****************************************************************************************
 */
static void iic_master_end(const uint8_t err_code)
{
    uint8_t state_back = iic_state;

    /* stop to check timeout */
    RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);

    /* STOP CONDITION */
    IIC_STOP_CONDITION();

    iic_state = IIC_STAT_IDLE;

    /* RX GOING or RX ACK WAIT */
    if( (state_back == IIC_STAT_RX_GOING) ||
        (state_back == IIC_STAT_RX_ACK_WAIT) )
    {
        /* rx error occured */
        if( err_code != IIC_ERR_NONE )
        {
            IIC_INFO_INIT(iic_rx_info);
            IIC_CB_RX_ERR();
        }
        /* receive one or more bytes */ 
        else if( iic_rx_info.cnt > 0 )
        {
            IIC_INFO_INIT(iic_rx_info);
            IIC_CB_RX_DONE();
        }
        else
        {
            /* do nothing */
        }
    }
    /* TX GOING or TX ACK WAIT */
    else if((state_back == IIC_STAT_TX_GOING) ||
            (state_back == IIC_STAT_TX_ACK_WAIT) )
    {
        IIC_INFO_INIT(iic_tx_info);
        IIC_CB_TX_DONE();
    }
    else
    {
        /* do nothing */
    }
    
    /* more than tx data */
    if( iic_tx_info.cnt < iic_tx_info.size )
    {
        /* delay of between communication */
        uint8_t wait = 10;
        while(wait--)
        {
            __no_operation();
        }
        
        /* start master write */
        if( iic_master_start(IIC_MASTER_WRITE) == false )
        {
            /* stop to check timeout */
            RBLE_Clear_Timer_Id(_RBLE_TIMER_ID_SERIAL);
            IIC_INFO_INIT(iic_tx_info);
            IIC_CB_TX_DONE();
            IIC_REQ_EI();
        }
    }
    /* state IDLE */
    else
    {
        IIC_REQ_EI();
    }
}

/**
 ****************************************************************************************
 * @brief send 1byte data.
 *****************************************************************************************
 */
static void iic_byte_tx(void)
{
    /* If there is a remaining data */
    if( iic_tx_info.cnt < iic_tx_info.size )
    {
        /* send 1byte data */
        write_sfr(IICA0, iic_tx_info.bufptr[iic_tx_info.cnt++]);
    }
    /* end of data */
    else
    {
        iic_master_end(IIC_ERR_NONE);
    }
}

/**
 ****************************************************************************************
 * @brief send 1byte data.
 *****************************************************************************************
 */
static void iic_byte_rx(void)
{
    /* disable ACK */
    if( read_sfr(ACKE0) == 0 )
    {
        iic_master_end(IIC_ERR_NONE);
    }
    /* reception buffer has a space */
    else if( iic_rx_info.cnt < iic_rx_info.size  )
    {
        /* 1byet data read */
        iic_rx_info.bufptr[iic_rx_info.cnt++] = read_sfr(IICA0);

        /* slave last byte */
        if( !IIC_IS_SLAVE_REQUESTED() )
        {
            /* Disable ACK */
            write1_sfrbit(ACKE0, 0);
            /* 9 clock interrupt mode */
            write1_sfrbit(WTIM0, 1);
        }
        /* reception buffer full */
        if( iic_rx_info.cnt >= iic_rx_info.size )
        {
            IIC_CB_RX_DONE();
        }
        /* reception buffer NOT full */
        else
        {
            /* wait released */
            write1_sfrbit(WREL0, 1);
        }
    }
    else
    {
        /* do nothing */
    }
}


/**
 ****************************************************************************************
 * @brief Initialize IIC communication.
 *****************************************************************************************
 */
void iic_master_init(SERIAL_EVENT_PARAM *param, uint8_t slave_addr)
{
    /* keep callback informations */
    memcpy(&iic_cb_info, param, sizeof(SERIAL_EVENT_PARAM));

    /* Initialized valiable */
    IIC_INFO_INIT(iic_tx_info);
    IIC_INFO_INIT(iic_rx_info);

    iic_target_addr = (uint8_t)(slave_addr << 1);
    iic_state       = IIC_STAT_IDLE;

    /* Initialized IICA hardware module */
    write1_sfrbit(IICA0EN,  1);    /* supply IICA0 clock */
    write1_sfrbit(IICE0,    0);    /* disable IICA0 operation */
    write1_sfrbit(IICAMK0,  1);    /* disable INTIICA0 interrupt */
    write1_sfrbit(IICAIF0,  0);    /* clear INTIICA0 interrupt flag */

    /* Set INTIICA0 low priority */
    write1_sfrbit(IICAPR10, 1);
    write1_sfrbit(IICAPR00, 1);

    /* Set SCLA0(P60), SDAA0 (P61) pin */
    write_sfr(P6,  (uint8_t)(read_sfr(P6)  & 0xFCU));
    write_sfr(PM6, (uint8_t)(read_sfr(PM6) | 0x03U));

    /* Set Fast mode */
    write1_sfrbit(SMC0,     1);

    /* Set IICWL0/IICWH0 (100kbps to 400kbps) */
    write_sfr(IICWL0,   0x15U);
    write_sfr(IICWH0,   0x14U);

    /* digital filter on */
    write1_sfrbit(DFC0,     1);


#if defined(CLK_HOCO_24MHZ) || \
    defined(CLK_HOCO_32MHZ)    /* fMAIN > 20MHz */
    /* Set fCLK/2 */
    write1_sfrbit(PRS0,     1);
#else                          /* fMAIN <= 20MHz */
    /* Set fCLK */
    write1_sfrbit(PRS0,     0);
#endif 

    /* Set Master Address 7bit*/
    write_sfr(SVA0,     (uint8_t)(IIC_MASTER_ADDRESS<<1));

    /* After operation is enabled (IICEn = 1), 
       enable generation of a start condition without detecting 
       a stop condition.*/
    write1_sfrbit(STCEN0,   1);

    /* Disable communication reservation */
    write1_sfrbit(IICRSV0,  1);

    /* disable generation of interrupt request 
       when stop condition is detected */
    write1_sfrbit(SPIE0,    0);

    /* Interrupt request is generated at the ninth clock's 
       falling edge */
    write1_sfrbit(WTIM0,    1);

    /* Enable acknowledgment(ACK) */
    write1_sfrbit(ACKE0,    1);

    /* Enable INTIICA0 interrupt */
    write1_sfrbit(IICAMK0,  0);

    /* Enable IICA0 operation */
    write1_sfrbit(IICE0,    1);

    /* Exit from communications */
    write1_sfrbit(LREL0,    1);

    /* Set SCLA0, SDAA0 pin */
    write_sfr(PM6, (uint8_t)(read_sfr(PM6) & 0xFCU));
    
    /* Case of bus non-liberating. */
    if( read_sfr(STCEN0) == 0 )
    {
        uint8_t wait = 0xFF;
        /* Generate stop condition. */
        IIC_STOP_CONDITION();
        /* Detection waiting of stop condition. */
        while( wait-- )
        {
            if( read_sfr(SPD0) != 0 ) break;
            __no_operation();
        }
    }

    /* Initialized REQ port */
    IIC_REQ_INIT();
    IIC_REQ_DETECT_FALL();
    IIC_REQ_CLR();
    IIC_REQ_EI();

}
/**
 ****************************************************************************************
 * @brief Start IICA receiving data.
 *        When finished receiving data, calls callback function.
 *
 * @param[in,out] bufptr  destination pointer, start of the space where data is transfered to.
 * @param[in] size        Transfer size, received data size byte by IIC.
 *****************************************************************************************
 */
void iic_master_read(uint8_t *bufptr, const uint16_t size)
{
    /* keep rx buffer pointer and size*/
    iic_rx_info.bufptr  = (uint8_t*)bufptr;
    iic_rx_info.size    = (uint16_t)size;

    /* rx counter clear */
    iic_rx_info.cnt     = (uint16_t)0;

    /* Wait released if being received */
    if( iic_state == IIC_STAT_RX_GOING )
    {
        /* Wait released */
        write1_sfrbit(WREL0, 1);
    }
}

/**
 ****************************************************************************************
 * @brief Start IICA transferring data.
 *        When finished transferring data, calls callback function.
 *
 * @param[in] bufptr  source pointer, start of the space where data is transfered from.
 * @param[in] size    Transfer size, transferred data size byte by IIC.
 *****************************************************************************************
 */
void iic_master_write(const uint8_t *bufptr, const uint16_t size)
{
    /* keep tx buffer pointer and size*/
    iic_tx_info.bufptr  = (uint8_t*)bufptr;
    iic_tx_info.size    = (uint16_t)size;

    /* tx counter clear */
    iic_tx_info.cnt     = (uint16_t)0;

    if( iic_state == IIC_STAT_IDLE )
    {
        /* start master write */
        iic_master_start(IIC_MASTER_WRITE);
    }
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for INTIICA0.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTIICA0_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for iica0_isr"
#endif
__IRQ void iica0_isr(void)
{
    do {
        if( iic_state == IIC_STAT_IDLE )
        {
            /* Ignored */
            break;
        }

        /* It is not the interrupt for Master */
        if( read_sfr(MSTS0) == 0 )
        {
            /* Ignored */
            break;
        }

        /* bus not ready */
        if( (read_sfr(IICBSY0) == 0) )
        {
            iic_master_end(IIC_ERR_BUS_FAULT);
            break;
        }

        /* before slave address ACK detection */
        if( (iic_state == IIC_STAT_RX_ACK_WAIT) ||
            (iic_state == IIC_STAT_TX_ACK_WAIT) )
        {
            /* ACK not detected */
            if( read_sfr(ACKD0) == 0 )
            {
                iic_master_end(IIC_ERR_NACK);
                break;
            }

            /* disable REQ interrupt */
            IIC_REQ_DI();

            /* Write request (Master transmission) */
            if( read_sfr(TRC0) != 0 )
            {
                /* Update IIC state */
                iic_state = IIC_STAT_TX_GOING;

                /* Enable ACK */
                write1_sfrbit(ACKE0, 1);
                /* 9 clock interrupt mode */
                write1_sfrbit(WTIM0, 1);

                /* send data */
                iic_byte_tx();
            }
            /* Read request (Master reception) */
            else
            {
                /* Update IIC state */
                iic_state = IIC_STAT_RX_GOING;

                /* Enable ACK */
                write1_sfrbit(ACKE0, 1);
                /* 8 clock interrupt mode */
                write1_sfrbit(WTIM0, 0);
                
                /* wait released */
                write1_sfrbit(WREL0, 1);
            }
        }
        /* after slave address ACK detection  */
        else
        {
            /* Write request (Master transmission) */
            if( (read_sfr(TRC0) != 0) && 
                (iic_state == IIC_STAT_TX_GOING) )
            {
                /* NACK detected */
                if(read_sfr(ACKD0) == 0)
                {
                    iic_master_end(IIC_ERR_NACK);
                }
                /* ACK detected */
                else
                {
                    /* send data */
                    iic_byte_tx();
                }
            }
            /* Read request (Master reception) */
            else if( (read_sfr(TRC0) == 0) && 
                     (iic_state == IIC_STAT_RX_GOING) )
            {
                /* receive data */
                iic_byte_rx();
            }
            /* state mismatch */
            else
            {
                iic_master_end(IIC_ERR_MISMATCH);
            }
        }
    }while(0);
}

/**
 ****************************************************************************************
 * @brief Interrupt Service Routine, for Serial Direction Signal.
 *****************************************************************************************
 */
#if defined(_USE_IAR_RL78)
#pragma vector = INTP3_vect
#elif defined(_USE_REL_RL78) | defined(_USE_CCRL_RL78)
/* this pragma should be at the beginning of source file */
#else
#warning "No interrupt vector is genarated for intp3_isr"
#endif
__IRQ void intp3_isr(void)
{
    IIC_REQ_CLR();
    if( IIC_IS_SLAVE_REQUESTED() )
    {
        if( iic_state == IIC_STAT_IDLE )
        {
            IIC_REQ_DI();
            iic_master_start(IIC_MASTER_READ);
        }
    }
}

/// @} module

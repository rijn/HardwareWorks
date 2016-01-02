/*
 *  ____    ____    __   __   ______  ______
 * /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
 * \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
 *  \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
 *   \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
 *    \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
 *     \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/
 *
 * Originally created by Dexta Robotics.
 * Copyright <C> Dexta Robotics, 2015.
 * All rights reserved.
 */

#define DEBUG_MODULE "I2C"

#include "stm32f0xx_conf.h"

#include "stm32f0xx.h"
#include "stm32f0xx_gpio.h"
#include "stm32f0xx_i2c.h"

#include "rcc.h"
#include "debug.h"

#include "i2c.h"

uint32_t I2C_Timeout;

static uint8_t i2cGpioInit ( void )
{
    RCC_AHBPeriphClockCmd ( RCC_AHBPeriph_GPIOA, ENABLE );

    GPIO_InitTypeDef GPIO_InitStructure;

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_10;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_OD;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init ( GPIOA, &GPIO_InitStructure );

    GPIO_PinAFConfig ( GPIOA, GPIO_PinSource9, GPIO_AF_4 );
    GPIO_PinAFConfig ( GPIOA, GPIO_PinSource10, GPIO_AF_4 );
}

uint8_t i2cInit ( void )
{
    I2C_Cmd ( I2C1, DISABLE );
    I2C_DeInit ( I2C1 );
    I2C_SoftwareResetCmd ( I2C1 );
    // I2C_SoftwareResetCmd ( I2C1, DISABLE );

    RCC_APB1PeriphClockCmd ( RCC_APB1Periph_I2C1, ENABLE );
    RCC_I2CCLKConfig ( RCC_I2C1CLK_HSI );

    i2cGpioInit();

    I2C_InitTypeDef I2C_InitStructure;

    I2C_InitStructure.I2C_Mode = I2C_Mode_I2C;
    I2C_InitStructure.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
    I2C_InitStructure.I2C_AnalogFilter = I2C_AnalogFilter_Enable;
    I2C_InitStructure.I2C_DigitalFilter = 0x00;
    I2C_InitStructure.I2C_OwnAddress1 = 0x00;
    I2C_InitStructure.I2C_Ack = I2C_Ack_Enable;
    // I2C_InitStructure.I2C_Ack = I2C_Ack_Disable;
    // I2C_InitStructure.I2C_Timing = 0x30E32E44;
    I2C_InitStructure.I2C_Timing = I2C_TIMING;
    I2C_Init ( I2C1, &I2C_InitStructure );

    I2C_Cmd ( I2C1, ENABLE );

    I2C_SoftwareResetCmd ( I2C1 );

    delay_ms ( 10 );

    return 0;
}

I2C_Status i2cProbe ( uint8_t deviceAddr )
{

    // I2C_SoftwareResetCmd ( I2C1 );
    // I2C_ClearFlag ( I2C1, I2C_FLAG_BUSY );
    // I2C_Timeout = I2C_TIMEOUT;

    // while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_BUSY ) != RESET )
    // {
    //     if ( ( I2C_Timeout-- ) == 0 )
    //     {
    //         return I2C_FAIL;
    //     }
    // }

    I2C_GenerateSTART ( I2C1, ENABLE );

    // I2C_TransferHandling ( I2C1, deviceAddr, 1, I2C_SoftEnd_Mode, I2C_Generate_Start_Write );

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_TXIS ) == RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    return I2C_OK;
}

/**
  * @brief  read n byte from i2c device
  */
I2C_Status i2cReadBytes ( uint8_t driverAddr, uint8_t startAddr, uint8_t length, uint8_t * readBuffer )
{
    uint8_t readNum;

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_BUSY ) != RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    // I2C_GenerateSTART ( I2C1, ENABLE );
    // I2C_GenerateSTART ( I2C1, DISABLE );

    // I2C_SendData ( I2C1, startAddr );

    // I2C_GenerateSTOP ( I2C1, ENABLE );
    // I2C_GenerateSTOP ( I2C1, DISABLE );


    // return 0;
    I2C_TransferHandling ( I2C1, driverAddr, 1, I2C_SoftEnd_Mode, I2C_Generate_Start_Write );

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_TXIS ) == RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    I2C_SendData ( I2C1, startAddr );

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_TC ) == RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    I2C_TransferHandling ( I2C1, driverAddr, length,  I2C_AutoEnd_Mode, I2C_Generate_Start_Read );

    for ( readNum = 0; readNum < length; readNum++ )
    {
        I2C_Timeout = I2C_TIMEOUT;

        while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_RXNE ) == RESET )
        {
            if ( ( I2C_Timeout-- ) == 0 )
            {
                return I2C_FAIL;
            }
        }

        readBuffer[readNum] = I2C_ReceiveData ( I2C1 );
    }

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_STOPF ) == RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    return I2C_OK;
}

/**
  * @brief  write n byte to i2c device
  */
I2C_Status i2cWriteBytes ( uint8_t driverAddr, uint8_t startAddr, uint8_t length, uint8_t * writeBuffer )
{
    uint8_t writeNum;


    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_BUSY ) != RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    I2C_TransferHandling ( I2C1, driverAddr, 1, I2C_Reload_Mode, I2C_Generate_Start_Write );

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_TXIS ) == RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    I2C_SendData ( I2C1, startAddr );

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_TCR ) == RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    I2C_TransferHandling ( I2C1, driverAddr, length, I2C_AutoEnd_Mode, I2C_No_StartStop );

    for ( writeNum = 0; writeNum < length; writeNum++ )
    {
        I2C_Timeout = I2C_TIMEOUT;

        while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_TXIS ) == RESET )
        {
            if ( ( I2C_Timeout-- ) == 0 )
            {
                return I2C_FAIL;
            }
        }

        I2C_SendData ( I2C1, writeBuffer[writeNum] );
    }

    I2C_Timeout = I2C_TIMEOUT;

    while ( I2C_GetFlagStatus ( I2C1, I2C_FLAG_STOPF ) == RESET )
    {
        if ( ( I2C_Timeout-- ) == 0 )
        {
            return I2C_FAIL;
        }
    }

    return I2C_OK;
}

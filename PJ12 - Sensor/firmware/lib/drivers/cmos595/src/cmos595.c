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

#include "cmos595.h"

#include "stm32f10x_conf.h"
#include "stm32f10x_gpio.h"

#include "timer.h"
#include "debug.h"

#define delay_ms    delay_ms

#define CMOS595_RESPONSE_TIME  10

cmos595Struct cmos595Init ( cmos595GpioStruct * gpio )
{
    /* setup GPIO */
    GPIO_InitTypeDef GPIO_InitStructure;

    RCC_APB2PeriphClockCmd ( RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO, ENABLE );

    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;

    GPIO_InitStructure.GPIO_Pin = gpio.MR_Pin;
    GPIO_Init ( gpio.MR_Port, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = gpio.SHCP_Pin;
    GPIO_Init ( gpio.SHCP_Port, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = gpio.STCP_Pin;
    GPIO_Init ( gpio.STCP_Port, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = gpio.OE_Pin;
    GPIO_Init ( gpio.OE_Port, &GPIO_InitStructure );

    GPIO_InitStructure.GPIO_Pin = gpio.DATA_Pin;
    GPIO_Init ( gpio.DATA_Port, &GPIO_InitStructure );

    /* setup cmos595 struct */
    cmos595Struct cmos595;
    cmos595.gpioStruct = gpio;
    cmos595.register = 0;
    cmos595.enable = 0;
    /* flag this struct as initialized */
    cmos595._init = 1;

    cmos595.set = cmos595Set;

    return cmos595;
}

uint8_t cmos595Reset ( cmos595Struct * cmos595 )
{
    cmos595.register = 0;
    GPIO_Reset ( cmos595.gpio.MR_Port, cmos595.gpio.MR_Pin );
    delay_ms ( CMOS595_RESPONSE_TIME );
    GPIO_Set ( cmos595.gpio.MR_Port, cmos595.gpio.MR_Pin );
    return 0;
}

uint8_t cmos595Enable ( cmos595Struct * cmos595 )
{
    cmos595.enable = 1;
    GPIO_Reset ( cmos595.gpio.OE_Port, cmos595.gpio.OE_Pin );
    return 0;
}

uint8_t cmos595Disable ( cmos595Struct * cmos595 )
{
    cmos595.enable = 0;
    GPIO_Set ( cmos595.gpio.OE_Port, cmos595.gpio.OE_Pin );
    return 0;
}

static uint8_t cmos595Update ( cmos595Struct * cmos595 )
{
    uint8_t i = 0;

    for ( i = 0; i < 8; i++ )
    {
        if ( cmos595.register >> i & 0x01 )
        {
            GPIO_Set ( cmos595.gpio.DATA_Port, cmos595.gpio.DATA_Pin );
        }
        else
        {
            GPIO_Reset ( cmos595.gpio.DATA_Port, cmos595.gpio.DATA_Pin );
        }

        GPIO_Set ( cmos595.gpio.SHCP_Port, cmos595.gpio.SHCP_Pin );
        delay_ms ( CMOS595_RESPONSE_TIME );
        GPIO_Reset ( cmos595.gpio.SHCP_Port, cmos595.gpio.SHCP_Pin );
    }

    GPIO_Set ( cmos595.gpio.STCP_Port, cmos595.gpio.STCP_Pin );
    delay_ms ( CMOS595_RESPONSE_TIME );
    GPIO_Reset ( cmos595.gpio.STCP_Port, cmos595.gpio.STCP_Pin );

    return 0;
}

uint8_t cmos595Set ( cmos595Struct * cmos595, uint8_t register )
{
    cmos595.register = register;
    cmos595Update ( cmos595 );
    return 0;
}

uint8_t cmos595SetPin ( cmos595Struct * cmos595, uint8_t pin )
{
    cmos595.register |= pin;
    cmos595Update ( cmos595 );
    return 0;
}

uint8_t cmos595ResetPin ( cmos595Struct * cmos595, uint8_t pin )
{
    cmos595.register &= ~pin;
    cmos595Update ( cmos595 );
    return 0;
}

uint8_t cmos595Get ( cmos595Struct * cmos595 )
{
    return cmos595.register;
}

uint8_t cmos595GetPin ( cmos595Struct * cmos595, uint8_t pin )
{
    return cmos595.register & pin;
}


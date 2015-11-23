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
 *
 *   Created: Nov. 17, 2015    Rijn
 */

#ifndef __595_H
#define __595_H

#include "stm32f10x.h"
#include "stm32f10x_gpio.h"

typedef struct
{
    GPIO_TypeDef  * MR_Pin;
    uint16_t        MR_Port;
    GPIO_TypeDef  * SHCP_Pin;
    uint16_t        SHCP_Port;
    GPIO_TypeDef  * STCP_Pin;
    uint16_t        STCP_Port;
    GPIO_TypeDef  * OE_Pin;
    uint16_t        OE_Port;
    GPIO_TypeDef  * DATA_Pin;
    uint16_t        DATA_Port;
} cmos595GpioStruct;

#define CMOS595_Pin_0   ((uint8)0x01)
#define CMOS595_Pin_1   ((uint8)0x02)
#define CMOS595_Pin_2   ((uint8)0x04)
#define CMOS595_Pin_3   ((uint8)0x08)
#define CMOS595_Pin_4   ((uint8)0x10)
#define CMOS595_Pin_5   ((uint8)0x20)
#define CMOS595_Pin_6   ((uint8)0x40)
#define CMOS595_Pin_7   ((uint8)0x80)

#define IS_CMOS595_PIN(PIN) ((((PIN) & (uint8_t)0x00) == 0x00) && ((PIN) != (uint8_t)0x00))

/**
 * The typedef for a struct describing 75HC595 bus
 */
typedef struct
{
    cmos595GpioStruct * gpioStruct;

    uint8_t             register;
    uint8_t             enable;
    uint8_t             _init;

    uint8_t             ( *set ) ( cmos595GpioStruct * gpio );
} cmos595Struct;

cmos595Struct cmos595Init ( cmos595GpioStruct * gpio );

uint8_t cmos595Reset ( cmos595Struct * cmos595 );
uint8_t cmos595Enable ( cmos595Struct * cmos595 );
uint8_t cmos595Disable ( cmos595Struct * cmos595 );

uint8_t cmos595Set ( cmos595Struct * cmos595 );
uint8_t cmos595SetPin ( cmos595Struct * cmos595, uint8_t pin );
uint8_t cmos595ResetPin ( cmos595Struct * cmos595, uint8_t pin );

uint8_t cmos595Get ( cmos595Struct * cmos595 );
uint8_t cmos595GetPin ( cmos595Struct * cmos595, uint8_t pin );

#endif

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

#define DEBUG_MODULE "MAIN"

#include "stm32f10x.h"
#include "config.h"
#include "system.h"
#include "platform.h"

#include "timer.h"

#include "debug.h"

#include "led.h"

#include "ws2812.h"

int main()
{
    platformInit();

    ws2812Struct ws2812_a, ws2812_b;
    // uint8_t data[7] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xFF, 0x00};
    uint8_t data[24];
    // ws2812Init();

    uint8_t i;

    for ( i = 0; i < 8; i++ )
    {
        data[i * 3 + 0] = 36 * i;
        data[i * 3 + 1] = 0x00;
        data[i * 3 + 2] = 255 - 36 * i;
    }

    ws2812_a = WS2812.init ( GPIOA, GPIO_Pin_6 );
    ws2812_b = WS2812.init ( GPIOA, GPIO_Pin_7 );
    WS2812.enableBreathing ( &ws2812_a, timerGetRun );
    WS2812.enableBreathing ( &ws2812_b, timerGetRun );

    while ( 1 )
    {
        WS2812.sendData ( &ws2812_a, data, 24 );
        WS2812.sendData ( &ws2812_b, data, 24 );
        delay_ms ( 5 );
    }

    return 0;
}


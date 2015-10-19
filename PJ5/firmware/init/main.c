/*
 *         __    __
 *   _ __ /\_\  /\_\    ___
 *  /\`'__\/\ \ \/\ \ /' _ `\
 *  \ \ \/ \ \ \ \ \ \/\ \/\ \
 *   \ \_\  \ \_\_\ \ \ \_\ \_\
 *    \/_/   \/_/\ \_\ \/_/\/_/
 *              \ \____/
 *               \/___/
 *
 *  Copyright rijn, 2015.
 *  rijnx.com
 */

#define DEBUG_MODULE "MAIN"

#include "config.h"

#include "stm8l10x.h"

#include "led.h"
#include "delay.h"

int main()
{
        ledInit();
        ledSet ( 0, 1 );
        ledSet ( 1, 1 );
        // GPIO_Init(GPIOA, GPIO_Pin_1, GPIO_Mode_Out_PP_High_Fast);

        return 0;
        // int d;
        // // Configure pins
        // PB_DDR = 0x20;
        // PB_CR1 = 0x20;
        // // Loop
        // do {
        //         PB_ODR ^= 0x20;
        //         for(d = 0; d < 29000; d++) { }
        // } while(1);
}
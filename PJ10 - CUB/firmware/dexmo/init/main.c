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

#include "nRF24L01.h"

#if defined PLATFORM_DEVICE_DEXMO_A
// #include "sbn1.dexmo_a.h"
#include "mpu9150.h"
#include "adc.h"
#elif defined PLATFORM_DEVICE_DEXMO_DONGLE
// #include "sbn1.dexmo_dongle.h"
#endif

int main()
{
    platformInit();

    DEBUG_PRINT("init successfully\n");

    while(1)
    {

    };

    return 0;
}

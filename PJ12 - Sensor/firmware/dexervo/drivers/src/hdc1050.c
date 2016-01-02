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

#define DEBUG_MODULE "HDC1050"

#include "stm32f0xx_conf.h"

#include "rcc.h"
#include "debug.h"

#include "i2c.h"

#include "hdc1050.h"

double hdc1050ReadTemperature ( void )
{
    uint8_t tempRegister[2];
    i2cReadBytes ( HDC1050_DEVICE_ADDR << 1, HDC1050_TEMPRATURE_REGISTER, 2, tempRegister );
    return ( uint32_t ) tempRegister[0] << 8 | tempRegister[1];
    // return ( double ) ( ( double ) ( ( uint32_t ) tempRegister[0] << 8 | ( uint32_t ) tempRegister[1] )  * 165 / 65536 - 40 );
}

uint8_t hdc1050Setup ( void )
{
    uint8_t data[2];
    data[0] = HDC1050_AcquisitionParameters >> 8;
    data[1] = HDC1050_AcquisitionParameters & 0xff;

    return i2cWriteBytes ( HDC1050_DEVICE_ADDR << 1, 0x02, 2, data );
}

uint8_t hdc1050Reset ( void )
{
    uint8_t data[2] = {0x90, 0x00}, i = 0;

    i = i2cWriteBytes ( HDC1050_DEVICE_ADDR << 1, 0x02, 2, data );

    delay_ms ( 5 );

    if ( i )
    {
        return i;
    }

    return 0;
}

uint16_t hdc1050GetDeviceId ( void )
{
    uint8_t data[2];
    i2cReadBytes ( HDC1050_DEVICE_ADDR << 1, 0xFF, 2, data );
    return ( uint16_t ) ( ( uint16_t ) data[0] << 8 | data[1] );
}

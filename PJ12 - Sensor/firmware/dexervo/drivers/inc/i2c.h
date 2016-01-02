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

#ifndef __I2C_H
#define __I2C_H

typedef enum
{
  I2C_OK                                          = 0,
  I2C_FAIL                                        = 1
}I2C_Status;

// #define I2C_TIMING                                0x00210507
#define I2C_TIMING                                0x10815E89
// #define I2C_TIMING                                0x00201D2B

#define I2C_TIMEOUT                               0x1000

uint8_t i2cInit ( void );
I2C_Status i2cReadBytes ( uint8_t driverAddr, uint8_t startAddr, uint8_t length, uint8_t * readBuffer );
I2C_Status i2cWriteBytes ( uint8_t driverAddr, uint8_t startAddr, uint8_t length, uint8_t * writeBuffer );
I2C_Status i2cProbe ( uint8_t deviceAddr );
#endif
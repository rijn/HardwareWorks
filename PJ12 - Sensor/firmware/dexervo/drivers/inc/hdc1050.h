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

#ifndef __HDC1050_H
#define __HDC1050_H

#define HDC1050_DEVICE_ADDR 				0x40

#define HDC1050_AcquisitionParameters   	0x1000

#define HDC1050_TEMPRATURE_REGISTER			0x00
#define HDC1050_HUMIDITY_REGISTER			0x01
#define HDC1050_CONFIGURATION_REGISTER		0x02
#define HDC1050_MANUFACTURER_ID_REGISTER	0xFE
#define HDC1050_DEVICE_ID_REGISTER			0xFF

double hdc1050ReadTemperature ( void );
uint8_t hdc1050Setup ( void );
uint8_t hdc1050Reset ( void );
uint16_t hdc1050GetDeviceId ( void );

#endif

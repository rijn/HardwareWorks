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

#ifndef __ADC_H
#define __ADC_H

#include "stm32f0xx.h"
#include "stm32f0xx_conf.h"

#define ADC_CHANNEL_NUM_WITH_DMA    4
#define ADC_FILTER_N                16

extern __IO uint16_t adcRawValues[ADC_FILTER_N][ADC_CHANNEL_NUM_WITH_DMA];
extern __IO uint16_t adcFilteredValues[ADC_CHANNEL_NUM_WITH_DMA];

void adcDisableDMA();
void adcEnableDMA();
void adcInit(void);

#endif

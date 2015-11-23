/*
 * i2c.h
 *
 *  Created on: 2014?3?29?
 *      Author: FrankZhang
 */

#ifndef I2C_H_
#define I2C_H_


#include "stm32f10x_.h"

void I2c_Init(void);
void I2C_WriteByte(unsigned char id,unsigned char write_address,unsigned char byte);
unsigned char I2C_ReadByte(unsigned char  id, unsigned char read_address);

#endif /* I2C_H_ */

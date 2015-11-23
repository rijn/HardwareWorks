#ifndef __I2C_H
#define __I2C_H

#include "sys.h"

/*#define SDA_IN()  {GPIOB->CRL&=0X0FFFFFFF;GPIOB->CRL|=8<<28;} 
#define SDA_OUT() {GPIOB->CRL&=0X0FFFFFFF;GPIOB->CRL|=3<<28;} PB6-7*/
#define SDA_IN()  {GPIOB->CRH&=0XFFFF0FFF;GPIOB->CRH|=8<<12;}
#define SDA_OUT() {GPIOB->CRH&=0XFFFF0FFF;GPIOB->CRH|=3<<12;}

#define I2C_SCL		PBout(10)
#define I2C_SDA		PBout(11)
#define READ_SDA	PBin(11)

void I2C_Init(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_Send_Byte(u8 txd);
u8	 I2C_Read_Byte(unsigned char ack);
u8	 I2C_Wait_Ack(void);
void I2C_Ack(void);
void I2C_NAck(void);
void I2C_Write_One_Byte(u8 daddr,u8 addr,u8 data);
u8	 I2C_Read_One_Byte(u8 daddr,u8 addr);

#endif

#include "i2c.h"
#include "delay.h"

//GPIO初始化
void I2C_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP ;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	GPIO_SetBits(GPIOB, GPIO_Pin_10 | GPIO_Pin_11);
}

//启动I2C总线
void I2C_Start(void)
{
	SDA_OUT();
	I2C_SDA=1;
	delay_us(1);
	I2C_SCL=1;
	delay_us(5);
	I2C_SDA=0;
	delay_us(5);
	I2C_SCL=0;
	delay_us(2);
}

//停止I2C总线
void I2C_Stop(void)
{
	SDA_OUT();
	I2C_SCL=0;
	I2C_SDA=0;
	delay_us(4);
	I2C_SCL=1;
	delay_us(5);
	I2C_SDA=1;
	delay_us(4);
}

//等待Ack到来
//返回值：1，接收应答失败
//        0，接收应答成功
u8 I2C_Wait_Ack(void)
{
	u8 ucErrTime=0;
	SDA_IN();
	I2C_SDA=1;delay_us(1);
	I2C_SCL=1;delay_us(1);
	while(READ_SDA)
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			I2C_Stop();
			return 1;
		}
	}
	I2C_SCL=0;
	return 0;
}

//产生ACK应答
void I2C_Ack(void)
{
	I2C_SCL=0;
	SDA_OUT();
	I2C_SDA=0;
	delay_us(2);
	I2C_SCL=1;
	delay_us(2);
	I2C_SCL=0;
}

//不产生ACK应答
void I2C_NAck(void)
{
	I2C_SCL=0;
	SDA_OUT();
	I2C_SDA=1;
	delay_us(2);
	I2C_SCL=1;
	delay_us(2);
	I2C_SCL=0;
}

//I2C发送一个字节
//返回从机有无应答
//1，有应答
//0，无应答
void I2C_Send_Byte(u8 txd)
{
	u8 t;
	SDA_OUT();
	I2C_SCL=0;
	for(t=0;t<8;t++)
	{
		if((txd&0x80)>>7)
			I2C_SDA=1;
		else
			I2C_SDA=0;
		txd<<=1;
		delay_us(2);
		I2C_SCL=1;
		delay_us(2);
		I2C_SCL=0;
		delay_us(2);
	}
}

//I2C读一个字节
//是否发送ack
//1，发送ACK
//0，发送nACK   
u8 I2C_Read_Byte(unsigned char ack)
{
	unsigned char i,receive=0;
	SDA_IN();
	for(i=0;i<8;i++ )
	{
		I2C_SCL=0;
		delay_us(2);
		I2C_SCL=1;
		receive<<=1;
		if(READ_SDA)receive++;
		delay_us(1);
	}
	if (!ack)
	    I2C_NAck();
	else
	    I2C_Ack();
	return receive;
}

#include "i2c.h"
#include "delay.h"

//GPIO��ʼ��
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

//����I2C����
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

//ֹͣI2C����
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

//�ȴ�Ack����
//����ֵ��1������Ӧ��ʧ��
//        0������Ӧ��ɹ�
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

//����ACKӦ��
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

//������ACKӦ��
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

//I2C����һ���ֽ�
//���شӻ�����Ӧ��
//1����Ӧ��
//0����Ӧ��
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

//I2C��һ���ֽ�
//�Ƿ���ack
//1������ACK
//0������nACK   
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

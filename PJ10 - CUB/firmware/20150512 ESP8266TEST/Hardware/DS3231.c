#include "DS3231.h"
#include "i2c.h" 
#include "delay.h"   
#include "sys.h"  
     
_calendar_obj calendar;

#define DS3231_WriteAddress 0xD0   
#define DS3231_ReadAddress  0xD1

u8 BCD2HEX(u8 val)
{
    u8 i;
    i= val&0x0f;
    val >>= 4;
    val &= 0x0f;
    val *= 10;
    i += val;
    
    return i;
}

u16 B_BCD(u8 val)
{
  u8 i,j,k;
  i=val/10;
  j=val%10;
  k=j+(i<<4);
  return k;
}


void I2cByteWrite(u8 addr,u8 bytedata)
{
  I2C_Start();
  delay_us(5);
  I2C_Send_Byte(DS3231_WriteAddress);
  I2C_Wait_Ack();
  delay_us(5);
  I2C_Send_Byte(addr);
  I2C_Wait_Ack();
  delay_us(5);
  I2C_Send_Byte(bytedata);
  I2C_Wait_Ack();
  delay_us(5);
  I2C_Stop();
}	


u8 I2cByteRead(u8 addr)
{
  u8 Dat=0;
  
  I2C_Start();
  I2C_Send_Byte(DS3231_WriteAddress);
  I2C_Wait_Ack();
  delay_us(5);
  I2C_Send_Byte(addr);
  I2C_Wait_Ack();
  delay_us(5);
  I2C_Start();
  I2C_Send_Byte(DS3231_ReadAddress);
  I2C_Wait_Ack();
  delay_us(5);
  Dat=I2C_Read_Byte(1);
  I2C_Stop();
  return Dat;
} 



void DS3231_Init(void)
{
	I2C_Init();
	I2cByteWrite(0x0e,0);
	delay_ms(2); 
    I2cByteWrite(0x0f,0x0);
	delay_ms(2); 
}
void DS3231_Get(void)
{
  calendar.w_year=I2cByteRead(0x06);  
  calendar.w_month=I2cByteRead(0x05);  
  calendar.w_date=I2cByteRead(0x04); 
  calendar.hour=I2cByteRead(0x02);  
  calendar.min=I2cByteRead(0x01);
  calendar.sec=I2cByteRead(0x00);
}

void DS3231_Set(u8 yea,u8 mon,u8 da,u8 hou,u8 min,u8 sec)
{
  u8 temp=0;
  
  temp=B_BCD(yea);
  I2cByteWrite(0x06,temp);
  
  temp=B_BCD(mon);
  I2cByteWrite(0x05,temp);
   
  temp=B_BCD(da);
  I2cByteWrite(0x04,temp);
  
  temp=B_BCD(hou);
  I2cByteWrite(0x02,temp);
  
  temp=B_BCD(min);
  I2cByteWrite(0x01,temp);
  
  temp=B_BCD(sec);
  I2cByteWrite(0x00,temp);
}


void get_show_time(void)
{


calendar.w_year=I2cByteRead(0x06);  
calendar.w_year=BCD2HEX(calendar.w_year);


calendar.w_month=I2cByteRead(0x05); 
calendar.w_month=BCD2HEX(calendar.w_month);


calendar.w_date=I2cByteRead(0x04);  
calendar.w_date=BCD2HEX(calendar.w_date);
 

calendar.hour=I2cByteRead(0x02); 
calendar.hour&=0x3f;                   
calendar.hour=BCD2HEX(calendar.hour);


calendar.min=I2cByteRead(0x01);
calendar.min=BCD2HEX(calendar.min);
  
  
calendar.sec=I2cByteRead(0x00);
calendar.sec=BCD2HEX(calendar.sec);
}



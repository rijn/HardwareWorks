#include "oled.h"
#include "stm32f10x.h"
#include "stdio.h"
#include "delay.h"
#include "db.h"
#include "time.h"
#include "rtc.h"

#define     XLevelL		    	0x00
#define     XLevelH		    	0x10
#define     XLevel		    	((XLevelH&0x0F)*16+XLevelL)
#define     Max_Column	  	128
#define     Max_Row		    	64
#define	    Brightness	  	0xCF

#define     X_WIDTH         128
#define     Y_WIDTH         64
#define			Page						8

u8 DISPLAY[X_WIDTH][Page];

void SPI1_Configuration(void)
{
	SPI_InitTypeDef  SPI_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1|RCC_APB2Periph_OLED_PORT, ENABLE); 

	GPIO_InitStructure.GPIO_Pin = OLED_MOSI_PIN|OLED_SCLK_PIN; 
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz; 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP; 
	GPIO_Init(OLED_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = OLED_MISO_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; 
	GPIO_Init(OLED_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin =  OLED_RST_PIN|OLED_DC_PIN; 
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz; 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; 
	GPIO_Init(OLED_PORT, &GPIO_InitStructure);

	SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
	SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
	SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
	SPI_InitStructure.SPI_CPOL = SPI_CPOL_High;
	SPI_InitStructure.SPI_CPHA = SPI_CPHA_2Edge;
	SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
	SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;
	SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
	SPI_InitStructure.SPI_CRCPolynomial = 7;
	SPI_Init(SPI1, &SPI_InitStructure);
	SPI_SSOutputCmd(SPI1, ENABLE);

	SPI_Cmd(SPI1, ENABLE);
	SPI_SSOutputCmd(SPI1, ENABLE);
}

void OLED_WB(u8 data)
{
    while (SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE) == RESET);
		//while (SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_RXNE) == SET);
    SPI_I2S_SendData(SPI1, data);
		while (SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE) == RESET);
		while (SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_RXNE) == RESET);
		SPI_I2S_ClearFlag(SPI1,SPI_I2S_FLAG_RXNE);
		SPI_I2S_ClearFlag(SPI1,SPI_I2S_FLAG_TXE);
		
}

void OLED_WrDat(unsigned char dat)
{
	OLED_DC_H;
	OLED_WB(dat);
}

void OLED_WrCmd(unsigned char cmd)
{
	OLED_DC_L;
	OLED_WB(cmd);
}

void OLED_Set_Pos(unsigned char x, unsigned char y)
{
	/* Page addressing mode */
	OLED_WrCmd(0xb0+(y&0x07));/* set page start address */
	OLED_WrCmd(x&0x0f);/* set lower nibble of the column address */
	OLED_WrCmd(((x&0xf0)>>4)|0x10); /* set higher nibble of the column address */
}

void OLED_CLS(void)
{
	unsigned char y,x;
	for(y=0;y<8;y++)
	{
		OLED_WrCmd(0xb0+y);
		OLED_WrCmd(0x01);
		OLED_WrCmd(0x10);
		for(x=0;x<X_WIDTH;x++)
		OLED_WrDat(0);
		delay_ms(200);
	}
}

void OLED_Init(void)
{
	OLED_RST_L;
	delay_ms(50);
	OLED_RST_H;
	//??????????????????,???RC????

    OLED_WrCmd(0xae);//--turn off oled panel

    OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
    OLED_WrCmd(0x3f);//--1/64 duty
    OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
    OLED_WrCmd(0x00);//-not offset
    OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
    OLED_WrCmd(0xa0);//--Set SEG/Column Mapping     0xa0???? 0xa1??
    OLED_WrCmd(0xc0);//Set COM/Row Scan Direction   0xc0???? 0xc8??
    OLED_WrCmd(0xda);//--set com pins hardware configuration
    OLED_WrCmd(0x12);
    OLED_WrCmd(0x81);//--set contrast control register
    OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
    OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
    OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7)
    OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
    OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
    OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
    OLED_WrCmd(0x14);//--set(0x10) disable
    OLED_WrCmd(0xaf);//--turn on oled panel

    OLED_WrCmd(0xd9);//--set pre-charge period
    OLED_WrCmd(0xf8);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock

    OLED_WrCmd(0xdb);//--set vcomh
    OLED_WrCmd(0x40);//Set VCOM Deselect Level

}

void Next_Frame(void) {
	unsigned char y,x;

	OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
	OLED_WrCmd(0x00);//

	OLED_WrCmd(0x21);//-Set Column Address
	OLED_WrCmd(0x00);
	OLED_WrCmd(0x7f);

	OLED_WrCmd(0x22);//-Set Page Address
	OLED_WrCmd(0x00);
	OLED_WrCmd(0x07);

	delay_ms(1);

	for ( y = 0; y < Page; y++ )
	{
		for ( x = 0; x < X_WIDTH; x++ )
		{
			OLED_WrDat( DISPLAY[x][y] );
		}
	}
}

void Fill_Screen(u8 x0, u8 page0, u8 x1, u8 page1, u8 data){
	u8 i,j;
	for ( i = x0; i < x1; i++ ) {
		for ( j = page0; j < page1; j++) {
			DISPLAY[i][j] = data;
		}
	}
}

void Draw_Char(u8 x, u8 page, u8 chr)
{
	u8 t;
	chr = chr - ' ';
	for ( t = 0; t < 6; t++ )
	{
		DISPLAY[x+t][page] = F6x8[chr][t];
	}         
}

void Draw_String(u8 x, u8 page, u8 chr[])
{
	u8 j;

	for ( j = 0; chr[j] != '\0' && x+j*6 < 128; j++ )
	{
		Draw_Char( x+j*6, page, chr[j] );
	}
}

void Push_Notification( u8 chr[] )
{
	u8 i, j;
	
	for ( i = 7; i > 0; i-- )
	{
		for ( j = 0; j < 128; j++ )
		{
			DISPLAY[j][i] = DISPLAY[j][i-1];
		}
	}
	
	Fill_Screen( 0, 0, 128, 1, 0x00 ); 
	
	Draw_String( 0, 0, chr );
	
	Next_Frame();
}

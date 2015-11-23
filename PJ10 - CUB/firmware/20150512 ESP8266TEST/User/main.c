#include "time.h"
#include "sys.h"
#include "statuslight.h"
#include "i2c.h"
#include "delay.h"
#include "adc.h"

int main(void)
{ 
	u8 i,j;
	char buffer[100],point = 0,commend[20];
	uint8_t ucValue;

	SystemInit();

	DELAY_Configuration(72);
  RCC_Configuration();
	ADC_Configuration();
	DMA_Configuration();

	bsp_Init();
	
	bsp_InitUart2(115200);
	printf("System Init\n");
	
	bsp_InitESP8266();
	/*
	ESP8266_SendAT("AT");
	ESP8266_ReadResponse(buffer,100,1000);
	comSendBuf(COM2, (uint8_t *)buffer, strlen(buffer));
	*/
	delay_ms(1500);
	comClearTxFifo(COM1);
	comClearRxFifo(COM1);
	printf("AT\r\n");
	ESP8266_SendAT("AT");
	//ESP8266_WaitResponse("OK",1000);
	delay_ms(1000);
	
	printf("AT+CWMODE=2\n");
	ESP8266_SendAT("AT+CWMODE=2");
	//ESP8266_WaitResponse("OK",1000);
	delay_ms(1000);
	ESP8266_SendAT("AT+CIPMUX=0");
	//ESP8266_WaitResponse("OK",1000);
	delay_ms(1000);
	ESP8266_SendAT("AT+CIPSTART=\"UDP\",\"255.255.255.255\",5000,5000");
	//ESP8266_WaitResponse("OK",1000);
	delay_ms(1000);
	

	/*
	while (point!=100)
	{
		if (comGetChar(COM1, &ucValue))
		{
			if(ucValue == '\n'){
				point = 0;
			} else {
				point++;
				if(point == 8){
					point = 100;
					ESP8266_SendAT("AT+CIPSTATUS");
					ESP8266_ReadResponse(buffer,8,1000);
					comSendBuf(COM2,buffer,8);
				}
			}
		}
	}
	*/
	comSendChar(COM2, '#');
	
	comClearTxFifo(COM1);
	comClearRxFifo(COM1);
	memset(buffer, 0, sizeof(buffer));

	while (1)
	{
		u8 temp;
		if (comGetChar(COM1, &ucValue))
		{
			if(ucValue == '#'){
				i=0;j=0;
				while(buffer[i]>0 && buffer[i]!=':') i++;
				i++;
				while(buffer[i]>0) commend[j++] = buffer[i++];
				//comSendChar(COM2, commend[0]);
				if(commend[0]=='G'){
					//ESP8266_WaitResponse("OK",1000);
					ESP8266_SendAT("AT+CIPSEND=54");
/*					while(ucValue!='>'){
						if (comGetChar(COM1, &ucValue)){
							comSendChar(COM2, ucValue);
						};
					};*/
					ESP8266_WaitResponse("OK",1000);
					sprintf(buffer,"%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d",ADC_ConvertedValue[0],ADC_ConvertedValue[1],
					ADC_ConvertedValue[2],ADC_ConvertedValue[3],ADC_ConvertedValue[4],ADC_ConvertedValue[5],ADC_ConvertedValue[6],
					ADC_ConvertedValue[7],ADC_ConvertedValue[8],ADC_ConvertedValue[9],ADC_ConvertedValue[10]);
					comSendBuf(COM1, buffer, 54);
					while(!comGetChar(COM1, &ucValue));
					//ESP8266_WaitResponse("SEND OK",1000);
				}
				if(commend[0]=='L'){
					comSendChar(COM2, 'L');
				}
				point = 0;
				//comClearTxFifo(COM1);
				//comClearRxFifo(COM1);
				//memset(buffer, 0, sizeof(buffer));
			} else {
				buffer[point++]=ucValue;
				comSendChar(COM2, ucValue);
			}
		}

		if (comGetChar(COM2, &ucValue))
		{
			if(ucValue == '#'){
				ESP8266_SendAT("AT+CIPSEND=54");
				ESP8266_WaitResponse("OK",1000);
				sprintf(buffer,"%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",ADC_ConvertedValue[0],ADC_ConvertedValue[1],
				ADC_ConvertedValue[2],ADC_ConvertedValue[3],ADC_ConvertedValue[4],ADC_ConvertedValue[5],ADC_ConvertedValue[6],
				ADC_ConvertedValue[7],ADC_ConvertedValue[8],ADC_ConvertedValue[9],ADC_ConvertedValue[10]);
				comSendBuf(COM1, buffer, 54);
				while(comGetChar(COM1, &ucValue));
				//ESP8266_WaitResponse("SEND OK",1000);

			} else {
				comSendChar(COM1, ucValue);
			}
		}

	}
	
	
/*
	while(1)
	{
		for(i=0;i<11;i++)
		{
			printf("%d=>%d,",i,ADC_ConvertedValue[i]);
		}
		printf("\r\n");
		delay_ms(100);
	}
*/
}
void bsp_Init(void)
{

	bsp_InitTimer();

}

void bsp_RunPer10ms(void)
{

}

void bsp_RunPer1ms(void)
{

}

void bsp_Idle(void)
{

}

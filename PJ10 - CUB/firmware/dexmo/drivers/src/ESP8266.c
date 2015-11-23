#define DEBUG_MODULE 'ESP8266'


#include "ESP8266.h"

#include "stm32f10x.h"
#include "stm32f10x_gpio.h"

#include "debug.h"

#define AT_CR		'\r'
#define AT_LF		'\n'

void bsp_InitESP8266(void)
{

	bsp_InitUart1(115200);

}

void ESP8266_PrintRxData(uint8_t _ch)
{
	#ifdef ESP8266_TO_COM2_EN
		//comSendChar(COM2, _ch);
	#endif
}

uint8_t ESP8266_WaitResponse(char *_pAckStr, uint16_t _usTimeOut)
{
	uint8_t ucData;
	uint8_t ucRxBuf[256];
	uint16_t pos = 0;
	uint32_t len;
	uint8_t ret;

	len = strlen(_pAckStr);
	if (len > 255)
	{
		return 0;
	}

	if (_usTimeOut > 0)
	{
		bsp_StartTimer(ESP8266_TMR_ID, _usTimeOut);
	}
	while (1)
	{
		bsp_Idle();

		if (_usTimeOut > 0)
		{
			if (bsp_CheckTimer(ESP8266_TMR_ID))
			{
				ret = 0;
				break;
			}
		}

		if (comGetChar(COM_ESP8266, &ucData))
		{
			ESP8266_PrintRxData(ucData);

			if (ucData == '\n')
			{
				if (pos > 0)
				{
					if (memcmp(ucRxBuf, _pAckStr,  len) == 0)
					{
						ret = 1;
						break;
					}
					else
					{
						pos = 0;
					}
				}
				else
				{
					pos = 0;
				}
			}
			else
			{
				if (pos < sizeof(ucRxBuf))
				{
					if (ucData >= ' ')
					{
						ucRxBuf[pos++] = ucData;
					}
				}
			}
		}
	}
	return ret;
}

uint16_t ESP8266_ReadResponse(char *_pBuf, uint16_t _usBufSize, uint16_t _usTimeOut)
{
	uint8_t ucData;
	uint16_t pos = 0;
	uint8_t ret;
	uint8_t status = 0;

	if (_usTimeOut > 0)
	{
		bsp_StartTimer(ESP8266_TMR_ID, _usTimeOut);
	}
	while (1)
	{
		bsp_Idle();

		if (status == 2)
		{
			if (bsp_CheckTimer(ESP8266_TMR_ID))
			{
				_pBuf[pos]	 = 0;
				ret = pos;
				break;
			}
		}
		else
		{
			if (_usTimeOut > 0)
			{
				if (bsp_CheckTimer(ESP8266_TMR_ID))
				{
					ret = 0;
					break;
				}
			}
		}

		if (comGetChar(COM_ESP8266, &ucData))
		{
			ESP8266_PrintRxData(ucData);

			switch (status)
			{
				case 0:
					if (ucData == AT_CR)
					{
						_pBuf[pos++] = ucData;
						status = 2;
					}
					else
					{
						status = 1;
					}
					break;

				case 1:
					if (ucData == AT_CR)
					{
						status = 2;
					}
					break;

				case 2:

					bsp_StartTimer(ESP8266_TMR_ID, 5);
					if (pos < _usBufSize - 1)
					{
						_pBuf[pos++] = ucData;
					}
					break;
			}
		}
	}
	return ret;
}

void ESP8266_SendAT(char *_Cmd)
{
	comSendBuf(COM_ESP8266, (uint8_t *)_Cmd, strlen(_Cmd));
	comSendBuf(COM_ESP8266, "\r\n", 2);
}

void ESP8266_JoinAP(char *_ssid, char *_pwd)
{
	char buf[128];

	sprintf(buf, "AT+CWJAP=\"%s\",\"%s\"", _ssid, _pwd);
	ESP8266_SendAT(buf);
}

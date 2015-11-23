#include "stm32f10x.h"
#include "stdio.h"
#include "rtc.h"
#include "time.h"

time_t current_time;
struct tm time_now;

void Time_Set(u32 t);

struct tm Time_ConvUnixToCalendar(time_t t)
{
	struct tm *t_tm;
	t_tm = localtime(&t);
	t_tm->tm_year += 1900;	//localtime?????tm_year????,???????
	return *t_tm;
}

time_t Time_ConvCalendarToUnix(struct tm t)
{
	t.tm_year -= 1900;  //??tm?????????2008??
						//?time.h?????????1900??????
						//??,???????????????
	return mktime(&t);
}

/*******************************************************************************
* Function Name  : Time_GetUnixTime()
* Description    : ?RTC??????Unix????
* Input 		 : None
* Output		 : None
* Return		 : time_t t
*******************************************************************************/
time_t Time_GetUnixTime(void)
{
	return (time_t)RTC_GetCounter();
}

/*******************************************************************************
* Function Name  : Time_GetCalendarTime()
* Description    : ?RTC??????????(struct tm)
* Input 		 : None
* Output		 : None
* Return		 : time_t t
*******************************************************************************/
struct tm Time_GetCalendarTime(void)
{
	time_t t_t;
	struct tm t_tm;

	t_t = (time_t)RTC_GetCounter();
	t_tm = Time_ConvUnixToCalendar(t_t);
	return t_tm;
}

/*******************************************************************************
* Function Name  : Time_SetUnixTime()
* Description    : ????Unix?????RTC
* Input 		 : time_t t
* Output		 : None
* Return		 : None
*******************************************************************************/
void Time_SetUnixTime(time_t t)
{
	RTC_WaitForLastTask();
	RTC_SetCounter((u32)t);
	RTC_WaitForLastTask();
	return;
}

/*******************************************************************************
* Function Name  : Time_SetCalendarTime()
* Description    : ????Calendar???????UNIX?????RTC
* Input 		 : struct tm t
* Output		 : None
* Return		 : None
*******************************************************************************/
void Time_SetCalendarTime(struct tm t)
{
	Time_SetUnixTime(Time_ConvCalendarToUnix(t));
	return;
}

/*******************************************************************************
* Function Name  : RTC_Configuration
* Description    : ?????RTC?BKP,?????????????????
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RTC_Configuration(void)
{
	//??PWR?BKP???(from APB1)
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);

	//?????
	PWR_BackupAccessCmd(ENABLE);

	//?????????
	BKP_DeInit();

	//??32.768K?????
	RCC_LSEConfig(RCC_LSE_ON);
	//????
	while (RCC_GetFlagStatus(RCC_FLAG_LSERDY) == RESET);

	//RTC??????LSE(??32.768K)
	RCC_RTCCLKConfig(RCC_RTCCLKSource_LSE);

	//RTC??
	RCC_RTCCLKCmd(ENABLE);

	//???????APB1???RTC????,???????
	RTC_WaitForSynchro();

	//??????,????????????
	RTC_WaitForLastTask();

	//??RTC???,?RTC???1Hz
	//RTC period = RTCCLK/RTC_PR = (32.768 KHz)/(32767+1)
	RTC_SetPrescaler(32767);


	//?????????
	RTC_WaitForLastTask();

	//?????
	RTC_ITConfig(RTC_IT_SEC, ENABLE);    

	//??????
	RTC_WaitForLastTask();

	return;
}

/*******************************************************************************
* Function Name  : RTC_Config
* Description    : ????????,????????RTC???, 
* 					????????RTC,???RTC_Configuration()??????
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RTC_Config(void)
{
	//???BKP??????1?,????????0xA5A5
	//?????????????,????????,
	//??RTC????,??????
	if (BKP_ReadBackupRegister(BKP_DR1) != 0xA5A5)
	{
		//????RTC
		RTC_Configuration();
		//?????,????????????0xA5A5
		BKP_WriteBackupRegister(BKP_DR1, 0xA5A5);
	}
	else
	{
		//??????????,???????RTC
		//????????RCC_GetFlagStatus()??????????
		if (RCC_GetFlagStatus(RCC_FLAG_PORRST) != RESET)
		{
			//??????
		}
		else if (RCC_GetFlagStatus(RCC_FLAG_PINRST) != RESET)
		{
			//????RST????
		}
		//??RCC?????
		RCC_ClearFlag();

		//??RTC?????????,??????????????
		//???????,?????RTCCLK???????
		//RCC_RTCCLKCmd(ENABLE);
		//??RTC???APB1????
		//RTC_WaitForSynchro();

		//?????
		RTC_ITConfig(RTC_IT_SEC, ENABLE);
		//??????
		RTC_WaitForLastTask();
	}

//#ifdef RTCClockOutput_Enable
	/* Enable PWR and BKP clocks */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);

	/* Allow access to BKP Domain */
	PWR_BackupAccessCmd(ENABLE);

	/* Disable the Tamper Pin */
	BKP_TamperPinCmd(DISABLE); /* To output RTCCLK/64 on Tamper pin, the tamper
								 functionality must be disabled */

	/* Enable RTC Clock Output on Tamper Pin */
	BKP_RTCOutputConfig(BKP_RTCOutputSource_CalibClock);
//#endif

	return;
}

#ifndef __RTC_H
#define __RTC_H 	

#include "stm32f10x.h"
#include "time.h"

void Time_Set(u32 t);
struct tm Time_ConvUnixToCalendar(time_t t);
time_t Time_ConvCalendarToUnix(struct tm t);
time_t Time_GetUnixTime(void);
struct tm Time_GetCalendarTime(void);
void Time_SetUnixTime(time_t t);
void Time_SetCalendarTime(struct tm t);
void RTC_Configuration(void);
void RTC_Config(void);

extern time_t current_time;
extern struct tm time_now;

#endif

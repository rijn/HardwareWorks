#ifndef __RCC_H
#define __RCC_H

#define TMR_COUNT 4

#define ENABLE_INT()  __set_PRIMASK(0)  /* 使能全局中断 */
#define DISABLE_INT() __set_PRIMASK(1)  /* 禁止全局中断 */

typedef enum
{
  TMR_ONCE_MODE = 0,    /* 一次工作模式 */
  TMR_AUTO_MODE = 1   /* 自动定时工作模式 */
}TMR_MODE_E;

typedef struct
{
  volatile uint8_t Mode;    /* 计数器模式，1次性 */
  volatile uint8_t Flag;    /* 定时到达标志  */
  volatile uint32_t Count;  /* 计数器 */
  volatile uint32_t PreLoad;  /* 计数器预装值 */
}SOFT_TMR;

// void __set_PRIMASK(uint32_t priMask);

void rccInit(void);
void timerInit(void);
void timerDelayMs(uint32_t n);
void timerDelayUs(uint32_t n);
void timerStart(uint8_t _id, uint32_t _period);
void timerStartAuto(uint8_t _id, uint32_t _period);
void timerStop(uint8_t _id);
uint8_t timerCheck(uint8_t _id);
int32_t timerGetRun(void);

#define delay_us timerDelayUs
#define delay_ms timerDelayMs

// void rccInit(void);
// void delayInit(uint8_t SYSCLK);
// void delay_ms(uint16_t nms);
// void delay_us(uint32_t nus);

#endif
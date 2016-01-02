#ifndef MOTOR_H
#define MOTOR_H value

#include "stm32f0xx.h"
#include "stm32f0xx_conf.h"

#define  MOTOR_DIVISION    1000

#define  MOTOR_CHANNEL_A   (1 << 0)
#define  MOTOR_CHANNEL_B   (1 << 1)

/* NOTE: Do NOT use packed structure for motorStruct */
typedef struct {
    TIM_TypeDef   * channelATimer;
    TIM_TypeDef   * channelBTimer;
    __IO uint32_t * channelATimerCCR;
    __IO uint32_t * channelBTimerCCR;
    float           channelA;
    float           channelB;
    uint32_t        frequency;
    uint32_t        readloadPeriod;
} motorStruct;

typedef struct {
    motorStruct     (*init)
                     (uint32_t frequency);
    void            (*initPin)
                     (GPIO_TypeDef * port, uint16_t pin);
    void            (*initPinAF)
                     (GPIO_TypeDef * port, uint16_t pinsource, uint8_t afio);
    void            (*initTimer)
                     (motorStruct * motor,
                      TIM_TypeDef * TIMx, uint8_t motorChannel);
    void            (*attachTimerChannel)
                     (motorStruct * motor,
                      uint8_t motorChannel, uint8_t timerChannel);
    void            (*setMotorChannelA)
                     (motorStruct * motor, float value);
    void            (*setMotorChannelB)
                     (motorStruct * motor, float value);
    void            (*writeToAttachedTimerCCR)
                     (motorStruct * motor, uint8_t motorChannel);
} MotorStruct;

extern MotorStruct Motor;

motorStruct motorInit(uint32_t frequency);
void motorInitPin(GPIO_TypeDef * port, uint16_t pin);
void motorInitPinAF(GPIO_TypeDef * port, uint16_t pinsource, uint8_t afio);
void motorInitTimer
(motorStruct * motor, TIM_TypeDef * TIMx, uint8_t motorChannel);
void motorAttachTimerChannel
(motorStruct * motor, uint8_t motorChannel, uint8_t timerChannel);
void motorSetMotorChannelA(motorStruct * motor, float value);
void motorSetMotorChannelB(motorStruct * motor, float value);
void motorWriteToAttachedTimerCCR(motorStruct * motor, uint8_t motorChannel);

#endif

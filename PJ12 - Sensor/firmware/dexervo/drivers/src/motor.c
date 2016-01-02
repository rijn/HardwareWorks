#include "stm32f0xx.h"
#include "stm32f0xx_conf.h"
#include "motor.h"

#define PINSOURCE_FROM_PIN(x) \
                            (x&0x1?0:x&0x2?1:x&0x4?2:x&0x8?3: \
                             x&0x10?4:x&0x20?5:x&0x40?6:x&0x80?7: \
                             x&0x100?8:x&0x200?9:x&0x400?10:x&0x800?11: \
                             x&0x1000?12:x&0x2000?13:x&0x4000?14:x&0x8000?15:0)

MotorStruct Motor = {
    motorInit,
    motorInitPin,
    motorInitPinAF,
    motorInitTimer,
    motorAttachTimerChannel,
    motorSetMotorChannelA,
    motorSetMotorChannelB,
    motorWriteToAttachedTimerCCR,
};

motorStruct motorInit(uint32_t frequency) {
    motorStruct motor;
    motor.channelA = 0;
    motor.channelB = 0;
    motor.channelATimer = 0;
    motor.channelBTimer = 0;
    motor.channelATimerCCR = 0;
    motor.channelBTimerCCR = 0;
    motor.frequency = frequency;
    motor.readloadPeriod = ((SystemCoreClock / frequency) - 1);
    return motor;
}

void motorInitPin(GPIO_TypeDef * port, uint16_t pin){
    GPIO_InitTypeDef GPIO_InitStructure;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_Pin = pin;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(port, &GPIO_InitStructure);
}

void motorInitPinAF(GPIO_TypeDef * port, uint16_t pinsource, uint8_t afio) {
    GPIO_PinAFConfig(port, pinsource, afio);
}

void motorInitTimer
(motorStruct * motor, TIM_TypeDef * TIMx, uint8_t motorChannel) {
    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

    /* Timer Deinitialization */
    TIM_DeInit(TIMx);

    /* Time Base configuration */
    TIM_TimeBaseStructure.TIM_Prescaler = 0;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseStructure.TIM_Period = motor->readloadPeriod;
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;

    /* Time Base Initialization */
    TIM_TimeBaseInit(TIMx, &TIM_TimeBaseStructure);

    if (motorChannel & MOTOR_CHANNEL_A) {
        motor->channelATimer = TIMx;
    }
    if (motorChannel & MOTOR_CHANNEL_B) {
        motor->channelBTimer = TIMx;
    }
}

void motorAttachTimerChannel
(motorStruct * motor, uint8_t motorChannel, uint8_t timerChannel) {
    /* Initialize Timer Output Channel */
    TIM_OCInitTypeDef  TIM_OCInitStructure;
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM2;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
    TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Set;
    TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;
    TIM_OCInitStructure.TIM_Pulse = 0;

    /* Get Timer for Channel */
    TIM_TypeDef * channelTimer = 0;
    if (motorChannel & MOTOR_CHANNEL_A) {
        channelTimer = motor->channelATimer;
    } else if (motorChannel & MOTOR_CHANNEL_B) {
        channelTimer = motor->channelBTimer;
    }

    /* Initialize Output Channel */
    if (timerChannel == 1) {
        TIM_OC1Init(channelTimer, &TIM_OCInitStructure);
    } else if (timerChannel == 2) {
        TIM_OC2Init(channelTimer, &TIM_OCInitStructure);
    } else if (timerChannel == 3) {
        TIM_OC3Init(channelTimer, &TIM_OCInitStructure);
    } else if (timerChannel == 4) {
        TIM_OC4Init(channelTimer, &TIM_OCInitStructure);
    }

    /* Enable Timer */
    TIM_Cmd(channelTimer, ENABLE);
    TIM_CtrlPWMOutputs(channelTimer, ENABLE);

    /* Get CCR Address for Timer Channel */
    __IO uint32_t ** ccr = 0;
    if (motorChannel & MOTOR_CHANNEL_A) {
        ccr = &(motor->channelATimerCCR);
    } else if (motorChannel & MOTOR_CHANNEL_B) {
        ccr = &(motor->channelBTimerCCR);
    }

    /* Attach Timer Channel CCR */
    if (timerChannel == 1) {
        *ccr = &(channelTimer->CCR1);
    } else if (timerChannel == 2) {
        *ccr = &(channelTimer->CCR2);
    } else if (timerChannel == 3) {
        *ccr = &(channelTimer->CCR3);
    } else if (timerChannel == 4) {
        *ccr = &(channelTimer->CCR4);
    }
}

void motorSetMotorChannelA(motorStruct * motor, float value) {
    if (value > 1) {
        value = 1;
    } else if (value < 0){
        value = 0;
    }
    motor->channelA = value;
}

void motorSetMotorChannelB(motorStruct * motor, float value) {
    if (value > 1) {
        value = 1;
    } else if (value < 0){
        value = 0;
    }
    motor->channelB = value;
}

void motorWriteToAttachedTimerCCR(motorStruct * motor, uint8_t motorChannel) {
    uint32_t register value;
    if (motorChannel & MOTOR_CHANNEL_A) {
        value = (uint32_t)(motor->channelA * MOTOR_DIVISION);
        *(motor->channelATimerCCR) =
            value * (motor->readloadPeriod - 1) / MOTOR_DIVISION;
    }
    if (motorChannel & MOTOR_CHANNEL_B) {
        value = (uint32_t)(motor->channelB * MOTOR_DIVISION);
        *(motor->channelBTimerCCR) =
            value * (motor->readloadPeriod - 1) / MOTOR_DIVISION;
    }
}

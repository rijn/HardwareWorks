/*
 *    ____            _          ____       _           _   _
 *   |  _ \  _____  _| |_ __ _  |  _ \ ___ | |__   ___ | |_(_) ___ ___
 *   | | | |/ _ \ \/ / __/ _` | | |_) / _ \| '_ \ / _ \| __| |/ __/ __|
 *   | |_| |  __/>  <| || (_| | |  _ < (_) | |_) | (_) | |_| | (__\__ \
 *   |____/ \___/_/\_\\__\__,_| |_| \_\___/|_.__/ \___/ \__|_|\___|___/
 *
 *   This file contains all the type definitions, global variable declarations
 *    and forward function declarations for the PID module.
 *
 *   Created: Dec. 4, 2015    Yifei Zhang
 *
 */

#ifndef PID_H
#define PID_H

#include "stm32f0xx.h"

#define PID_OUTPUT_CLAMPING   (1 << 0)
#define PID_INTEGRAL_CLAMPING (1 << 1)

typedef struct {
    float      kP;
    float      kI;
    float      kD;
    float      updateIntervalMillis;

    float      integralTermMin;
    float      integralTermMax;
    float      outputMin;
    float      outputMax;

    uint8_t    clampingOption;
} pidControllerParamStruct;

typedef struct {
    float      input;
    float      setpoint;
    float      output;

    float      lastInput;
    float      porpotionalTerm;
    float      integralTerm;
    float      derivativeTerm;

    pidControllerParamStruct
            *  paramStruct;

    uint8_t    firstUpdate;
} pidControllerStruct;

typedef struct {
    pidControllerParamStruct (*init)
        (float kP, float kI, float kD, float updateIntervalMillis);
    void                     (*enableClamping)
        (pidControllerParamStruct * param, uint8_t clampingOption);
    void                     (*setPIDUpdateInterval)
        (pidControllerParamStruct * param, float updateIntervalMillis);
    void                     (*setPIDParam)
        (pidControllerParamStruct * param, float p, float i, float d);
} PIDControllerParamStruct;

typedef struct {
    pidControllerStruct (*init)
        (pidControllerParamStruct * paramStruct);
    void                (*update)
        (pidControllerStruct * controller);
} PIDControllerStruct;

extern PIDControllerParamStruct PIDControllerParam;
extern PIDControllerStruct PIDController;

void pidControllerParamSetPIDParam
(pidControllerParamStruct * param, float p, float i, float d);
void pidControllerParamSetPIDUpdateInterval
(pidControllerParamStruct * param, float updateIntervalMillis);
pidControllerParamStruct pidControllerParamInit
(float kP, float kI, float kD, float updateIntervalMillis);
void pidControllerParamEnableClamping
(pidControllerParamStruct * param, uint8_t clampingOption);

pidControllerStruct pidControllerInit
(pidControllerParamStruct * paramStruct);
void pidControllerUpdate(pidControllerStruct * controller);
#endif

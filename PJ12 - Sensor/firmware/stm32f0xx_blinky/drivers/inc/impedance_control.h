/*
 *    ____            _          ____       _           _   _
 *   |  _ \  _____  _| |_ __ _  |  _ \ ___ | |__   ___ | |_(_) ___ ___
 *   | | | |/ _ \ \/ / __/ _` | | |_) / _ \| '_ \ / _ \| __| |/ __/ __|
 *   | |_| |  __/>  <| || (_| | |  _ < (_) | |_) | (_) | |_| | (__\__ \
 *   |____/ \___/_/\_\\__\__,_| |_| \_\___/|_.__/ \___/ \__|_|\___|___/
 *
 *   This file contains all the type definitions, global variable declarations
 *    and forward function declarations for the impedance PID module running
 *    on Dexmo
 *
 *   Created: Nov. 6, 2015    Yifei Zhang
 *
 */

#ifndef IMPEDANCE_CONTROL_H
#define IMPEDANCE_CONTROL_H

#include "inttypes.h"

/* struct typedefs */
typedef struct{
    uint16_t   updateIntervalMillis;

    float      motorTerm;
    float      outputTerm;
    float      porpotionalTerm;
    float      integralTerm;
    float      derivativeTerm;

    float      lastInput;

    float      outputTermMin;
    float      outputTermMax;
    float      motorMin;
    float      motorMax;

    uint8_t    init;
} impedancePIDStruct;

typedef struct {
    float      kP;
    float      kI;
    float      kD;
} impedancePIDParamStruct;

typedef struct {
    float      stiffess;
    uint16_t   setpoint;
    uint16_t   currentPos;
    uint16_t   currentI;
} impedancePIDInputStruct;

typedef struct {
    uint16_t outputA;
    uint16_t outputB;
} impedancePIDOutputStruct;

/* global structs */
extern impedancePIDParamStruct impedancePIDParam;
extern impedancePIDStruct      impedancePID;

/* function declarations */
void impedancePIDInit(uint16_t millis);
void impedancePIDSetPIDParam(float p, float i, float d);
void impedancePIDSetMotorLimit(float min, float max);
impedancePIDOutputStruct impedancePIDUpdate (impedancePIDInputStruct * input);

#endif

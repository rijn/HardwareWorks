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
#include "pid.h"

/* struct typedefs */
typedef struct {
    pidControllerParamStruct    *impedancePIDParam;
    pidControllerStruct         *impedancePID;
    float                       motorTerm;
    float                       motorMin;
    float                       motorMax;
} impedanceControllerStruct;

typedef struct {
    float      stiffess;
    uint16_t   setpoint;
    uint16_t   currentPos;
    uint16_t   currentI;
} impedanceControllerInputStruct;

typedef struct {
    uint16_t outputA;
    uint16_t outputB;
} impedanceControllerOutputStruct;

typedef struct {
    void    (*init)(float millis);
    void    (*setPIDUpdateInterval)(float updatIntervalMillis);
    void    (*setMotorLimit)(float min, float max);
    impedanceControllerOutputStruct (*update)(
        impedanceControllerInputStruct * input);
} ImpedanceControllerStruct;

/* global structs */
extern impedanceControllerStruct impedanceController;
extern ImpedanceControllerStruct ImpedanceController;

/* function declarations */
#endif

/*
 *    ____            _          ____       _           _   _
 *   |  _ \  _____  _| |_ __ _  |  _ \ ___ | |__   ___ | |_(_) ___ ___
 *   | | | |/ _ \ \/ / __/ _` | | |_) / _ \| '_ \ / _ \| __| |/ __/ __|
 *   | |_| |  __/>  <| || (_| | |  _ < (_) | |_) | (_) | |_| | (__\__ \
 *   |____/ \___/_/\_\\__\__,_| |_| \_\___/|_.__/ \___/ \__|_|\___|___/
 *
 *   This file contains a PID controller for impedance control runnning
 *    on Dexmo. The PID controller implemented in this file assumes a
 *    constant time interval between updates (guaranteed by Timer calls)
 *
 *   Created: Nov. 6, 2015    Yifei Zhang
 *
 */

#include "math.h"
#include "stm32f0xx.h"
#include "impedance_control.h"

#define MOTOR_OUTPUT_MAX 4096
#define MOTOR_OUTPUT_MIN 0

static void impedanceControllerInit(float millis);
static void impedanceControllerSetPIDUpdateInterval(float updateIntervalMillis);
static void impedanceControllerSetMotorLimit(float min, float max);
static impedanceControllerOutputStruct impedanceControllerUpdate (
        impedanceControllerInputStruct * inputStruct);

pidControllerParamStruct    impedancePIDParam;
pidControllerStruct         impedancePID;

impedanceControllerStruct   impedanceController = {
    &impedancePIDParam,
    &impedancePID,
    0,
    0,
    0
};

ImpedanceControllerStruct   ImpedanceController = {
    impedanceControllerInit,
    impedanceControllerSetPIDUpdateInterval,
    impedanceControllerSetMotorLimit,
    impedanceControllerUpdate 
};

/**
 * Initialize the impedanceController struct
 *
 * @param   millis
 */
void impedanceControllerInit(float millis) {
    /* initalize PID params */
    impedancePIDParam = PIDControllerParam.init(0, 0, 0, millis);

    /* initialize each term */
    impedancePID = PIDController.init(&impedancePIDParam);

    /* set limit on ouput params */
    impedanceControllerSetMotorLimit(
            MOTOR_OUTPUT_MIN, MOTOR_OUTPUT_MAX);
    /* enable clamping integral term and output term */
    PIDControllerParam.enableClamping(&impedancePIDParam, 0x03);
}

/** 
 * Set the update interval for impedance PID params
 * 
 * @param   updateIntervalMillis    update interval in msec
 */
void impedanceControllerSetPIDUpdateInterval(float updateIntervalMillis) {
    PIDControllerParam.setPIDUpdateInterval(
            &impedancePIDParam, updateIntervalMillis);
}

/**
 * Set the motor output limit for this PID controller
 *
 * @param   min the minimum value for the motor output
 * @param   max the maximum value for the motor output
 */
void impedanceControllerSetMotorLimit(float min, float max) {
    /* setup the min/max for motor and output clamping */
    impedanceController.motorMax = max;
    impedanceController.motorMin = min;
    impedancePIDParam.outputMax = impedanceController.motorMax;
    impedancePIDParam.outputMin = -impedanceController.motorMax;
}

/**
 * Clamps the motor term in impedanceController struct
 */
void clampingMotorTerm() {
    if (impedanceController.motorTerm > impedanceController.motorMax){
        impedanceController.motorTerm = impedanceController.motorMax;
    } else if (impedanceController.motorTerm < impedanceController.motorMin){
        impedanceController.motorTerm = impedanceController.motorMin;
    }
}

/**
 * Evaluate the PID update
 *
 * @param   inputStruct the input struct containing all the information
 *
 * @return  a impedanceControllerOutputStruct containing motor output
 */
impedanceControllerOutputStruct impedanceControllerUpdate (
        impedanceControllerInputStruct * inputStruct) {
    /* calculate the expected current: tau = K * theta_e */
    impedanceControllerOutputStruct outputStruct;

    impedancePID.setpoint =
        fabs(inputStruct->stiffess *
                (inputStruct->setpoint - inputStruct->currentPos));

    /* get the input for this update */
    impedancePID.input = fabs((double) inputStruct->currentI);

    /* update impedance PID controller */
    PIDController.update(&impedancePID);
    /* calculating motor output */
    impedanceController.motorTerm += impedancePID.output;

    /* clamping motor term */
    clampingMotorTerm();

    /* direction correction */
    if (inputStruct->setpoint > inputStruct->currentPos) {
        outputStruct.outputA = (uint16_t) impedancePID.output;
        outputStruct.outputB = (uint16_t) 0;
    } else if (inputStruct->setpoint < inputStruct->currentPos) {
        outputStruct.outputA = (uint16_t) 0;
        outputStruct.outputB = (uint16_t) impedancePID.output;
    } else {
        outputStruct.outputA = (uint16_t) 0;
        outputStruct.outputB = (uint16_t) 0;
    }

    /* return the result */
    return outputStruct;
}

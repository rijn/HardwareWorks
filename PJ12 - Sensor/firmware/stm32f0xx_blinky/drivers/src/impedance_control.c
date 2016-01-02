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

impedancePIDStruct      impedancePID;
impedancePIDParamStruct impedancePIDParam;

/**
 * Initialize the impedancePID struct
 *
 * @param   millis
 */
void impedancePIDInit(uint16_t millis) {
    /* initalize PID params */
    impedancePIDSetPIDParam(0, 0, 0);
    impedancePID.updateIntervalMillis = millis;

    /* initialize each term */
    impedancePID.outputTerm = 0;
    impedancePID.porpotionalTerm = 0;
    impedancePID.integralTerm = 0;
    impedancePID.derivativeTerm = 0;
    impedancePID.lastInput = 0;

    /* set limit on ouput params */
    impedancePIDSetMotorLimit(
            MOTOR_OUTPUT_MIN, MOTOR_OUTPUT_MAX);

    /* set flag for not started yet */
    impedancePID.init = -1;
}

/**
 * Set the motor output limit for this PID controller
 *
 * @param   min the minimum value for the motor output
 * @param   max the maximum value for the motor output
 */
void impedancePIDSetMotorLimit(float min, float max) {
    /* setup the min/max for motor and output clamping */
    impedancePID.motorMax = max;
    impedancePID.motorMin = min;
    impedancePID.outputTermMax = impedancePID.motorMax;
    impedancePID.outputTermMin = -impedancePID.motorMax;
}

/**
 * Set the parameters for the PID controller
 *
 * @param   p
 * @param   i
 * @param   d
 */
void impedancePIDSetPIDParam(float p, float i, float d) {
    /* calculate a ratio to use on the params */
    float ratio = impedancePID.updateIntervalMillis / 1000.0;
    impedancePIDParam.kP = p / ratio;
    impedancePIDParam.kI = i / ratio;
    impedancePIDParam.kD = d / ratio;
}

/**
 * Initialize the PID controller to prevent bumping at first round
 *
 * @param   input current input of the controller
 * @param   output current output of the controller
 */
void impedancePIDInitWithInputOutput(float input, float output) {
    /* this function prevents bumping */
    impedancePID.lastInput = input;
    impedancePID.integralTerm = output;
    impedancePID.init = 1;
}

/**
 * Clamps the integral term in impedancePID struct
 */
void clampingIntegralTerm() {
    if (impedancePID.integralTerm > impedancePID.outputTermMax) {
        impedancePID.integralTerm = impedancePID.outputTermMax;
    } else if (impedancePID.integralTerm < impedancePID.outputTermMin) {
        impedancePID.integralTerm = impedancePID.outputTermMin;
    }
}

/**
 * Clamps the output term in impedancePID struct
 */
void clampingOutputTerm() {
    /* clamping output */
    if (impedancePID.outputTerm > impedancePID.outputTermMax) {
        impedancePID.outputTerm = impedancePID.outputTermMax;
    } else if (impedancePID.outputTerm < impedancePID.outputTermMin) {
        impedancePID.outputTerm = impedancePID.outputTermMin;
    }
}

/**
 * Clamps the motor term in impedancePID struct
 */
void clampingMotorTerm() {
    if (impedancePID.motorTerm > impedancePID.motorMax){
        impedancePID.motorTerm = impedancePID.motorMax;
    } else if (impedancePID.motorTerm < impedancePID.motorMin){
        impedancePID.motorTerm = impedancePID.motorMin;
    }
}

/**
 * Evaluate the PID update
 *
 * @param   inputStruct the input struct containing all the information
 *
 * @return  a impedancePIDOutputStruct containing motor output
 */
impedancePIDOutputStruct impedancePIDUpdate (
        impedancePIDInputStruct * inputStruct) {
    /* calculate the expected current: tau = K * theta_e */
    impedancePIDOutputStruct outputStruct;
    float setpoint, input, error;

    setpoint =
        fabs(inputStruct->stiffess *
                (inputStruct->setpoint - inputStruct->currentPos));

    /* get the input for this update */
    input = fabs((double) inputStruct->currentI);

    /* check if this is the first run */
    if (!impedancePID.init){
        impedancePIDInitWithInputOutput(input, 0);
    }

    /* find the error */
    error = setpoint - input;

    /* Porpotional */
    impedancePID.porpotionalTerm = error;

    /* Integral */
    impedancePID.integralTerm += impedancePIDParam.kI * error;
    clampingIntegralTerm();

    /* Derivative */
    impedancePID.derivativeTerm = input - impedancePID.lastInput;

    /* calculate Output term */
    impedancePID.outputTerm =
        impedancePIDParam.kP * impedancePID.porpotionalTerm +
        impedancePIDParam.kI * impedancePID.integralTerm +
        impedancePIDParam.kD * impedancePID.derivativeTerm;
    clampingOutputTerm();

    /* update PID */
    impedancePID.lastInput = input;

    /* calculating motor output */
    impedancePID.motorTerm += impedancePID.outputTerm;

    /* clamping motor term */
    clampingMotorTerm();

    /* direction correction */
    if (inputStruct->setpoint > inputStruct->currentPos) {
        outputStruct.outputA = (uint16_t) impedancePID.outputTerm;
        outputStruct.outputB = (uint16_t) 0;
    } else if (inputStruct->setpoint < inputStruct->currentPos) {
        outputStruct.outputA = (uint16_t) 0;
        outputStruct.outputB = (uint16_t) impedancePID.outputTerm;
    } else {
        outputStruct.outputA = (uint16_t) 0;
        outputStruct.outputB = (uint16_t) 0;
    }

    /* return the result */
    return outputStruct;
}

/*
 *    ____            _          ____       _           _   _
 *   |  _ \  _____  _| |_ __ _  |  _ \ ___ | |__   ___ | |_(_) ___ ___
 *   | | | |/ _ \ \/ / __/ _` | | |_) / _ \| '_ \ / _ \| __| |/ __/ __|
 *   | |_| |  __/>  <| || (_| | |  _ < (_) | |_) | (_) | |_| | (__\__ \
 *   |____/ \___/_/\_\\__\__,_| |_| \_\___/|_.__/ \___/ \__|_|\___|___/
 *
 *   This file contains all the implementations of the PID module
 *
 *   Created: Dec. 4, 2015    Yifei Zhang
 *
 */

#include "pid.h"

PIDControllerParamStruct PIDControllerParam = {
    pidControllerParamInit,
    pidControllerParamEnableClamping,
    pidControllerParamSetPIDUpdateInterval,
    pidControllerParamSetPIDParam,
};

PIDControllerStruct PIDController = {
    pidControllerInit,
    pidControllerUpdate,
};

/**
 * Set the parameters for the PID param struct
 *
 * @param   param
 * @param   p
 * @param   i
 * @param   d
 */
void pidControllerParamSetPIDParam
(pidControllerParamStruct * param, float p, float i, float d) {
    /* calculate a ratio to use on the params */
    float ratio = param->updateIntervalMillis / 1000.0;
    param->kP = p;
    param->kI = i * ratio;
    param->kD = d / ratio;
}

/**
 * Set the update interval for the PID param struct
 *
 * @param   param
 * @param   updateIntervalMillis
 */
void pidControllerParamSetPIDUpdateInterval
(pidControllerParamStruct * param, float updateIntervalMillis) {
    /* restore the PID params */
    float originalRatio = param->updateIntervalMillis / 1000.0;
    float originalP = param->kP * originalRatio;
    float originalI = param->kI * originalRatio;
    float originalD = param->kD * originalRatio;
    /* scale the params with the new update interval */
    param->updateIntervalMillis = updateIntervalMillis;
    pidControllerParamSetPIDParam
        (param, originalP, originalI, originalD);
}

pidControllerParamStruct pidControllerParamInit
(float kP, float kI, float kD, float updateIntervalMillis) {
    pidControllerParamStruct pidControllerParam;
    pidControllerParam.clampingOption = 0;
    pidControllerParam.updateIntervalMillis = updateIntervalMillis;
    pidControllerParamSetPIDParam(&pidControllerParam, kP, kI, kD);
    return pidControllerParam;
}

void pidControllerParamEnableClamping
(pidControllerParamStruct * param, uint8_t clampingOption) {
    param->clampingOption = clampingOption;
}

pidControllerStruct pidControllerInit
(pidControllerParamStruct * paramStruct) {
    pidControllerStruct pidController;
    pidController.paramStruct = paramStruct;

    pidController.setpoint = 0;
    pidController.input = 0;
    pidController.output = 0;
    pidController.lastInput = 0;

    pidController.porpotionalTerm = 0;
    pidController.derivativeTerm = 0;
    pidController.integralTerm = 0;

    pidController.firstUpdate = 0;

    return pidController;
}

/**
 * Clamps the integral term in controller struct
 *
 * @param   controller the pidControllerStruct
 */
void pidControllerClampingIntegralTerm(pidControllerStruct * controller) {
    if (controller->integralTerm > controller->paramStruct->integralTermMax) {
        controller->integralTerm = controller->paramStruct->integralTermMax;
    } else if (controller->integralTerm <
            controller->paramStruct->integralTermMin) {
        controller->integralTerm = controller->paramStruct->integralTermMin;
    }
}

/**
 * Clamps the output term in controller struct
 *
 * @param   controller the pidControllerStruct
 */
void pidControllerClampingOutputTerm(pidControllerStruct * controller) {
    if (controller->output > controller->paramStruct->outputMax) {
        controller->output = controller->paramStruct->outputMax;
    } else if (controller->output < controller->paramStruct->outputMin) {
        controller->output = controller->paramStruct->outputMin;
    }
}

/**
 * Initialize the PID controller to prevent bumping at first round
 *
 * @param   input  current input of the controller
 * @param   output current output of the controller
 */
void pidControllerInitWithInputOutput
(pidControllerStruct * controller, float input, float output) {
    /* this function prevents bumping */
    controller->lastInput = input;
    controller->integralTerm = output;
    controller->firstUpdate = 1;
}

void pidControllerUpdate(pidControllerStruct * controller) {
    float error;

    if (!controller->firstUpdate) {
        pidControllerInitWithInputOutput
            (controller, controller->input, controller->output);
    }

    /* find the error */
    error = controller->setpoint - controller->input;

    /* Porpotional */
    controller->porpotionalTerm = error;

    /* Integral */
    controller->integralTerm += error;
    if (controller->paramStruct->clampingOption & PID_INTEGRAL_CLAMPING) {
        pidControllerClampingIntegralTerm(controller);
    }

    /* Derivative */
    controller->derivativeTerm = controller->input - controller->lastInput;

    /* calculate Output term */
    controller->output =
        controller->paramStruct->kP * controller->porpotionalTerm +
        controller->paramStruct->kI * controller->integralTerm +
        controller->paramStruct->kD * controller->derivativeTerm;
    if (controller->paramStruct->clampingOption & PID_OUTPUT_CLAMPING) {
        pidControllerClampingOutputTerm(controller);
    }

    /* update PID */
    controller->lastInput = controller->input;
}



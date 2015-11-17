/*
 *  ____    ____    __   __   ______  ______
 * /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
 * \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
 *  \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
 *   \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
 *    \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
 *     \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/
 *
 * Super Bidirectional Network 1
 * Main file
 *
 * Originally created by Dexta Robotics on Jul 29 2015.
 */

#ifndef __SBN1_H
#define __SBN1_H

/*==========  Const value  ==========*/

	#define SBN1_DEVICE_DONGLE_V1		0x01
	#define SBN1_DEVICE_DEXMO_V1_L		0x02
	#define SBN1_DEVICE_DEXMO_V1_R		0x03
 	#define SBN1_DEVICE_TRIROBOT_V1		0x04

/*==========  Define device type  ==========*/

#ifdef DEXMO1_LEFT

	#define SBN1_DEVICE			SBN1_DEVICE_TRIROBOT_V1

#endif

/*==========  Operator  ==========*/

	// probe if dongle is connected
	#define SBN1_OP_PROBING_REQUEST 	0x01
	// empty
	#define SBN1_OP_PROBING_RESPONSE	0x02
	// Device 1byte | ID 12byte
	// TEST PACKET [53 42 4E 31 00 01 01 01]

	// search dexmo
	#define SBN1_OP_SEARCH_REQUEST		0x03
	// Switch 1byte
	// Switch Stop  0x00
	// 		  Start 0x01
	#define SBN1_OP_SEARCH_RESPONSE		0x04
	// Address 0x00 | Result 0x01 => success
	// Address 1byte | Device 1byte | ID 12byte

	// read dexmo status
	#define SBN1_OP_READ_REQUEST		0x05
 	/* Dexmo V1 */
	// Address 1byte | Mode 1byte
	// Mode Single     0x01
	//      Contineous 0x02
	//      Stop       0x03
	// nRF ------------------
	//     OP 1byte | ADC/MPU 1byte
	#define SBN1_OP_READ_RESPONSE		0x06
	// Address 1byte | Data/Resonse X ADC/MPU X Result X Lock XXXXX | ADC 14*12/8=21byte | MPU 4*4=16byte
	// D/R = 0 => Data
	// A/M = 0 => ADC
	// Result = 0 for error

	// lock joint
	#define SBN1_OP_LOCK_REQUEST		0x07
	// Address 1byte | 000 Mode XXXXX
	// Mode Lock   1
	//      Unlock 0
	#define SBN1_OP_LOCK_RESPONSE		0x08
	// Address 1byte | Result 1byte | 000 Lock XXXXX
	// Result 0x00 error
	//        0x01 success

	// self check
	#define SBN1_OP_SELFCHECK_REQUEST	0x09
	// Address 1byte
	// Dongle = 0x00
	#define SBN1_OP_SELFCEHCK_RESPONSE	0x0A
	// Address 1byte | Result 1byte
	// Result 0x00 error
	//        0x01 success

	// get device info
	#define SBN1_OP_INFO_REQUEST		0x0B
	// Address 1byte
	// Dongle = 0x00
	#define SBN1_OP_INFO_RESPONSE		0x0C
	// Address 1byte | Result 1byte | Info
	// Result 0x00 error
	//        0x01 success

	#define SBN1_OP_MOVE_REQUEST		0x0D
 	/* TRIROBOT */
 	// Address 1byte | velocity 0 ~ 65536 | angle 0 ~ 2pi *10000 = 0 ~ 62832
 	#define SBN1_OP_MOVE_RESPONSE		0x0E
	// Address 1byte | Result 1byte | Info
	// Result 0x00 error
	//        0x01 success

	#define SBN1_OP_LED_REQUEST			0x0F
 	/* TRIROBOT */
 	// Address 1byte | LED 00000xxx
 	#define SBN1_OP_LED_RESPONSE		0x10
 	// Address 1byte | Result 1byte | Info
	// Result 0x00 error
	//        0x01 success

	#define SBN1_OP_RESET_REQUEST		0X11
 	// Address 1byte
 	#define SBN1_OP_RESET_RESPONSE		0X12
 	// Address 1byte | Result 1byte | Info
	// Result 0x00 error
	//        0x01 success

/*==========  Export function  ==========*/

	void sbn1HandleReceived(void);

/*==========  End  ==========*/

#endif

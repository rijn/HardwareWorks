#ifndef ProtocolMacros_h
#define ProtocolMacros_h
#include "protocommon.h"
// typedef for Operand type, DONT TOUCH!
typedef int16_t Operand;

/*    ____  U _____ u __  __    _____      _      
 *   |  _"\ \| ___"|/ \ \/"/   |_ " _| U  /"\  u  
 *   | | | | |  _|"   /\  /\     | |    \/ _ \/   
 *  U| |_| |\| |___  U /  \ u   /| |\   / ___ \
 *   |____/ u|_____|  /_/\_\   u |_|U  /_/   \_\
 *    |||_   <<   >>,-,>> \\_  _// \\_  \\    >>  
 *   (__)_) (__) (__)\_)  (__)(__) (__)(__)  (__) 
 *     ____    U  ___ u   ____     U  ___ u _____                ____  ____     
 *  U |  _"\ u  \/"_ \/U | __")u    \/"_ \/|_ " _|     ___    U /"___|/ __"| u  
 *   \| |_) |/  | | | | \|  _ \/    | | | |  | |      |_"_|   \| | u <\___ \/   
 *    |  _ <.-,_| |_| |  | |_) |.-,_| |_| | /| |\      | |     | |/__ u___) |   
 *    |_| \_\\_)-\___/   |____/  \_)-\___/ u |_|U    U/| |\u    \____||____/>>  
 *    //   \\_    \\    _|| \\_       \\   _// \\_.-,_|___|_,-._// \\  )(  (__) 
 *   (__)  (__)  (__)  (__) (__)     (__) (__) (__)\_)-' '-(_/(__)(__)(__)      
 *
 *   This header contains macros for serial port protocol and part of
 *   configuration of packet header. Please edit the rest in ProtocolConfig.c. 
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

// choose whether to use INDEX byte, 0 => no, 1 => yes
#define USE_INDEX 1

// Please define header and operand in ProtocolConfig.c
extern uint8_t PACKET_HEADER[];
extern const Operand PROBE_REQUEST;
extern const Operand PROBE_RESPONSE;
extern const Operand PWM_REQUEST;
extern const Operand PWM_RESPONSE;

// header length (must change manually)
#define PACKET_HEADER_LENGTH (4)

////////////////////////////// --==========-- ////////////////////////////// 
////////////////////////////// -- KEEP OUT -- ////////////////////////////// 
////////////////////////////// --==========-- ////////////////////////////// 
// maximum length of the serial port
#define PAYLOAD_LENGTH  (256)
// minimum packet length
#define MIN_PACKET_LENGTH (PACKET_HEADER_LENGTH + USE_INDEX + 1 + 1)
// constants for offset
#if USE_INDEX

#define INDEX_OFFSET    (PACKET_HEADER_LENGTH)
#define LENGTH_OFFSET   (PACKET_HEADER_LENGTH + 1)
#define CHECKSUM_OFFSET (PACKET_HEADER_LENGTH + 2)
#define PAYLOAD_OFFSET  (PACKET_HEADER_LENGTH + 3)

#else

#define LENGTH_OFFSET   (PACKET_HEADER_LENGTH)
#define CHECKSUM_OFFSET (PACKET_HEADER_LENGTH + 1)
#define PAYLOAD_OFFSET  (PACKET_HEADER_LENGTH + 2)

#endif
////////////////////////////// ---- ////////////////////////////// 
////////////////////////////// -- KEEP OUT -- ////////////////////////////// 
////////////////////////////// --==========-- ////////////////////////////// 

#endif

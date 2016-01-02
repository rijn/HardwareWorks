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
 *   This header contains structure and function prototypes for serial port
 *   protocol communication.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

#ifndef Protocol_h
#define Protocol_h

#include "protocommon.h"
#include "ProtocolMacros.h"
#include "Packet.h"

typedef struct {
    /* data */
#if USE_INDEX
    uint8_t _rxIndex;
    uint8_t _txIndex;
#endif

    uint8_t _headerFound;
    uint8_t _specsFound;

    uint16_t _bufferPos;
    uint8_t  _buffer[MIN_PACKET_LENGTH + PAYLOAD_LENGTH];
} Protocol;

typedef struct {
    void (*init)(Protocol *);
    void (*initPacket)(Protocol *, Packet *);
    void (*writePacket)(Packet *);
    void (*readPacket)(Protocol *, Packet *);

#if USE_INDEX
    uint8_t (*verifyIndex)(Protocol *, uint8_t);
#endif
    uint8_t (*verifyChecksum)(Protocol *, uint8_t checksum, uint16_t length);
} ProtocolStruct;

extern ProtocolStruct PROTOCOL;

#endif

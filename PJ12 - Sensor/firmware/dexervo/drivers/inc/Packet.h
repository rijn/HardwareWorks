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
 *   This header contains structure and function prototypes for packet creation
 *   and modification in serial port protocol.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

#ifndef Packet_h
#define Packet_h

#include "protocommon.h"
#include "ProtocolMacros.h"
#include "Payload.h"
#include "queue.h"

typedef struct {
    Payload payload;
    uint8_t valid;
#if USE_INDEX
    uint8_t _index;
#endif
} Packet;

typedef struct {

#if USE_INDEX
    void (*init) (Packet *p, uint8_t);
#else
    void (*init) (Packet *p);
#endif
    void (*clear) (Packet *p);

    Operand (*getOperand)(Packet *p);
    void (*setOperand)(Packet *p, Operand);
    void (*writeBlocking)(Packet *p);
    void (*writeNonBlocking)(Packet *p);
} PacketStruct;

extern PacketStruct PACKET;

#endif

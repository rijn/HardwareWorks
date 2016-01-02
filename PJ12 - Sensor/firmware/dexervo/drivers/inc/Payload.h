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
 *   This header contains structures for payload of serial port protocol.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */


#ifndef Payload_h
#define Payload_h

#include "protocommon.h"
#include "ProtocolMacros.h"

typedef struct {
    uint8_t     _payload[PAYLOAD_LENGTH];
    uint8_t     _writeIndex;
    uint8_t     _readIndex;
} Payload;

typedef struct {
    void        (*init)(Payload *);
    uint8_t     (*addByte)(Payload *, uint8_t b);
    uint8_t     (*addUInt16)(Payload *, uint16_t);
    uint8_t     (*addUInt32)(Payload *, uint32_t);
    uint8_t     (*addUInt16Array)(Payload *, uint16_t *, uint8_t);
    uint8_t     (*addUInt32Array)(Payload *, uint32_t *, uint8_t);
    uint8_t     (*addInt)(Payload *, int);
    uint8_t     (*addIntArray)(Payload *, int *, uint8_t);
    uint8_t     (*addFloat)(Payload *, float);
    uint8_t     (*addFloatArray)(Payload *, float *, uint8_t);
    uint8_t     (*addDouble)(Payload *, double);
    uint8_t     (*addDoubleArray)(Payload *, double *, uint8_t);

    uint8_t     (*readByte)(Payload *);
    uint16_t    (*readUInt16)(Payload *);
    uint32_t    (*readUInt32)(Payload *);
    float       (*readFloat)(Payload *);
    double      (*readDouble)(Payload *);
    int         (*readInt)(Payload *);

    uint8_t     (*getReadPos)(Payload *);
    uint8_t     (*getWritePos)(Payload *);
    void        (*setReadPos)(Payload *, uint8_t);
    void        (*setWritePos)(Payload *, uint8_t);

    void        (*clear)(Payload *);
    uint8_t     (*length)(Payload *);
    uint8_t*    (*bytes)(Payload *);
    uint8_t*    (*bytes_without_operand)(Payload *);
    uint8_t     (*checksum)(Payload *);

    uint8_t     (*copyFrom)(Payload *, uint8_t * source, uint16_t length);
} PayloadStruct;

extern PayloadStruct PAYLOAD;

#endif

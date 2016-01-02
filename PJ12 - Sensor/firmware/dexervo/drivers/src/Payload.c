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
 *   This file contains functions for creating and modifying payload of 
 *   serial port protocol.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

#include "protocommon.h"
#include "Payload.h"
#include "ByteConverter.h"

static inline void  assignAndIncr(Payload *payload, uint8_t b[], uint8_t len);
static void         init(Payload *payload);
static uint8_t      addByte(Payload *payload, uint8_t b);
static uint8_t      addUInt16(Payload *payload, uint16_t u);
static uint8_t      addUInt32(Payload *payload, uint32_t u);
static uint8_t      addUInt16Array(Payload *payload, uint16_t * start, uint8_t n);
static uint8_t      addUInt32Array(Payload *payload, uint32_t * start, uint8_t n);
static uint8_t      addInt(Payload *payload, int integer);
static uint8_t      addIntArray(Payload *payload, int * start, uint8_t n);
static uint8_t      addFloat(Payload *payload, float f);
static uint8_t      addFloatArray(Payload *payload, float * start, uint8_t n);
static uint8_t      addDouble(Payload *payload, double d);
static uint8_t      addDoubleArray(Payload *payload, double * start, uint8_t n);
static float        readFloat(Payload *payload);
static double       readDouble(Payload *payload);
static int          readInt(Payload *payload);
static uint16_t     readUInt16(Payload *payload);
static uint32_t     readUInt32(Payload *payload);
static uint8_t      readByte(Payload *payload);
static void         setReadPos(Payload *payload, uint8_t index);
static void         setWritePos(Payload *payload, uint8_t index);
static uint8_t      getReadPos(Payload *payload);
static uint8_t      getWritePos(Payload *payload);
static void         clear(Payload *payload);
static uint8_t      length(Payload *payload);
static uint8_t*     bytes(Payload *payload);
static uint8_t*     bytes_without_operand(Payload *payload);
static uint8_t      checksum(Payload *payload);
static uint8_t      copyFrom(Payload *payload, uint8_t * source, uint16_t length);

PayloadStruct PAYLOAD = {
    init,
    addByte,
    addUInt16,
    addUInt32,
    addUInt16Array,
    addUInt32Array,
    addInt,
    addIntArray,
    addFloat,
    addFloatArray,
    addDouble,
    addDoubleArray,
    readByte,
    readUInt16,
    readUInt32,
    readFloat,
    readDouble,
    readInt,
    getReadPos,
    getWritePos,
    setReadPos,
    setWritePos,
    clear,
    length,
    bytes,
    bytes_without_operand,
    checksum,
    copyFrom,
};


static inline void assignAndIncr(Payload *payload, uint8_t b[], uint8_t len) {
    uint8_t i;
    for (i = 0; i < len; i ++) {
        payload->_payload[payload->_writeIndex++] = b[i];
    }
}
static void init(Payload *payload){
    payload->_readIndex = 0;
    payload->_writeIndex = 0;
}

uint8_t addByte(Payload *payload, uint8_t b){
    if (payload->_writeIndex > PAYLOAD_LENGTH - 1){
        return 0;
    }
    payload->_payload[payload->_writeIndex++] = b;
    return 1;
}

uint8_t addUInt16(Payload *payload, uint16_t u){
    if (payload->_writeIndex > PAYLOAD_LENGTH - 2){
        return 0;
    }
    uint8_t b[2];
    uint16toByte(u, b);
    assignAndIncr(payload, b, 2);
    return 1;
}

uint8_t addUInt32(Payload *payload, uint32_t u){
    if (payload->_writeIndex > PAYLOAD_LENGTH - 4){
        return 0;
    }
    uint8_t b[4];
    uint32toByte(u, b);
    assignAndIncr(payload, b, 4);
    return 1;
}

uint8_t addUInt16Array(Payload *payload, uint16_t * start, uint8_t n){
    uint8_t addCount = n > ((PAYLOAD_LENGTH - payload->_writeIndex) / 2) ?
        ((PAYLOAD_LENGTH - payload->_writeIndex) / 2) : n;
    uint8_t i;
    for (i = 0; i < addCount; i ++){
        uint16_t u = *(start + i);
        (void) addUInt16(payload, u);
    }
    return addCount;
}

uint8_t addUInt32Array(Payload *payload, uint32_t * start, uint8_t n){
    uint8_t addCount = n > ((PAYLOAD_LENGTH - payload->_writeIndex) / 4) ?
        ((PAYLOAD_LENGTH - payload->_writeIndex) / 4) : n;
    uint8_t i;
    for (i = 0; i < addCount; i ++){
        uint32_t u = *(start + i);
        (void) addUInt32(payload, u);
    }
    return addCount;
}

uint8_t addInt(Payload *payload, int integer){
    if (payload->_writeIndex > PAYLOAD_LENGTH - 4){
        return 0;
    }
    uint8_t b[4];
    int2byte(integer, b);
    assignAndIncr(payload, b, 4);
    return 1;
}

uint8_t addIntArray(Payload *payload, int * start, uint8_t n){
    uint8_t addCount = n > ((PAYLOAD_LENGTH - payload->_writeIndex) / 2) ?
        ((PAYLOAD_LENGTH - payload->_writeIndex) / 2) : n;
    uint8_t i;
    for (i = 0; i < addCount; i ++){
        int integer = *(start + i);
        (void) addInt(payload, integer);
    }
    return addCount;
}

uint8_t addFloat(Payload *payload, float f){
    if (payload->_writeIndex > PAYLOAD_LENGTH - 4){
        return 0;
    }
    uint8_t b[4];
    float2byte(f, b);
    assignAndIncr(payload, b, 4);
    return 1;
}

uint8_t addFloatArray(Payload *payload, float * start, uint8_t n){
    uint8_t addCount = n > ((PAYLOAD_LENGTH - payload->_writeIndex) / 4) ?
        ((PAYLOAD_LENGTH - payload->_writeIndex) / 4) : n;
    uint8_t i;
    for (i = 0; i < addCount; i ++){
        float f = *(start + i);
        (void) addFloat(payload, f);
    }
    return addCount;
}

uint8_t addDouble(Payload *payload, double d){
    if (payload->_writeIndex > PAYLOAD_LENGTH - 8){
        return 0;
    }
    uint8_t b[8];
    double2byte(d, b);
    assignAndIncr(payload, b, 8);
    return 1;
}

uint8_t addDoubleArray(Payload *payload, double * start, uint8_t n){
    uint8_t addCount = n > ((PAYLOAD_LENGTH - payload->_writeIndex) / 8) ?
        ((PAYLOAD_LENGTH - payload->_writeIndex) / 8) : n;
    uint8_t i;
    for (i = 0; i < addCount; i ++){
        double d = *(start + i);
        (void) addDouble(payload, d);
    }
    return addCount;
}

float   readFloat(Payload *payload){
    if (payload->_readIndex > PAYLOAD_LENGTH - 4){
        return 0;
    }
    float f;
    byte2float(payload->_payload + payload->_readIndex, &f);
    payload->_readIndex += 4;
    return f;
}

double  readDouble(Payload *payload){
    if (payload->_readIndex > PAYLOAD_LENGTH - 8){
        return 0;
    }
    double d;
    byte2double(payload->_payload + payload->_readIndex, &d);
    payload->_readIndex += 8;
    return d;
}

int     readInt(Payload *payload){
    if (payload->_readIndex > PAYLOAD_LENGTH - 4){
        return 0;
    }
    int i;
    byte2int(payload->_payload + payload->_readIndex, &i);
    payload->_readIndex += 4;
    return i;
}

uint16_t readUInt16(Payload *payload){
    if (payload->_readIndex > PAYLOAD_LENGTH - 2){
        return 0;
    }
    uint16_t i;
    byteToUInt16(payload->_payload + payload->_readIndex, &i);
    payload->_readIndex += 2;
    return i;
}

uint32_t readUInt32(Payload *payload){
    if (payload->_readIndex > PAYLOAD_LENGTH - 4){
        return 0;
    }
    uint32_t i;
    byteToUInt32(payload->_payload + payload->_readIndex, &i);
    payload->_readIndex += 4;
    return i;
}

uint8_t readByte(Payload *payload){
    if (payload->_readIndex > PAYLOAD_LENGTH - 1){
        return 0;
    }
    return payload->_payload[payload->_readIndex++];
}

void setReadPos(Payload *payload, uint8_t index){
    payload->_readIndex = index;
}

void setWritePos(Payload *payload, uint8_t index){
    payload->_writeIndex = index;
}

uint8_t getReadPos(Payload *payload){
    return payload->_readIndex;
}

uint8_t getWritePos(Payload *payload){
    return payload->_writeIndex;
}

void clear(Payload *payload){
    payload->_readIndex = 0;
    payload->_writeIndex = 0;
}

uint8_t length(Payload *payload){
    return payload->_writeIndex;
}

uint8_t * bytes(Payload *payload){
    return payload->_payload;
}

uint8_t * bytes_without_operand(Payload *payload){
    return (payload->_payload + 1);
}

uint8_t checksum(Payload *payload){
    uint8_t checksum = 0;
    uint8_t i;
    for (i = 0; i < payload->_writeIndex; i ++){
        checksum += payload->_payload[i];
    }
    return checksum;
}

uint8_t copyFrom(Payload *payload, uint8_t * source, uint16_t length){
    if (length > PAYLOAD_LENGTH){
        // return 1 for non success operation
        // should not happen
        return 1;
    }
    for (payload->_writeIndex = 0; payload->_writeIndex < length;
            payload->_writeIndex++){
        payload->_payload[payload->_writeIndex] = source[payload->_writeIndex];
    }
    // return 0 for success operation
    return 0;
}

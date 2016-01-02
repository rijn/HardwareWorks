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
 *   This file contains functions for packet creation and modification in
 *   serial port protocol.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

#include "protocommon.h"
#include "ProtocolMacros.h"
#include "Packet.h"
#include "Payload.h"
#include "usart_simplified.h"

#if USE_INDEX
static void init(Packet *p, uint8_t index);
#else
static void init(Packet *p);
#endif
static void clear(Packet *p);
static Operand getOperand(Packet *p);
static void setOperand(Packet *p, Operand o);
static void writeBlocking(Packet *p);
static void writeNonBlocking(Packet *p);
static void write(Packet *p, uint8_t block);

PacketStruct PACKET = {
    init,
    clear,
    getOperand,
    setOperand,
    writeBlocking,
    writeNonBlocking
};

#if USE_INDEX
static void init(Packet *p, uint8_t index){
    p->_index = index;
#else
static void init(Packet *p){
#endif
    p->valid = 1;
    PAYLOAD.clear(&p->payload);
}

static void clear(Packet *p){
    p->valid = 0;
#if USE_INDEX
    p->_index = 0;
#endif
    PAYLOAD.clear(&p->payload);
}

static Operand getOperand(Packet *p){
    if (PAYLOAD.length(&p->payload)){
        return PAYLOAD.bytes(&p->payload)[0];
    }
    return -1;
}

static void setOperand(Packet *p, Operand o){
    PAYLOAD.bytes(&p->payload)[0] = (uint8_t)o;
}

static void writeBlocking(Packet *p){
    write(p, 1);
}

static void writeNonBlocking(Packet *p) {
    write(p, 0);
}

static void write(Packet *p, uint8_t block){
    if (!p->valid){
        // do not write invalid packets
        return;
    }
    USART_DMA.send(PACKET_HEADER, PACKET_HEADER_LENGTH);
    uint8_t temp[3];
    uint8_t count = 0;
#if USE_INDEX
    temp[count++] = p->_index;
#endif
    temp[count++] = (PAYLOAD.length(&p->payload));
    temp[count++] = (PAYLOAD.checksum(&p->payload));
    USART_DMA.send(temp, count);
    USART_DMA.send(PAYLOAD.bytes(&p->payload), PAYLOAD.length(&p->payload));
    if (block){
        while (USARTBuf.txInProgress);
    }
}

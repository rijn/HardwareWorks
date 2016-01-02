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
 *   This file contains functions for serial port protocol communication.
 *
 *   Created: Dec. 1, 2015    zhoudada
 *
 */

#include "ProtocolMacros.h"
#include "Protocol.h"
#include "usart_simplified.h"

static void     init(Protocol *protocol);
static void     initPacket(Protocol *protocol, Packet * packet);
static void     writePacket(Packet * packet);
static uint8_t 	verifyIndex(Protocol *protocol, uint8_t	index);
static uint8_t 	verifyChecksum(Protocol *protocol,
                               uint8_t checksum, uint16_t length);
static void     readPacket(Protocol *protocol, Packet * packet);

ProtocolStruct PROTOCOL = {
    init,
    initPacket,
    writePacket,
    readPacket,
#if USE_INDEX
    verifyIndex,
#endif
    verifyChecksum
};

static void init(Protocol *protocol){
#if USE_INDEX
    protocol->_rxIndex = 0;
    protocol->_txIndex = 0;
#endif

    protocol->_bufferPos = 0;

    protocol->_specsFound = 0;
    protocol->_headerFound = 0;
}

static void initPacket(Protocol *protocol, Packet * packet){
#if USE_INDEX
    PACKET.init(packet, protocol->_txIndex ++);
#else
    PACKET.init(packet);
#endif
}

static void writePacket(Packet * packet){
    PACKET.writeNonBlocking(packet);
}

#if USE_INDEX
static uint8_t verifyIndex(Protocol *protocol, uint8_t index){
    if (index == protocol->_rxIndex++){
        return 1;
    }
    // otherwise update index
    protocol->_rxIndex = index + 1;
    return 0;
}
#endif

static uint8_t verifyChecksum(Protocol *protocol,
                                uint8_t checksum,uint16_t length){
    uint8_t c = 0;
    uint16_t i;
    for (i = PAYLOAD_OFFSET; i < PAYLOAD_OFFSET + length; i++){
        c += protocol->_buffer[i];
    }
    if (c == checksum){
        return 1;
    }
    return 0;
}

static void readPacket(Protocol *protocol, Packet * packet){
    if ((!protocol->_headerFound) &&
            (QUEUE.dataAvailable(USARTBuf.Rxq) >= 
            (PACKET_HEADER_LENGTH - protocol->_bufferPos))) {
        // header not found & we have enough bytes for a header
        uint8_t remaining = PACKET_HEADER_LENGTH - protocol->_bufferPos;
        uint8_t i;
        for (i = 0; i < remaining; i++) {
            // read byte by byte
            uint8_t incoming;
            if (USART.readByte(&incoming)) {
                if (incoming == PACKET_HEADER[protocol->_bufferPos]){
                    // valid for a header
                    protocol->_buffer[protocol->_bufferPos] = incoming;
                    protocol->_bufferPos ++;
                    protocol->_headerFound = 1;
                } else {
                    // incorrect, reset protocol->_bufferPos back to front;
                    protocol->_bufferPos = 0;
                    protocol->_headerFound = 0;
                    break;
                }
            }
            else {
                // There is no data in USART Rx buffer, which should not
                // happen here.
            }
        }
    }

    if (protocol->_headerFound && (!protocol->_specsFound) &&
            (QUEUE.dataAvailable(USARTBuf.Rxq) >=
            (MIN_PACKET_LENGTH - protocol->_bufferPos))){
        // header found & saved, packet specs not found, enough for specs
        uint8_t remaining = MIN_PACKET_LENGTH - protocol->_bufferPos;
        uint8_t i;
        for (i = 0; i < remaining; i++){
            // read byte by byte
            uint8_t incoming;
            if (USART.readByte(&incoming)) {
                protocol->_buffer[protocol->_bufferPos ++] = incoming;
            }
            else {
                // There is no data in USART Rx buffer, which should not
                // happen here.
            }
        }
        protocol->_specsFound = 1;
    }

    if (protocol->_headerFound && protocol->_specsFound){
        if (QUEUE.dataAvailable(USARTBuf.Rxq) >=
                protocol->_buffer[LENGTH_OFFSET]){
            // read!
            uint8_t remaining = 
                MIN_PACKET_LENGTH + protocol->_buffer[LENGTH_OFFSET] - 
                protocol->_bufferPos;
            uint8_t i;
            for (i = 0; i < remaining; i++){
                uint8_t incoming; 
                if (USART.readByte(&incoming)) {
                    protocol->_buffer[protocol->_bufferPos ++] = incoming;
                }
                else {
                    // There is no data in USART Rx buffer, which should not
                    // happen here.
                }
            }
            // do checking & save the packet
            if (PROTOCOL.verifyChecksum(protocol,
                    protocol->_buffer[CHECKSUM_OFFSET],
                    protocol->_buffer[LENGTH_OFFSET])){
            // correct checksum
#if USE_INDEX
                if (PROTOCOL.verifyIndex(protocol,
                            protocol->_buffer[INDEX_OFFSET])){
                    // correct index
                    // all cleared, we got a valid packet
                    
                    // successfully copied
                    PACKET.init(packet, protocol->_buffer[INDEX_OFFSET]);
#else
                    PACKET.init(packet);
#endif
                    uint8_t rtnval =
                        PAYLOAD.copyFrom(&packet->payload, 
                                protocol->_buffer + PAYLOAD_OFFSET,
                                protocol->_buffer[LENGTH_OFFSET]);
                    if (rtnval != 0){
                        PACKET.clear(packet);
                    }
#if USE_INDEX
                }
#endif
            }
            // RESET EVERYTHING HERE
            protocol->_bufferPos = 0;
            protocol->_headerFound = 0;
            protocol->_specsFound = 0;
        }
        // wait until next round
    }
}

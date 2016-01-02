/*
 *  ____    ____    __   __   ______  ______
 * /\  _`\ /\  _`\ /\ \ /\ \ /\__  _\/\  _  \
 * \ \ \/\ \ \ \L\_\ `\`\/'/'\/_/\ \/\ \ \L\ \
 *  \ \ \ \ \ \  _\L`\/ > <     \ \ \ \ \  __ \
 *   \ \ \_\ \ \ \L\ \ \/'/\`\   \ \ \ \ \ \/\ \
 *    \ \____/\ \____/ /\_\\ \_\  \ \_\ \ \_\ \_\
 *     \/___/  \/___/  \/_/ \/_/   \/_/  \/_/\/_/ *
 * Originally created by Dexta Robotics.
 * Copyright <C> Dexta Robotics, 2015.
 * All rights reserved.
 */

#ifndef QUEUE_H
#define QUEUE_H

// TODO: Add macro to include different header files for different platforms.
#include "stm32f0xx.h"

#define QUEUE_SIZE 512

/** 
 * Queue struct
 */
typedef struct {
    // Buffer index that marks the current write position
    volatile uint16_t head;
    // Buffer index that marks the current read position
    volatile uint16_t tail;
    // Buffer that contains 8-bit data
    uint8_t buf[QUEUE_SIZE];
} Queue;

/** 
 * Queue class methods struct
 */
typedef struct __attribute__((packed)){
    /* Function pointers */
    // Init function
    void (*init)(Queue *q);
    // Check if queue is empty
    uint8_t (*isEmpty)(Queue *q);
    // Check if queue is full
    uint8_t (*isFull)(Queue *q);
    // Add one byte to the queue
    uint8_t (*enqueue)(Queue *q, uint8_t data);
    // Take one byte out of queue
    uint8_t (*dequeue)(Queue *q, uint8_t *data);
    // Advance head or tail index. Wrap itself if necesary.
    void (*incrIndex)(volatile uint16_t *index, uint16_t count);
    // Return unread data in queue without wrapping
    uint16_t (*dataAvailNonwrap)(Queue *q, uint8_t *dataLeft);
    // Reset head and tail indices
    void (*reset)(Queue *q);
} QueueStruct;

extern QueueStruct QUEUE;

#endif // QUEUE_H

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

#include "queue.h"

static void     queueInit(Queue *q); 
/* static uint8_t  queueIsEmpty(Queue *q);  */
/* static uint8_t  queueIsFull(Queue *q); */
static uint8_t  enqueue(Queue *q, uint8_t data);
static uint8_t  dequeue(Queue *q, uint8_t *data); 
static void     queueIncrIndex(volatile uint16_t *index, uint16_t count);
static uint16_t dataAvailNonwrap(Queue *q, uint8_t *dataLeft);
static uint16_t dataAvailable(Queue *q);
static void     reset(Queue *q);

QueueStruct QUEUE = {
    queueInit,
    /* queueIsEmpty, */
    /* queueIsFull, */
    enqueue,
    dequeue,
    queueIncrIndex,
    dataAvailNonwrap,
    dataAvailable,
    reset
};

/** 
 * Initialize the Queue, q
 * 
 * @param   q   Pointer to the queue to be initialized
 */
static void queueInit(Queue *q) {
    q->tail = 0;
    q->head = 0;
}


/** 
 * Check if queue is empty
 * 
 * @param   q   Pointer to the queue
 * 
 * @return  Return 1 if queue is empty. 0 otherwise.
 */
static inline uint8_t queueIsEmpty(Queue *q) {
    return (q->tail == q->head);
}

/** 
 * Check if queue is full
 * 
 * @param   q   Pointer to the queue
 * 
 * @return Return 1 if queue is full. 0 otherwise.
 */
static inline uint8_t queueIsFull(Queue *q) {
    return (((q->head + 1) % QUEUE_SIZE) == q->tail);
}

/** 
 * Add one byte into queue
 * 
 * @param   q   Pointer to the queue
 * @param   data    data to be added
 * 
 * @return  Return 1 if enqueue is successful. Return 0 if enqueue fails
 * because queue is full
 */
static uint8_t enqueue(Queue *q, uint8_t data) {
    if (queueIsFull(q)) {
        return 0;
    }
    q->buf[q->head] = data;
    q->head ++;
    if (q->head >= QUEUE_SIZE) {
        q->head = 0;
    }
    return 1;
}

/** 
 * Take one byte out of queue
 * 
 * @param   q   Pointer to the queue
 * @param   data    Pointer to the data extracted
 * 
 * @return  Return 1 if dequeue is successful. Return 0 if dequeue
 * fails because queue is empty
 */
static uint8_t dequeue(Queue *q, uint8_t *data) {
    if (queueIsEmpty(q)) {
        return 0;
    }
    *data = q->buf[q->tail];
    q->tail ++;
    if (q->tail >= QUEUE_SIZE) {
        q->tail = 0;
    }
    return 1;
}

/** 
 * Advance head or tail by the number of count. Wrap itself if necessary.
 * 
 * @param   index   Pointer to the index
 * @param   count   The count by which head or tail advances.
 */
static void queueIncrIndex(volatile uint16_t *index, uint16_t count) {
    *index += count;
    if (*index >= QUEUE_SIZE) {
        *index %= QUEUE_SIZE;
    }
}

/** 
 * Return number of unread bytes in the queue without wrapping. If there is
 * still unread bytes that the tail has to wrap it self to consume, dataLeft
 * flag will be 1.
 * 
 * @param   q   Pointer to the queue
 * @param   dataLeft    Pointer to store the result flag indicating
 *                      if there is unread data that tail has to 
 *                      wrap itself to consume. The flag is 1 if there is
 *                      more data after wrapping. 0 otherwise.
 * 
 * @return Number of unread bytes without wrapping
 */
static uint16_t dataAvailNonwrap(Queue *q, uint8_t *dataLeft) {
    if (q->head >= q->tail) {
        *dataLeft = 0;
        return q->head - q->tail;
    }
    else {
        *dataLeft = 1;
        return QUEUE_SIZE - q->tail;
    }
}

/** 
 * Return the current data available to read in the queue.
 * 
 * @param   q   Pointer to the queue
 * 
 * @return  The number of byte available. 
 */
static uint16_t dataAvailable(Queue *q) {
    if (q->head >= q->tail) {
        return q->head - q->tail;
    }
    else {
        return QUEUE_SIZE - q->tail + q->head;
    }
}

/** 
 * Reset both head and tail.
 * 
 * @param   q   Pointer to queue.
 */
static void reset(Queue *q) {
    q->head = 0;
    q->tail = 0;
}

#ifndef __MPU9150_H__
#define __MPU9150_H__

#include "stm32f10x.h"

typedef enum {
	  MPU9150_STATE_IDLE			= 0x01,
    MPU9150_STATE_WRITING		= 0x02,
    MPU9150_STATE_READING		= 0x03,
    MPU9150_STATE_ERROR 		= 0x04,
} MPU9150_StateTypeDef;


#define MPU9150_TIMEOUT                  ((uint32_t)0x3FFFF)

#define MPU9150_ADDR           						(0x68)   /*!< MPU9150 i2c address */
	 
void MPU9150_Config(void);	 
void MPU9150_DeInit(void);
ErrorStatus MPU9150_GetStatus(void);

/**
 *  @brief      Write to a device register.
 *
 *  @param[in]  slave_addr  Slave address of device.
 *  @param[in]  reg_addr	Slave register to be written to.
 *  @param[in]  length      Number of bytes to write.
 *  @param[out] data        Data to be written to register.
 *
 *  @return     0 if successful.
 */
uint8_t stm32_i2c_write(uint8_t slave_addr,  uint8_t reg_addr, uint8_t length, uint8_t *data);
/**
 *  @brief      Read from a device.
 *
 *  @param[in]  slave_addr  Slave address of device.
 *  @param[in]  reg_addr	Slave register to be read from.
 *  @param[in]  length      Number of bytes to read.
 *  @param[out] data        Data from register.
 *
 *  @return     0 if successful.
 */
uint8_t stm32_i2c_read(uint8_t slave_addr, uint8_t reg_addr, uint8_t length, uint8_t *data);

typedef enum 
{  
  MPU9150_INT_MODE_GPIO = 0,
  MPU9150_INT_MODE_EXTI = 1
} MPU9150intMode_TypeDef;

/** Define the Interrupt pin */  
#define MPU9150_INT_PIN                          GPIO_Pin_7
#define MPU9150_INT_GPIO_PORT                    GPIOC                 
#define MPU9150_INT_GPIO_CLK                     RCC_APB2Periph_GPIOC  
#define MPU9150_INT_EXTI_LINE                    EXTI_Line7
#define MPU9150_INT_EXTI_PORT_SOURCE             GPIO_PortSourceGPIOC  
#define MPU9150_INT_EXTI_PIN_SOURCE              GPIO_PinSource7
#define MPU9150_INT_EDGE                         EXTI_Trigger_Rising 
#define MPU9150_INT_EXTI_IRQn                    EXTI9_5_IRQn

#define MPU9150_INT_EXTI_PREEMPTION_PRIORITY     14
#define MPU9150_INT_EXTI_SUB_PRIORITY            0

void MPU9150_Interrupt_Init(MPU9150intMode_TypeDef Button_Mode);
void MPU9150_Interrupt_Cmd(uint8_t NewState);
uint32_t MPU9150_Get_INTpin_State(void);


#endif /* __STM32_CPAL_MPU9150_H */
/******************* (C) COPYRIGHT 2013 Harinadha Reddy Chintalapalli *****END OF FILE****/

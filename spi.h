#ifndef _SPI_H_
#define _SPI_H_

#include "stm32f4xx.h"
#include "delay.h"
#include "usart.h"

#define SPI_Prescaler2	(uint16_t(0x0000))
#define SPI_Prescaler4	(uint16_t(0x0008))
#define SPI_Prescaler8	(uint16_t(0x0010))
#define SPI_Prescaler16	(uint16_t(0x0018))
#define SPI_Prescaler32	(uint16_t(0x0020))
#define SPI_Prescaler64 (uint16_t(0x0028))
#define SPI_Prescaler128 (uint16_t(0x0030))
#define SPI_Prescaler256 (uint16_t(0x0038))
#define SPI_Prescaler512 (uint16_t(0x0048))

void initSPI(uint8_t SPI_Prescaler);
uint8_t txSPI(uint8_t txData);
uint8_t rxSPI();

#define SPI_LOW (GPIOA->ODR &= ~(GPIO_ODR_ODR_15));
#define SPI_HIGH (GPIOA->ODR |= (GPIO_ODR_ODR_15));

#endif

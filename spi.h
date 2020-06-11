#ifndef __SPI2_H_
#define __SPI2_H_

#include "stm32f4xx.h"

#define SPI_BaudRatePrescaler_2         (0x0000)
#define SPI_BaudRatePrescaler_4         (0x0008)
#define SPI_BaudRatePrescaler_8         (0x0010)
#define SPI_BaudRatePrescaler_16        (0x0018)
#define SPI_BaudRatePrescaler_32        (0x0020)
#define SPI_BaudRatePrescaler_64        (0x0028)
#define SPI_BaudRatePrescaler_128       (0x0030)
#define SPI_BaudRatePrescaler_256       (0x0038)
#define SPI_I2S_FLAG_RXNE               (0x0001)
#define SPI_I2S_FLAG_TXE                (0x0002)
#define I2S_FLAG_CHSIDE                 (0x0004)
#define I2S_FLAG_UDR                    (0x0008)
#define SPI_FLAG_CRCERR                 (0x0010)
#define SPI_FLAG_MODF                   (0x0020)
#define SPI_I2S_FLAG_OVR                (0x0040)
#define SPI_I2S_FLAG_BSY                (0x0080)
#define SPI_I2S_FLAG_TIFRFE             (0x0100)

#define SPI_HIGH					GPIOB->ODR |= (0x1000);
#define SPI_LOW						GPIOB->ODR &= ~(0x1000);

#define SPI1_CS_HIGH					GPIOE->ODR |= (0x0008);
#define SPI1_CS_LOW						GPIOE->ODR &= ~(0x0008);

void 		initSPI(uint16_t prescaler);
uint8_t 	rxSPI(void);
uint8_t 	txSPI(uint8_t data);
uint8_t 	rxByteSPI1(void);
uint8_t 	txByteSPI1(uint8_t data);
#endif 

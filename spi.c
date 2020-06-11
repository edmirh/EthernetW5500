#include "spi.h"

void initSPI(uint16_t prescaler)
{/// init SPI2 in master mode
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// SPI2 Pin configuration
	///-----------------------------------------------------------------
	/// PB13 = SCK
	/// PB14 = MISO
	/// PB15 = MOSI
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN; 								//
	GPIOB->MODER &= ~((GPIO_MODER_MODER13)|(GPIO_MODER_MODER14)|(GPIO_MODER_MODER15));
	GPIOB->MODER |= (GPIO_MODER_MODER13_1)|(GPIO_MODER_MODER14_1)|(GPIO_MODER_MODER15_1); 
	GPIOB->AFR[1] |= 0x55500000;										//   
	GPIOB->OSPEEDR |= 0xA8000000;										// 
	
	GPIOB->MODER &= ~(GPIO_MODER_MODER12);
	GPIOB->MODER |= (GPIO_MODER_MODER12_0); 
	GPIOB->OTYPER &= ~(0x03000000);
	GPIOB->OSPEEDR |= 0x02000000;										// 
	SPI_HIGH;
	
	RCC->APB1ENR |= RCC_APB1ENR_SPI2EN; 								// 	
	SPI2->CR1 = (SPI_CR1_MSTR);											// enable 8 bit data & master mode			
	SPI2->CR1 |= (SPI_CR1_SSI)|(SPI_CR1_SSM);
	
	SPI2->CR1 |= prescaler;		
	SPI2->CR1 |= (SPI_CR1_SPE);											// 
}

uint8_t rxSPI(void)
{///  receive data using SPI2
	uint8_t data;
	
	SPI2->DR = 0x00;						 							// 
	while(!(SPI2->SR & SPI_I2S_FLAG_TXE)); 								// 
	while(!(SPI2->SR & SPI_I2S_FLAG_RXNE)); 							// 
	while(SPI2->SR & SPI_I2S_FLAG_BSY); 								//	
	data = SPI2->DR; 													//
	
	return data;
}	

uint8_t txSPI(uint8_t data)
{/// send data using SPI2
	uint8_t tmp;

	SPI2->DR = data; 													//
	while(!(SPI2->SR & SPI_I2S_FLAG_TXE));								// 
	while(!(SPI2->SR & SPI_I2S_FLAG_RXNE)); 							// 
	while(SPI2->SR & SPI_I2S_FLAG_BSY); 								// 
	tmp = SPI2->DR; 													// 
		
	return tmp;
}


//SPI1 for accelerometer//
void initSPI1(uint16_t prescaler)
{/// init SPI1 in master mode
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// SPI1 Pin configuration
	///-----------------------------------------------------------------
	/// PE3 = CS
	/// PA5 = SCK
	/// PA6 = MISO
	/// PA7 = MOSI
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 								//
	GPIOA->MODER |= 0x0000A800; 										// 
	GPIOA->AFR[0] |= 0x55500000;										//   
	GPIOA->OSPEEDR |= 0x0000A800;										// 
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOEEN;
	GPIOE->MODER |= 0x00000040; 
	GPIOE->OTYPER &= ~(0x00000008);
	GPIOE->OSPEEDR |= 0x00000080;										// 
	SPI1_CS_HIGH;
	
	RCC->APB2ENR |= RCC_APB2ENR_SPI1EN; 								// 	
	SPI1->CR1 = (SPI_CR1_MSTR);											// enable 8 bit data & master mode			
	SPI1->CR1 |= (SPI_CR1_SSI)|(SPI_CR1_SSM);
	
	SPI1->CR1 |= prescaler;		
	SPI1->CR1 |= (SPI_CR1_SPE);											// 
}

uint8_t rxByteSPI1(void)
{///  receive data using SPI1
	uint8_t data;
	
	SPI1->DR = 0x00;						 							// 
	while(!(SPI1->SR & SPI_I2S_FLAG_TXE)); 								// 
	while(!(SPI1->SR & SPI_I2S_FLAG_RXNE)); 							// 
	while(SPI1->SR & SPI_I2S_FLAG_BSY); 								//	
	data = SPI1->DR; 													//
	
	return data;
}	

uint8_t txByteSPI1(uint8_t data)
{/// send data using SPI1
	uint8_t tmp;

	SPI1->DR = data; 													//
	while(!(SPI1->SR & SPI_I2S_FLAG_TXE));								// 
	while(!(SPI1->SR & SPI_I2S_FLAG_RXNE)); 							// 
	while(SPI1->SR & SPI_I2S_FLAG_BSY); 								// 
	tmp = SPI1->DR; 													// 
		
	return tmp;
}


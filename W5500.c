#include "W5500.h"
#include "usart.h"

uint8_t readReg(uint32_t addr) {
	uint8_t tmp;
	addr |= (SPI_READ)|(SPI_VDM);
	
	initSPI(SPI_BaudRatePrescaler_32);
	
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	
	tmp = rxSPI();
	SPI_HIGH;
	
	return tmp;
}

void writeReg(uint32_t addr, uint8_t data) {
	addr |= (SPI_WRITE)|(SPI_VDM);
	
	initSPI(SPI_BaudRatePrescaler_32);
	
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	txSPI(data);
	SPI_HIGH;
}

void writeBuff(uint32_t addr, uint8_t * pBuff, uint16_t len) {
	addr |= (SPI_WRITE)|(SPI_VDM);
	
	initSPI(SPI_BaudRatePrescaler_32);
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	for(uint8_t i = 0; i<len; i++) {
		txSPI(pBuff[i]);
	}
	SPI_HIGH;
}

void readBuff(uint32_t addr, uint8_t * pBuff, uint16_t len) {
	addr |= (SPI_READ)|(SPI_VDM);
	initSPI(SPI_BaudRatePrescaler_32);
	SPI_LOW;
	txSPI((addr & 0x00FF0000) >> 16);
	txSPI((addr & 0x0000FF00) >> 8);
	txSPI((addr & 0x000000FF) >> 0);
	for(uint8_t i = 0; i<len; i++) {
		pBuff[i] = rxSPI();
	}
}

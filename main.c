#include "stm32f4xx.h"
#include "delay.h"
#include "w5500.h"
#include "usart.h"


int main() {
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	GPIOD->MODER |= GPIO_MODER_MODER12_0;
	GPIOD->OTYPER |= 0x00000000;
	GPIOD->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR12_1;

	
	initUSART2(USART2_BAUDRATE_115200);
	uint8_t tmp, tmp1;
		
	writeReg(MR, 0x02);												//Force ARP
	writeReg(GAR, 0xC0);											//Gateway address
	writeReg(W5500_OFFSET_INC(GAR,1), 0xA8);
	writeReg(W5500_OFFSET_INC(GAR,2), 0x00);
	writeReg(W5500_OFFSET_INC(GAR,3), 0x01);

	writeReg(SUBR, 0xFF);
	writeReg(W5500_OFFSET_INC(SUBR,1), 0xFF);
	writeReg(W5500_OFFSET_INC(SUBR,2), 0xFF);
	writeReg(W5500_OFFSET_INC(SUBR,3), 0x00);
	
	writeReg(SHAR, 0x00);
	writeReg(W5500_OFFSET_INC(SHAR,1), 0x08);
	writeReg(W5500_OFFSET_INC(SHAR,2), 0xDC);
	writeReg(W5500_OFFSET_INC(SHAR,3), 0x01);
	writeReg(W5500_OFFSET_INC(SHAR,4), 0x02);
	writeReg(W5500_OFFSET_INC(SHAR,5), 0x03);
	
	writeReg(SIPR, 0xC0);
	writeReg(W5500_OFFSET_INC(SIPR,1), 0xA8);
	writeReg(W5500_OFFSET_INC(SIPR,2), 0x00);
	writeReg(W5500_OFFSET_INC(SIPR,3), 0x78);						//192.168.0.120 address of W5500
	
	writeReg(PHYCFGR, 0x0F);
	
	writeReg(Sn_MR(1), 0x01);										//Socket 1, TCP protocol
	writeReg(Sn_CR(1), 0x01);										//Open socket 1
	writeReg(Sn_CR(1), 0x02);										//Listen on socket 1
	
	tmp = readReg(Sn_SR(1));
	tmp1 = readReg(Sn_IR(1));
	printUSART2("Status: %x\nInterrupt: %x\n", tmp, tmp1);
}

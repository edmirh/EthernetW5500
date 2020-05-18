#include "stm32f4xx.h"
#include "delay.h"
#include "w5500.h"
#include "usart.h"

int main(void) {
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	GPIOD->MODER |= GPIO_MODER_MODER12_0;
	GPIOD->OTYPER |= 0x00000000;
	GPIOD->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR12_1;

	
	initUSART2(USART2_BAUDRATE_115200);
	uint8_t sn = 1;
	uint8_t addr[4] = {192,168,0,119};
	uint16_t port = 8080;
	uint8_t tmp, tmp1 = 0;
	uint8_t buff[20];
	uint8_t buf[14] = "GET / HTTP 1.1";

	writeReg(MR, 0x02);												//Force ARP
	writeReg(GAR, 0xC0);											//Gateway address
	writeReg(W5500_OFFSET_INC(GAR,1), 0xA8);
	writeReg(W5500_OFFSET_INC(GAR,2), 0x00);
	writeReg(W5500_OFFSET_INC(GAR,3), 0x01);

	writeReg(SUBR, 0xFF);											//Subnet mask of W5500
	writeReg(W5500_OFFSET_INC(SUBR,1), 0xFF);
	writeReg(W5500_OFFSET_INC(SUBR,2), 0xFF);
	writeReg(W5500_OFFSET_INC(SUBR,3), 0x00);
	
	writeReg(SHAR, 0x00);											//MAC address of W5500
	writeReg(W5500_OFFSET_INC(SHAR,1), 0x08);
	writeReg(W5500_OFFSET_INC(SHAR,2), 0xDC);
	writeReg(W5500_OFFSET_INC(SHAR,3), 0x01);
	writeReg(W5500_OFFSET_INC(SHAR,4), 0x02);
	writeReg(W5500_OFFSET_INC(SHAR,5), 0x03);
	
	writeReg(SIPR, 0xC0);
	writeReg(W5500_OFFSET_INC(SIPR,1), 0xA8);
	writeReg(W5500_OFFSET_INC(SIPR,2), 0x00);
	writeReg(W5500_OFFSET_INC(SIPR,3), 0x78);						//192.168.0.120 address of W5500
	
	///------------------Connecting socket---------------------------///
	
	writeReg(Sn_DIPR(1), 0xC0);										//Destination address of some server
	writeReg(W5500_OFFSET_INC(Sn_DIPR(1),1), 0xA8);
	writeReg(W5500_OFFSET_INC(Sn_DIPR(1),2), 0x00);
	writeReg(W5500_OFFSET_INC(Sn_DIPR(1),3), 0x77);					//192.168.0.119
	
	writeReg(Sn_DPORT(1), 0x08);									//Destination port of server(8080)
	writeReg(W5500_OFFSET_INC(Sn_DPORT(1),1), 0x00);
	writeReg(W5500_OFFSET_INC(Sn_DPORT(1),2), 0x08);
	writeReg(W5500_OFFSET_INC(Sn_DPORT(1),3), 0x00);
	
	writeReg(Sn_MR(1), 0x01);										//Socket 1, TCP protocol
	writeReg(Sn_CR(1), 0x01);										//Open socket 1
	writeReg(Sn_CR(1), 0x04);										//Connect on socket 1
	uint16_t timeout = 0;		
    while(getSn_CR(sn));
	while(getSn_SR(sn) != SOCK_ESTABLISHED)
	{
	   timeout++;
		if (getSn_IR(sn) & Sn_IR_TIMEOUT)
		{
			setSn_IR(sn, Sn_IR_TIMEOUT);
			tmp1 = SOCKERR_TIMEOUT;
		}

		if (getSn_SR(sn) == SOCK_CLOSED)
		{
			tmp1 = SOCKERR_SOCKCLOSED;
		}
		if(timeout < 64000) {
			printUSART2("Timeout\n");
			break;
		}
	}

	tmp = SOCK_OK;
	printUSART2("Status Reg: %x\n", tmp);
	printUSART2("Interrupt Reg: %x\n", tmp1);
}

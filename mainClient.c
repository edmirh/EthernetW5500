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
	
	///---------Variables for initialization, (COMMON REG)-----------///
	uint8_t gaddr[4] = {192,168,0,1};
	uint8_t subnet[4] = {255,255,255,0};
	uint8_t mac[6] = {0x00,0x08,0xDC,0x01,0x02,0x03};
	uint8_t saddr[4] = {192,168,0,120};
	
	///--------Variables for socket connection, (SOCKET REG)---------///
	uint8_t sn = 0x01;
	uint8_t addr[4] = {192,168,0,119};
	uint16_t port = 8080;
	
	///------------Variables for main program------------------------///
	int tmp, init = 0;
	
	#define LENGTH		12
	
	uint8_t send[LENGTH] = "Hello World!";
	uint8_t recv[LENGTH];
	
	init = initW5500(gaddr, subnet, mac, saddr);
	tmp = connect(sn, addr, port);
	
	sendData(sn, send, 12);
	recvData(sn, recv, 12);
	printUSART2("Status Reg: %x\n", init);
	printUSART2("Connection: %d\n", tmp);
	printUSART2("Send data: ");
	for(uint8_t i=0;i<(LENGTH);i++) {
		printUSART2("%c", send[i]);
	}
	printUSART2("\n");

	printUSART2("Recieve data: ");
	for(uint8_t i=0;i<(LENGTH);i++) {
		printUSART2("%c", recv[i]);
	}
	printUSART2("\n");
}

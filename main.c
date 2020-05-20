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
	uint16_t port = 5000;
	
	///------------Variables for main program------------------------///
	#define LENGTH		2048
	uint16_t i = 0;
	uint8_t status = 0x00;
	uint8_t sendD[LENGTH];
	
	initW5500(gaddr, subnet, mac, saddr);
	setSn_PORT(sn, port);
	//send(sn, sendD, 100);
	
	printUSART2("Connecting to %d.%d.%d.%d\n", addr[0], addr[1], addr[2], addr[3]);
	status = connect(sn, addr, port);
	if(status == 0x01) {
		printUSART2("Connection: Established\n");		
		while(1) {
			sendD[i] = getcharUSART2();
			putcharUSART2(sendD[i]);
			i++;
			if(getcharUSART2() == '0')
				break;
		}
		printUSART2("\nExit cli mode\n");
		send(sn, sendD, i);
		printUSART2("All data has been sent!\n");
	}
	else {
		printUSART2("Not connected!\n");
	}
}


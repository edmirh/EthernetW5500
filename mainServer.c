#include "stm32f4xx.h"
#include "delay.h"
#include "w5500.h"
#include "lis302dl.h"
#include "usart.h"
#include "math.h"

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
	uint8_t addr[4] = {192,168,0,120};
	uint16_t port = 5000;
	
	///------------Variables for main program------------------------///
	#define LENGTH		100
	int i = 0;
	uint8_t status = 0x00;
	int8_t sendD[LENGTH];
	for(uint8_t n=0;n<sizeof(sendD);n++)
		sendD[n] = 0;
	
	initW5500(gaddr, subnet, mac, saddr);
	
	printUSART2("Listening on %d\n", port);
	status = listen(sn, port);
	if(status == SOCK_OK) {
		printUSART2("Connection: Established\n");		
		while(1) {
			recieve(sn, sendD);
			printUSART2("Recieved data: %d", sendD[i]);
			i++;
		}
	}
	else {
		printUSART2("Not connected!\n");
	}
}


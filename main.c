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
	int tmp, init = 0;
	int sendStatus = 0;
	uint8_t getPort = 0;
	uint8_t addBuff[4] = {0,0,0,0};
	#define LENGTH		2048
	
	uint8_t sendD[LENGTH] = "HTTP/1.1 200 OK Content-Type: text/html <!DOCTYPE HTML> <html> Welcome to the new page </html>";
	uint8_t recvD[LENGTH];
	
	init = initW5500(gaddr, subnet, mac, saddr);
	setSn_PORT(sn, port);
	tmp = connect(sn, addr, port);
	
	sendStatus = send(sn, sendD, 100);
	recvData(sn, recvD, 100);
	getSn_DIPR(sn, addBuff);
	getPort = getSn_PORT(sn);
	printUSART2("Status Reg: %x\n", init);
	printUSART2("Connection: %d\n", tmp);
	printUSART2("Send status: %d, DIPR: %d, PORT: %d\n", sendStatus, addBuff[3], getPort);
}


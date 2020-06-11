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
	uint8_t addr[4] = {192,168,0,119};
	uint16_t port = 5000;
	
	///------------Variables for main program------------------------///
	#define LENGTH		7
	int8_t accel_data[3];
	int i = 0;
	uint8_t status = 0x00;
	uint8_t sendD[LENGTH];
	uint8_t dataa[4] = "data";
	initW5500(gaddr, subnet, mac, saddr);
	
	initLIS302DL();
	delay_ms(2000);
	
	setSn_PORT(sn, port);
	
	printUSART2("Connecting to %d.%d.%d.%d\n", addr[0], addr[1], addr[2], addr[3]);
	status = connect(sn, addr, port);
	if(status ==SOCK_OK) {
		printUSART2("Connection: Established\n");		
		//printUSART2("Write text for send: ");
		while(1) {
			getDataLIS302DL(accel_data);
			
			int8_t ax = (int8_t)accel_data[0];
			int8_t ay = (int8_t)accel_data[1];
			int8_t az = (int8_t)accel_data[2];
			
			uint8_t rho = atanf(ax/sqrt(ay*ay + az*az))*180/3.14;
			float phi = atanf(ay/sqrt(ax*ax + az*az))*180/3.14;
			float theta = atanf(sqrt(ay*ay + ax*ax)/az)*180/3.14;
			printUSART2("-> LIS302: \tx[%f] \ty[%f] \tz[%f]\n",rho, phi, theta);	
			if(rho > 255)
				sendD[i] = ((rho&0xFF00)>>8);									
			else
				sendD[i] = (rho&0x00FF);
			send(sn, sendD);
			delay_ms(100);
			//if(i == (LENGTH)) {
				//i = 0;
		//	}
		}
	}
	else {
		printUSART2("Not connected!\n");
	}
}


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
	printUSART2("Waiting for code\n");
	
	while(1) {
		GPIOD->ODR ^= GPIO_ODR_ODR_12;
		delay_ms(100);
	}
}

#include "stm32f4xx.h"
#include "delay.h"

int main() {
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	
	GPIOD->MODER |= GPIO_MODER_MODER12_0;
	GPIOD->OTYPER |= 0x00000000;
	GPIOD->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR12_1;
	
	uint16_t cnt = 0;
	
	while(1) {
		delay_ms(500);
		GPIOD->ODR ^= GPIO_ODR_ODR_12;
	}
}

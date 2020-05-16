#include "delay.h"

void delay_ms(uint16_t time) {
	RCC->APB1ENR |= RCC_APB1ENR_TIM14EN;
	
	TIM14->ARR = 84 - 1;
	TIM14->PSC = 1000;
	
	TIM14->CR1 |= TIM_CR1_ARPE;
	
	TIM14->EGR |= TIM_EGR_UG;
	TIM14->CR1 |= TIM_CR1_CEN;
	
	while(time > 0) {
		while((TIM14 -> SR & TIM_SR_UIF) == 0x0000);
		TIM14->SR &= ~TIM_SR_UIF;
		time--;
	}
	
	TIM14->CR1 &= ~TIM_CR1_CEN;
	RCC->APB1ENR &= RCC_APB1ENR_TIM14EN;
}

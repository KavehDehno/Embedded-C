
#include "main.h"

void led_effect_stop(void)
{
	for(int i=0; i<4; i++)
		xTimerStop(LED_Timer_Handle[i], portMAX_DELAY);
}


void led_effect(int n)
{
	led_effect_stop();
	xTimerStart(LED_Timer_Handle[n-1], portMAX_DELAY);
}

void turn_off_all_leds(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2, GPIO_PIN_SET);
}

void turn_on_all_leds(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2, GPIO_PIN_RESET);
}

void turn_off_red_led(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0 | GPIO_PIN_1| GPIO_PIN_2, GPIO_PIN_SET);
}

void turn_on_red_led(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1| GPIO_PIN_2, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_RESET);
}

void turn_off_green_led(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0 | GPIO_PIN_1| GPIO_PIN_2, GPIO_PIN_SET);
}

void turn_on_green_led(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0 | GPIO_PIN_2, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1, GPIO_PIN_RESET);
}

void turn_off_blue_led(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0 | GPIO_PIN_1| GPIO_PIN_2, GPIO_PIN_SET);
}

void turn_on_blue_led(void)
{
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0 | GPIO_PIN_1, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, GPIO_PIN_RESET);
}


//void LED_control( int value )
//{
//  for(int i = 0 ; i < 4 ; i++)
//	  HAL_GPIO_WritePin(LD3_GPIO_Port, (LED1 << i), ((value >> i)& 0x1));
//}

void LED_effect1(void)
{
	static int Flag = 1;
	(Flag ^= 1) ? turn_off_all_leds() : turn_on_all_leds();
}

void LED_effect2(void)
{
	static int Flag = 1;
	(Flag ^= 1) ? turn_off_red_led() : turn_on_red_led();
}

void LED_effect3(void)
{
	static int Flag = 1;
	(Flag ^= 1) ? turn_off_green_led() : turn_on_green_led();
}

void LED_effect4(void)
{
	static int Flag = 1;
	(Flag ^= 1) ? turn_off_blue_led() : turn_on_blue_led();
}
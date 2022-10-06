/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */




typedef	struct
{
	uint8_t		payload[10];
	uint32_t	lenght;
}command_t;

/*Application states
 */
typedef enum
{
	sMainMenu = 0,
	sLEDEffect,
	sRTCMenu,
	sRTCTimeConfig,
	sRTCDateConfig,
	sRTCReport,
}state_t;

extern QueueHandle_t	q_Data;
extern QueueHandle_t	q_Print;
extern state_t			current_state;
extern TaskHandle_t 	CommandHanding_Task_Handle;
extern TaskHandle_t 	Menu_Task_Handle;
extern TaskHandle_t 	LED_Task_Handle;
extern TaskHandle_t 	RTC_Task_Handle;
extern TaskHandle_t 	Print_Task_Handle;
extern TimerHandle_t	LED_Timer_Handle[4];
extern UART_HandleTypeDef huart3;
extern RTC_HandleTypeDef hrtc;
extern TimerHandle_t 	RTC_timer;
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
void led_effect_stop(void);
void led_effect(int n);
void LED_effect1(void);
void LED_effect2(void);
void LED_effect3(void);
void LED_effect4(void);
void show_time_date(void);
void show_time_date_itm(void);
void rtc_configure_time(RTC_TimeTypeDef *time);
void rtc_configure_date(RTC_DateTypeDef *date);
int validate_rtc_information(RTC_TimeTypeDef *time , RTC_DateTypeDef *date);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
/* USER CODE BEGIN Private defines */
#define LED_Red_PIN 	GPIO_PIN_0
#define LED_Green_PIN 	GPIO_PIN_1
#define LED_Blue_PIN 	GPIO_PIN_2
#define Button_PIN 		GPIO_PIN_13
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
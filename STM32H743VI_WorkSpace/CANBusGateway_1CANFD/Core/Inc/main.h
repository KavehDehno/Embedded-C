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
#include <stdbool.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
extern char usr_msg[250];
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
void USART_Send(char* user_data);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define Red_LED_Pin GPIO_PIN_0
#define Red_LED_GPIO_Port GPIOC
#define Green_LED_Pin GPIO_PIN_1
#define Green_LED_GPIO_Port GPIOC
#define Blue_LED_Pin GPIO_PIN_2
#define Blue_LED_GPIO_Port GPIOC
/* USER CODE BEGIN Private defines */
#define LED_Red_PIN 	GPIO_PIN_0
#define LED_Green_PIN 	GPIO_PIN_1
#define LED_Blue_PIN 	GPIO_PIN_2
#define Button_PIN 		GPIO_PIN_13
#define TRUE	1
#define FALSE	0
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/Recorder/segger_uart.c \
D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.c \
D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.c 

OBJS += \
./ThirdParty/SEGGER/Recorder/segger_uart.o \
./ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.o \
./ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.o 

C_DEPS += \
./ThirdParty/SEGGER/Recorder/segger_uart.d \
./ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.d \
./ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGER/Recorder/segger_uart.o: D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/Recorder/segger_uart.c ThirdParty/SEGGER/Recorder/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.o: D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.c ThirdParty/SEGGER/Recorder/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.o: D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.c ThirdParty/SEGGER/Recorder/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGER-2f-Recorder

clean-ThirdParty-2f-SEGGER-2f-Recorder:
	-$(RM) ./ThirdParty/SEGGER/Recorder/segger_uart.d ./ThirdParty/SEGGER/Recorder/segger_uart.o ./ThirdParty/SEGGER/Recorder/segger_uart.su ./ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.d ./ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.o ./ThirdParty/SEGGER/Recorder/segger_uart_M7_USART3.su ./ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.d ./ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.o ./ThirdParty/SEGGER/Recorder/segger_uart_STM_M4.su

.PHONY: clean-ThirdParty-2f-SEGGER-2f-Recorder


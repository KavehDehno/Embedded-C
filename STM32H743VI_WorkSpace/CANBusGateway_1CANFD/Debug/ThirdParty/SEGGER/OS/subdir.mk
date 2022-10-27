################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o: D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c ThirdParty/SEGGER/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGER-2f-OS

clean-ThirdParty-2f-SEGGER-2f-OS:
	-$(RM) ./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d ./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o ./ThirdParty/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.su

.PHONY: clean-ThirdParty-2f-SEGGER-2f-OS


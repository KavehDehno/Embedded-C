################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c 

OBJS += \
./Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o 

C_DEPS += \
./Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d 


# Each subdirectory must supply rules for building sources it contributes
Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o: D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c Common/ThirdParty/SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/FreeRTOS" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/FreeRTOS/include" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/Config" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/OS" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/Common/ThirdParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Common-2f-ThirdParty-2f-SEGGER-2f-SEGGER-2f-Syscalls

clean-Common-2f-ThirdParty-2f-SEGGER-2f-SEGGER-2f-Syscalls:
	-$(RM) ./Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d ./Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o ./Common/ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.su

.PHONY: clean-Common-2f-ThirdParty-2f-SEGGER-2f-SEGGER-2f-Syscalls


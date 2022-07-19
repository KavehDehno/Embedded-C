################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c 

OBJS += \
./ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o 

C_DEPS += \
./ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGER/SEGGER/Syscalls/%.o ThirdParty/SEGGER/SEGGER/Syscalls/%.su: ../ThirdParty/SEGGER/SEGGER/Syscalls/%.c ThirdParty/SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/FreeRTOS_HelloWorld/ThirdParty/SEGGER/Config" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/FreeRTOS_HelloWorld/ThirdParty/SEGGER/OS" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/FreeRTOS_HelloWorld/ThirdParty/SEGGER/SEGGER" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/FreeRTOS_HelloWorld/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/FreeRTOS_HelloWorld/ThirdParty/FreeRTOS/portable/GCC/ARM_CM7/r0p1" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/FreeRTOS_HelloWorld/ThirdParty/FreeRTOS/include" -I"D:/Documents/FreeRTOS/RTOS_Workspace/STM32H743VI/STM32H743VI_WorkSpace/FreeRTOS_HelloWorld/ThirdParty/FreeRTOS" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGER-2f-SEGGER-2f-Syscalls

clean-ThirdParty-2f-SEGGER-2f-SEGGER-2f-Syscalls:
	-$(RM) ./ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d ./ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o ./ThirdParty/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.su

.PHONY: clean-ThirdParty-2f-SEGGER-2f-SEGGER-2f-Syscalls

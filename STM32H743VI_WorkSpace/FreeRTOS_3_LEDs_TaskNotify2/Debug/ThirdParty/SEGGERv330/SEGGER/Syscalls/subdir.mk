################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c 

OBJS += \
./ThirdParty/SEGGERv330/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o 

C_DEPS += \
./ThirdParty/SEGGERv330/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGERv330/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o: G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c ThirdParty/SEGGERv330/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGERv330-2f-SEGGER-2f-Syscalls

clean-ThirdParty-2f-SEGGERv330-2f-SEGGER-2f-Syscalls:
	-$(RM) ./ThirdParty/SEGGERv330/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d ./ThirdParty/SEGGERv330/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o

.PHONY: clean-ThirdParty-2f-SEGGERv330-2f-SEGGER-2f-Syscalls


################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT.c \
G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_printf.c \
G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT.o \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_printf.o \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT.d \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_printf.d \
./ThirdParty/SEGGERv330/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT.o: G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT.c ThirdParty/SEGGERv330/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_ASM_ARMv7M.o: G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_ASM_ARMv7M.S ThirdParty/SEGGERv330/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/Config" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_printf.o: G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_printf.c ThirdParty/SEGGERv330/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/SEGGERv330/SEGGER/SEGGER_SYSVIEW.o: G:/My\ Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER/SEGGER_SYSVIEW.c ThirdParty/SEGGERv330/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/Config" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/OS" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/SEGGERv330/SEGGER" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/include" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00/portable/GCC/ARM_CM7/r0p1" -I"G:/My Drive/Transfer/Proj/FreeRTOS/RTOS_Workspace/Common/ThirdParty/FreeRTOSv202012.00" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-SEGGERv330-2f-SEGGER

clean-ThirdParty-2f-SEGGERv330-2f-SEGGER:
	-$(RM) ./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT.d ./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT.o ./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_printf.d ./ThirdParty/SEGGERv330/SEGGER/SEGGER_RTT_printf.o ./ThirdParty/SEGGERv330/SEGGER/SEGGER_SYSVIEW.d ./ThirdParty/SEGGERv330/SEGGER/SEGGER_SYSVIEW.o

.PHONY: clean-ThirdParty-2f-SEGGERv330-2f-SEGGER

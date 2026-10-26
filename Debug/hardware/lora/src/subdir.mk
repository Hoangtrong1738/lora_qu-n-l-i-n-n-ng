################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hardware/lora/src/LoRa.c 

OBJS += \
./hardware/lora/src/LoRa.o 

C_DEPS += \
./hardware/lora/src/LoRa.d 


# Each subdirectory must supply rules for building sources it contributes
hardware/lora/src/%.o hardware/lora/src/%.su hardware/lora/src/%.cyclo: ../hardware/lora/src/%.c hardware/lora/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/project_iot/Lora/hardware/lora/inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-hardware-2f-lora-2f-src

clean-hardware-2f-lora-2f-src:
	-$(RM) ./hardware/lora/src/LoRa.cyclo ./hardware/lora/src/LoRa.d ./hardware/lora/src/LoRa.o ./hardware/lora/src/LoRa.su

.PHONY: clean-hardware-2f-lora-2f-src


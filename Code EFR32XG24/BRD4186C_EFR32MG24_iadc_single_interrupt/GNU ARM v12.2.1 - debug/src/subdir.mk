################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main_single_interrupt.c \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/common/src/sl_syscalls.c 

OBJS += \
./src/main_single_interrupt.o \
./src/sl_syscalls.o 

C_DEPS += \
./src/main_single_interrupt.d \
./src/sl_syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
src/main_single_interrupt.o: ../src/main_single_interrupt.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"src/main_single_interrupt.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sl_syscalls.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/common/src/sl_syscalls.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"src/sl_syscalls.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



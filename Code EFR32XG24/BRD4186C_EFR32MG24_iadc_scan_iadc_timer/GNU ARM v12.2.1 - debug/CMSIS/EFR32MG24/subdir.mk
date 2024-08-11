################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c 

S_UPPER_SRCS += \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.S 

OBJS += \
./CMSIS/EFR32MG24/startup_efr32mg24.o \
./CMSIS/EFR32MG24/system_efr32mg24.o 

C_DEPS += \
./CMSIS/EFR32MG24/system_efr32mg24.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/EFR32MG24/startup_efr32mg24.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.S CMSIS/EFR32MG24/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" '-DEFR32MG24B210F1536IM48=1' -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -x assembler-with-cpp -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/EFR32MG24/system_efr32mg24.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c CMSIS/EFR32MG24/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"CMSIS/EFR32MG24/system_efr32mg24.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



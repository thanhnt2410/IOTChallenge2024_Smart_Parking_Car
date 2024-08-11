################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_cmu.c \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_core.c \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_emu.c \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_gpio.c \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_iadc.c \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_system.c 

OBJS += \
./emlib/em_cmu.o \
./emlib/em_core.o \
./emlib/em_emu.o \
./emlib/em_gpio.o \
./emlib/em_iadc.o \
./emlib/em_system.o 

C_DEPS += \
./emlib/em_cmu.d \
./emlib/em_core.d \
./emlib/em_emu.d \
./emlib/em_gpio.d \
./emlib/em_iadc.d \
./emlib/em_system.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_cmu.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_cmu.c emlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"emlib/em_cmu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_core.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_core.c emlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"emlib/em_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_emu.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_emu.c emlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"emlib/em_emu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_gpio.c emlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"emlib/em_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_iadc.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_iadc.c emlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"emlib/em_iadc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_system.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_system.c emlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/EFR32MG24_BRD4186C" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/bsp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//peripheral_examples/series2/kit/common/drivers" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -O0 -Wall -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -mcmse -MMD -MP -MF"emlib/em_system.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



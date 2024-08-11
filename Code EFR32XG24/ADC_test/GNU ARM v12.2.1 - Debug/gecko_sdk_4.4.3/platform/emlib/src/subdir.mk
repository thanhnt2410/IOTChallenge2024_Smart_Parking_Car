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
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_msc.c \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_system.c 

OBJS += \
./gecko_sdk_4.4.3/platform/emlib/src/em_cmu.o \
./gecko_sdk_4.4.3/platform/emlib/src/em_core.o \
./gecko_sdk_4.4.3/platform/emlib/src/em_emu.o \
./gecko_sdk_4.4.3/platform/emlib/src/em_gpio.o \
./gecko_sdk_4.4.3/platform/emlib/src/em_iadc.o \
./gecko_sdk_4.4.3/platform/emlib/src/em_msc.o \
./gecko_sdk_4.4.3/platform/emlib/src/em_system.o 

C_DEPS += \
./gecko_sdk_4.4.3/platform/emlib/src/em_cmu.d \
./gecko_sdk_4.4.3/platform/emlib/src/em_core.d \
./gecko_sdk_4.4.3/platform/emlib/src/em_emu.d \
./gecko_sdk_4.4.3/platform/emlib/src/em_gpio.d \
./gecko_sdk_4.4.3/platform/emlib/src/em_iadc.d \
./gecko_sdk_4.4.3/platform/emlib/src/em_msc.d \
./gecko_sdk_4.4.3/platform/emlib/src/em_system.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.3/platform/emlib/src/em_cmu.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_cmu.c gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\ADC_test\config" -I"E:\SiliconLabs\project\ADC_test\autogen" -I"E:\SiliconLabs\project\ADC_test" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/emlib/src/em_cmu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.3/platform/emlib/src/em_core.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_core.c gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\ADC_test\config" -I"E:\SiliconLabs\project\ADC_test\autogen" -I"E:\SiliconLabs\project\ADC_test" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/emlib/src/em_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.3/platform/emlib/src/em_emu.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_emu.c gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\ADC_test\config" -I"E:\SiliconLabs\project\ADC_test\autogen" -I"E:\SiliconLabs\project\ADC_test" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/emlib/src/em_emu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.3/platform/emlib/src/em_gpio.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_gpio.c gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\ADC_test\config" -I"E:\SiliconLabs\project\ADC_test\autogen" -I"E:\SiliconLabs\project\ADC_test" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/emlib/src/em_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.3/platform/emlib/src/em_iadc.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_iadc.c gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\ADC_test\config" -I"E:\SiliconLabs\project\ADC_test\autogen" -I"E:\SiliconLabs\project\ADC_test" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/emlib/src/em_iadc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.3/platform/emlib/src/em_msc.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_msc.c gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\ADC_test\config" -I"E:\SiliconLabs\project\ADC_test\autogen" -I"E:\SiliconLabs\project\ADC_test" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/emlib/src/em_msc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.3/platform/emlib/src/em_system.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/emlib/src/em_system.c gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\ADC_test\config" -I"E:\SiliconLabs\project\ADC_test\autogen" -I"E:\SiliconLabs\project\ADC_test" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/emlib/src/em_system.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



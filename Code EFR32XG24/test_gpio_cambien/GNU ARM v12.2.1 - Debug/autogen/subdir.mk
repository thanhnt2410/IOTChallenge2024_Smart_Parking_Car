################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../autogen/sl_board_default_init.c \
../autogen/sl_device_init_clocks.c \
../autogen/sl_event_handler.c 

OBJS += \
./autogen/sl_board_default_init.o \
./autogen/sl_device_init_clocks.o \
./autogen/sl_event_handler.o 

C_DEPS += \
./autogen/sl_board_default_init.d \
./autogen/sl_device_init_clocks.d \
./autogen/sl_event_handler.d 


# Each subdirectory must supply rules for building sources it contributes
autogen/sl_board_default_init.o: ../autogen/sl_board_default_init.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\test_gpio_cambien\config" -I"E:\SiliconLabs\project\test_gpio_cambien\autogen" -I"E:\SiliconLabs\project\test_gpio_cambien" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -O0 -Wall -Wextra -mno-sched-prolog -fno-builtin -fomit-frame-pointer -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_board_default_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_device_init_clocks.o: ../autogen/sl_device_init_clocks.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\test_gpio_cambien\config" -I"E:\SiliconLabs\project\test_gpio_cambien\autogen" -I"E:\SiliconLabs\project\test_gpio_cambien" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -O0 -Wall -Wextra -mno-sched-prolog -fno-builtin -fomit-frame-pointer -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_device_init_clocks.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_event_handler.o: ../autogen/sl_event_handler.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B210F1536IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2703A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\SiliconLabs\project\test_gpio_cambien\config" -I"E:\SiliconLabs\project\test_gpio_cambien\autogen" -I"E:\SiliconLabs\project\test_gpio_cambien" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -O0 -Wall -Wextra -mno-sched-prolog -fno-builtin -fomit-frame-pointer -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_event_handler.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.4.3/platform/service/system/src/subdir.mk
-include gecko_sdk_4.4.3/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.4.3/platform/emlib/src/subdir.mk
-include gecko_sdk_4.4.3/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.4.3/platform/common/src/subdir.mk
-include gecko_sdk_4.4.3/platform/Device/SiliconLabs/EFR32MG24/Source/subdir.mk
-include gecko_sdk_4.4.3/hardware/board/src/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := ADC_test
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: ADC_test.axf

# Tool invocations
ADC_test.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -T "E:\SiliconLabs\project\ADC_test\autogen\linkerfile.ld" -Wl,--no-warn-rwx-segments -Xlinker --gc-sections -Xlinker -Map="ADC_test.map" -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -o ADC_test.axf -Wl,--start-group "./app.o" "./main.o" "./autogen/sl_board_default_init.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./gecko_sdk_4.4.3/hardware/board/src/sl_board_control_gpio.o" "./gecko_sdk_4.4.3/hardware/board/src/sl_board_init.o" "./gecko_sdk_4.4.3/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.o" "./gecko_sdk_4.4.3/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.o" "./gecko_sdk_4.4.3/platform/common/src/sl_assert.o" "./gecko_sdk_4.4.3/platform/common/src/sl_syscalls.o" "./gecko_sdk_4.4.3/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.4.3/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.4.3/platform/emlib/src/em_core.o" "./gecko_sdk_4.4.3/platform/emlib/src/em_emu.o" "./gecko_sdk_4.4.3/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.4.3/platform/emlib/src/em_iadc.o" "./gecko_sdk_4.4.3/platform/emlib/src/em_msc.o" "./gecko_sdk_4.4.3/platform/emlib/src/em_system.o" "./gecko_sdk_4.4.3/platform/service/device_init/src/sl_device_init_dcdc_s2.o" "./gecko_sdk_4.4.3/platform/service/device_init/src/sl_device_init_emu_s2.o" "./gecko_sdk_4.4.3/platform/service/device_init/src/sl_device_init_hfxo_s2.o" "./gecko_sdk_4.4.3/platform/service/device_init/src/sl_device_init_lfxo_s2.o" "./gecko_sdk_4.4.3/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.4.3/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.4.3/platform/service/system/src/sl_system_process_action.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: ADC_test.out'
	arm-none-eabi-objcopy "ADC_test.axf" "ADC_test.out"
	@echo ' '

	@echo 'Building hex file: ADC_test.hex'
	arm-none-eabi-objcopy -O ihex "ADC_test.axf" "ADC_test.hex"
	@echo ' '

	@echo 'Building bin file: ADC_test.bin'
	arm-none-eabi-objcopy -O binary "ADC_test.axf" "ADC_test.bin"
	@echo ' '

	@echo 'Building s37 file: ADC_test.s37'
	arm-none-eabi-objcopy -O srec "ADC_test.axf" "ADC_test.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "ADC_test.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) ADC_test.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets

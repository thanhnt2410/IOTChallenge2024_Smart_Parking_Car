################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/SiliconLabs/SDKs2/gecko_sdk/platform/bootloader/security/ecc/ecc.c 

OBJS += \
./gecko_sdk_4.4.3/platform/bootloader/security/ecc/ecc.o 

C_DEPS += \
./gecko_sdk_4.4.3/platform/bootloader/security/ecc/ecc.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.3/platform/bootloader/security/ecc/ecc.o: E:/SiliconLabs/SDKs2/gecko_sdk/platform/bootloader/security/ecc/ecc.c gecko_sdk_4.4.3/platform/bootloader/security/ecc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B310F1536IM48=1' '-DSE_MANAGER_CONFIG_FILE="btl_aes_ctr_stream_block_cfg.h"' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBOOTLOADER_SUPPORT_INTERNAL_STORAGE=1' '-DBOOTLOADER_SUPPORT_STORAGE=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2601B"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_TRUSTZONE_SECURE=1' -I"E:\SiliconLabs\project\DevKit_bootloader-storage-internal-single1Mb\config" -I"E:\SiliconLabs\project\DevKit_bootloader-storage-internal-single1Mb\autogen" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader/debug" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader/parser" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader/api" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader/core/flash" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader/security" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/mbedtls/include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/mbedtls/library" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/se_manager/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/se_manager/src" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/trusted-firmware-m/lib/fih/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/trusted-firmware-m/platform/include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -Wno-ignored-qualifiers -Wno-sign-compare --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/bootloader/security/ecc/ecc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gecko_sdk_4.4.3/platform/bootloader/core/flash/btl_internal_flash.c 

OBJS += \
./gecko_sdk_4.4.3/platform/bootloader/core/flash/btl_internal_flash.o 

C_DEPS += \
./gecko_sdk_4.4.3/platform/bootloader/core/flash/btl_internal_flash.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.3/platform/bootloader/core/flash/btl_internal_flash.o: ../gecko_sdk_4.4.3/platform/bootloader/core/flash/btl_internal_flash.c gecko_sdk_4.4.3/platform/bootloader/core/flash/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B210F1536IM48=1' '-DSE_MANAGER_CONFIG_FILE="btl_aes_ctr_stream_block_cfg.h"' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_GPIO_ACTIVATION=1' '-DBTL_UART_ENABLE=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DSL_BOARD_NAME="BRD4186C"' '-DSL_BOARD_REV="A01"' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_TRUSTZONE_SECURE=1' -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\config" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\autogen" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\Device\SiliconLabs\EFR32MG24\Include" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\debug" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\gpio\gpio-activation" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\parser" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\api" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\security" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\driver" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\communication" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\bootloader\communication\xmodem-parser" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\CMSIS\Core\Include" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\emlib\inc" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\common\inc" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\security\sl_component\sl_mbedtls_support\config" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\security\sl_component\sl_mbedtls_support\inc" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\util\third_party\mbedtls\include" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\util\third_party\mbedtls\library" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\security\sl_component\sl_psa_driver\inc" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\security\sl_component\se_manager\inc" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\security\sl_component\se_manager\src" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\util\silicon_labs\silabs_core\memory_manager" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\util\third_party\trusted-firmware-m\lib\fih\inc" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\util\third_party\trusted-firmware-m\platform\include" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\common\toolchain\inc" -I"E:\SiliconLabs\project\bootloader-uart-xmodem-xg24\gecko_sdk_4.4.3\platform\service\udelay\inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -Wno-ignored-qualifiers -Wno-sign-compare --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/bootloader/core/flash/btl_internal_flash.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



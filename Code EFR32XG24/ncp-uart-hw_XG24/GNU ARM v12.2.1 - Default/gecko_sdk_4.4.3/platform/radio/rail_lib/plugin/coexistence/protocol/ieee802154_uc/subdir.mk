################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gecko_sdk_4.4.3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c 

OBJS += \
./gecko_sdk_4.4.3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o 

C_DEPS += \
./gecko_sdk_4.4.3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o: ../gecko_sdk_4.4.3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c gecko_sdk_4.4.3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEMBER_CUSTOM_MAC_FILTER_TABLE_SIZE=15' '-DEFR32MG24B210F1536IM48=1' '-DSL_APP_PROPERTIES=1' '-DSL_BOARD_NAME="BRD4186C"' '-DSL_BOARD_REV="A01"' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DSEGGER_RTT_ALIGNMENT=1024' '-DCORTEXM3=1' '-DCORTEXM3_EFM32_MICRO=1' '-DCORTEXM3_EFR32=1' '-DPHY_RAIL=1' '-DPLATFORM_HEADER="platform-header.h"' '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' '-DUSE_NVM3=1' '-DUC_BUILD=1' '-DEMBER_AF_NCP=1' '-DEMBER_SERIAL1_RTSCTS=1' '-DEZSP_UART=1' '-DEMBER_MULTI_NETWORK_STRIPPED=1' '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1' '-DSL_ZIGBEE_STACK_COMPLIANCE_REVISION=22' -I"E:\SiliconLabs\ncp-uart-hw_XG24\config" -I"E:\SiliconLabs\ncp-uart-hw_XG24\autogen" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\Device\SiliconLabs\EFR32MG24\Include" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\common\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\hardware\board\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\bootloader" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\bootloader\api" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\CMSIS\Core\Include" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\hardware\driver\configuration_over_swo\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\driver\debug\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\device_init\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\emdrv\dmadrv\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\emdrv\common\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\emlib\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\hfxo_manager\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\iostream\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\legacy_common_ash\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\legacy_hal\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\legacy_hal_wdog\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\legacy_ncp_ash\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\legacy_printf\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\security\sl_component\sl_mbedtls_support\config" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\security\sl_component\sl_mbedtls_support\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\third_party\mbedtls\include" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\third_party\mbedtls\library" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\emdrv\nvm3\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\peripheral\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\power_manager\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\third_party\printf" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\third_party\printf\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\security\sl_component\sl_psa_driver\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\common" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\protocol\ble" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\protocol\ieee802154" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\protocol\wmbus" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\protocol\zwave" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\chip\efr32\efr32xg2x" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\protocol\sidewalk" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\plugin\rail_util_built_in_phys\efr32xg24" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\plugin\rail_util_ieee802154" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\plugin\pa-conversions" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\plugin\pa-conversions\efr32xg24" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\plugin\rail_util_power_manager_init" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\plugin\rail_util_pti" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\security\sl_component\se_manager\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\security\sl_component\se_manager\src" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\plugin\security_manager" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\third_party\segger\systemview\SEGGER" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\silicon_labs\silabs_core\memory_manager" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\common\toolchain\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\system\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\sleeptimer\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\token_manager\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\service\udelay\inc" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\app\framework\common" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\framework" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\app\framework\plugin\debug-print" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\include" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\gp" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\app\em260" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\app\xncp" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\app\util\ezsp" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\app\framework\util" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\app\util\security" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\security" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\zigbee" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\rail_lib\plugin" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\mac\rail_mux" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\platform\radio\mac" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\util\silicon_labs\silabs_core" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\core" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\mac" -I"E:\SiliconLabs\ncp-uart-hw_XG24\gecko_sdk_4.4.3\protocol\zigbee\stack\zll" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -Wno-unused-parameter -Wno-missing-field-initializers -Wno-missing-braces -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



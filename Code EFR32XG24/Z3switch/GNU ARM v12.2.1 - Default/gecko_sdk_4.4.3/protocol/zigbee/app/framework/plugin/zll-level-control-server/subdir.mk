################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/SiliconLabs/SDKs2/gecko_sdk/protocol/zigbee/app/framework/plugin/zll-level-control-server/zll-level-control-server.c 

OBJS += \
./gecko_sdk_4.4.3/protocol/zigbee/app/framework/plugin/zll-level-control-server/zll-level-control-server.o 

C_DEPS += \
./gecko_sdk_4.4.3/protocol/zigbee/app/framework/plugin/zll-level-control-server/zll-level-control-server.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.3/protocol/zigbee/app/framework/plugin/zll-level-control-server/zll-level-control-server.o: E:/SiliconLabs/SDKs2/gecko_sdk/protocol/zigbee/app/framework/plugin/zll-level-control-server/zll-level-control-server.c gecko_sdk_4.4.3/protocol/zigbee/app/framework/plugin/zll-level-control-server/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B310F1536IM48=1' '-DSL_APP_PROPERTIES=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2601B"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCORTEXM3=1' '-DCORTEXM3_EFM32_MICRO=1' '-DCORTEXM3_EFR32=1' '-DPHY_RAIL=1' '-DPLATFORM_HEADER="platform-header.h"' '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' '-DUSE_NVM3=1' '-DUC_BUILD=1' '-DEMBER_MULTI_NETWORK_STRIPPED=1' '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1' '-DSL_ZIGBEE_STACK_COMPLIANCE_REVISION=22' '-DCONFIGURATION_HEADER="app/framework/util/config.h"' -I"E:\SiliconLabs\project\Z3switch\config" -I"E:\SiliconLabs\project\Z3switch\config\zcl" -I"E:\SiliconLabs\project\Z3switch\autogen" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/board/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/bootloader/api" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/driver/button/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/cli/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/cli/src" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/CMSIS/Core/Include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/driver/debug/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/device_init/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emdrv/dmadrv/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emdrv/common/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emlib/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/hfxo_manager/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/iostream/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/driver/leddrv/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/legacy_hal/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/legacy_hal_wdog/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/legacy_printf/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/mbedtls/include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/mbedtls/library" -I"E:/SiliconLabs/SDKs2/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/emdrv/nvm3/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/peripheral/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/power_manager/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/printf" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/third_party/printf/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/common" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/protocol/wmbus" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/protocol/sidewalk" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_built_in_phys/efr32xg24" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_ieee802154" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg24" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_power_manager_init" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_pti" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/se_manager/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/security/sl_component/se_manager/src" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/plugin/security_manager" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/common/toolchain/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/system/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/sleeptimer/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/token_manager/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/service/udelay/inc" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/common" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/basic" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/util/serial" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/service-function" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/color-control-server" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/counters" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/debug-print" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/find-and-bind-target" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack/include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack/gp" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/green-power-client" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/green-power-common" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/groups-server" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/identify" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/interpan" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/level-control" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/network-creator" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/network-creator-security" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/network-steering" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/on-off" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/reporting" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/scan-dispatch" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/scenes" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack/security" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/signature-decode" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/rail_lib/plugin" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack/zigbee" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/mac/rail_mux" -I"E:/SiliconLabs/SDKs2/gecko_sdk//platform/radio/mac" -I"E:/SiliconLabs/SDKs2/gecko_sdk//util/silicon_labs/silabs_core" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack/core" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack/mac" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/em260" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/update-tc-link-key" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/include" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/util" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/security" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/util/zigbee-framework" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/util/counters" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/cli" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/util/common" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/util/security" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/stack/zll" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/zll-commissioning-common" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/zll-commissioning-server" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/zll-level-control-server" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/zll-on-off-server" -I"E:/SiliconLabs/SDKs2/gecko_sdk//protocol/zigbee/app/framework/plugin/zll-scenes-server" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -Wno-unused-parameter -Wno-missing-field-initializers -Wno-missing-braces -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.3/protocol/zigbee/app/framework/plugin/zll-level-control-server/zll-level-control-server.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



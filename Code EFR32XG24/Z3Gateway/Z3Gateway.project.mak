####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = E:/SiliconLabs/SDKs2/gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.4.3

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iautogen \
 -Iconfig \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/host/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning \
 -I$(COPIED_SDK_PATH)/. \
 -I$(COPIED_SDK_PATH)/protocol/zigbee \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/include \
 -I$(COPIED_SDK_PATH)/platform/radio/mac \
 -I$(COPIED_SDK_PATH)/platform/service/token_manager/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_host/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/config \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-simple \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/xncp-test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

GROUP_START =
GROUP_END =

PROJECT_LIBS = \
 -lpthread \
 -lc \
 -lm

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

CXX_FLAGS += \
 -std=c++11 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

ASM_FLAGS += \

LD_FLAGS += \


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o: autogen/sl_cluster_service_gen.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cluster_service_gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cluster_service_gen.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/autogen/zap-cli.o: autogen/zap-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cli.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cli.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cli.o

$(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o: autogen/zap-cluster-command-parser.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cluster-command-parser.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cluster-command-parser.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o

$(OUTPUT_DIR)/project/autogen/zap-event.o: autogen/zap-event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-event.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o: autogen/zigbee_host_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_host_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_host_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o: autogen/zigbee_zcl_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_zcl_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_zcl_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA
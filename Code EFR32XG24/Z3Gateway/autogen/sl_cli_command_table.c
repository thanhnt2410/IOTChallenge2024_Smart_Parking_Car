/***************************************************************************//**
 * @file sl_cli_command_table.c
 * @brief Declarations of relevant command structs for cli framework.
 * @version x.y.z
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/

#include <stdlib.h>

#include "sl_cli_config.h"
#include "sl_cli_command.h"
#include "sl_cli_arguments.h"

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
 *****************************   TEMPLATED FILE   ******************************
 ******************************************************************************/

/*******************************************************************************
 * Example syntax (.slcc or .slcp) for populating this file:
 *
 *   template_contribution:
 *     - name: cli_command          # Register a command
 *       value:
 *         name: status             # Name of command
 *         handler: status_command  # Function to be called. Must be defined
 *         help: "Prints status"    # Optional help description
 *         shortcuts:               # Optional shorcut list
 *           - name: st
 *         argument:                # Argument list, if apliccable
 *           - type: uint8          # Variable type
 *             help: "Channel"      # Optional description
 *           - type: string
 *             help: "Text"
 *     - name: cli_group            # Register a group
 *       value:
 *         name: shell              # Group name
 *         help: "Shell commands"   # Optional help description
 *         shortcuts:               # Optional shorcuts
 *           - name: sh
 *     - name: cli_command
 *       value:
 *         name: repeat
 *         handler: repeat_cmd
 *         help: "Repeat commands"
 *         shortcuts:
 *           - name: r
 *           - name: rep
 *         group: shell            # Associate command with group
 *         argument:
 *           - type: string
 *             help: "Text"
 *           - type: additional
 *             help: "More text"
 *
 * For subgroups, an optional unique id can be used to allow a particular name to
 * be used more than once. In the following case, from the command line the
 * following commands are available:
 *
 * >  root_1 shell status
 * >  root_2 shell status
 *
 *     - name: cli_group            # Register a group
 *       value:
 *         name: root_1             # Group name
 *
 *     - name: cli_group            # Register a group
 *       value:
 *         name: root_2             # Group name
 *
 *    - name: cli_group             # Register a group
 *       value:
 *         name: shell              # Group name
 *         id: shell_root_1         # Optional unique id for group
 *         group: root_1            # Add group to root_1 group
 *
 *    - name: cli_group             # Register a group
 *       value:
 *         name: shell              # Group name
 *         id: shell_root_2         # Optional unique id for group
 *         group: root_2            # Add group to root_1 group
 *
 *    - name: cli_command           # Register a command
 *       value:
 *         name: status
 *         handler: status_1
 *         group: shell_root_1      # id of subgroup
 *
 *    - name: cli_command           # Register a command
 *       value:
 *         name: status
 *         handler: status_2
 *         group: shell_root_2      # id of subgroup
 *
 ******************************************************************************/

// Provide function declarations
void emberAfPluginAddressTableAddCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginAddressTableSetCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginAddressTableRemoveCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginAddressTableLookupCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginAddressTablePrintCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginConcentratorStatus(sl_cli_command_arg_t *arguments);
void emberAfPluginConcentratorStartDiscoveryCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginConcentratorStopDiscoveryCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginConcentratorAggregationCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginConcentratorPrintSourceRouteTable(sl_cli_command_arg_t *arguments);
void emberAfPluginConcentratorSetRouterBehaviorCommand(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_cli_info_command(sl_cli_command_arg_t *arguments);
void printAllLibraryStatus(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_cli_bsend_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_cli_send_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_zcl_read_cli_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_zcl_write_cli_command(sl_cli_command_arg_t *arguments);
void resetCommand(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_cli_raw_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_cli_send_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_cli_send_using_multicast_binding_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_cli_timesync_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_cli_config_cca_mode_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_cli_version_command(sl_cli_command_arg_t *arguments);
void endpointPrint(sl_cli_command_arg_t *arguments);
void enableDisableEndpoint(sl_cli_command_arg_t *arguments);
void enableDisableEndpoint(sl_cli_command_arg_t *arguments);
void printEvents(sl_cli_command_arg_t *arguments);
void getSetMfgToken(sl_cli_command_arg_t *arguments);
void getSetMfgToken(sl_cli_command_arg_t *arguments);
void emberAfPluginCountersPrintCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginCounterPrintCounterTypeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginCountersSimplePrintCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginCountersClear(sl_cli_command_arg_t *arguments);
void emberAfPluginCountersPrintThresholdsCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginCountersSetThresholdCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginCountersResetThresholds(sl_cli_command_arg_t *arguments);
void emberAfPluginCountersSendRequestCommand(sl_cli_command_arg_t *arguments);
void sli_zigbee_debug_print_enable_stack_type_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_debug_print_enable_core_type_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_debug_print_enable_app_type_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_debug_print_enable_zcl_type_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_debug_print_enable_legacy_af_debug_type_command(sl_cli_command_arg_t *arguments);
void emberAfPluginEzModeCommissioningClientCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginEzModeCommissioningServerCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginGatewaySupportTimeSyncLocal(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ias_zone_client_print_servers_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ias_zone_client_clear_all_servers_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_identify_cli_print(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_start_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_stop_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_tone_start_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_tone_stop_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_status_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_set_channel_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_set_power_and_mode_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_stream_start_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_stream_stop_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_send_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_send_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_send_message_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_sleep_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_program_eui_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_enable_mfglib(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_mfglib_set_options(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkCreatorStartCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkCreatorStop(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkCreatorFormCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkCreatorChannelMaskCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkCreatorChannelMaskCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkCreatorChannelMaskCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkCreatorStatusCommand(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_network_creator_security_set_joining_link_key_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_network_creator_security_clear_joining_link_key_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_network_creator_security_open_or_close_network_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_network_creator_security_open_or_close_network_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_network_creator_security_open_network_with_key_command(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_network_creator_security_configure_distributed_key(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkSteeringStatusCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkSteeringStartCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkSteeringStopCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkSteeringSetPreconfiguredKeyCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkSteeringChannelSetCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkSteeringChannelAddOrSubtractCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginNetworkSteeringChannelAddOrSubtractCommand(sl_cli_command_arg_t *arguments);
void otaImageNotifyCommand(sl_cli_command_arg_t *arguments);
void otaSendUpgradeCommand(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ota_server_policy_print(sl_cli_command_arg_t *arguments);
void setPolicy(sl_cli_command_arg_t *arguments);
void setPolicy(sl_cli_command_arg_t *arguments);
void setPolicy(sl_cli_command_arg_t *arguments);
void setPolicy(sl_cli_command_arg_t *arguments);
void setPolicy(sl_cli_command_arg_t *arguments);
void setPolicy(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ota_print_all_images(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ota_image_delete(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ota_reload_storage_device(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ota_storage_info_print(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_ota_storage_data_print(sl_cli_command_arg_t *arguments);
void mode(sl_cli_command_arg_t *arguments);
void timeout(sl_cli_command_arg_t *arguments);
void respond(sl_cli_command_arg_t *arguments);
void print(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_reporting_cli_print(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_reporting_cli_clear(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_reporting_cli_remove(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_reporting_cli_add(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_reporting_cli_clear_last_report_time(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_reporting_cli_test_timing(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_simple_metering_client_cli_sch_snapshot(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_simple_metering_client_cli_start_sampling(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_simple_metering_client_cli_get_sampled_data(sl_cli_command_arg_t *arguments);
void sli_zigbee_af_simple_metering_client_cli_local_change_supply(sl_cli_command_arg_t *arguments);
void printInfo(sl_cli_command_arg_t *arguments);
void printChildTable(sl_cli_command_arg_t *arguments);
void printNeighborTable(sl_cli_command_arg_t *arguments);
void printRouteTable(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessStatusCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetApsSecurityForClusterCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetApsSecurityForClusterCommand(sl_cli_command_arg_t *arguments);
void setOptionsCommand(sl_cli_command_arg_t *arguments);
void setDestinationCommand(sl_cli_command_arg_t *arguments);
void startTestCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetRegistrationCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetRegistrationCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetModeCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessCertMangleCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessCertMangleCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessCertMangleCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessCertMangleCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessCertMangleCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSelectSuiteCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentSetAvailableSuiteCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyEstablishmentKeyMangleCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessPriceSendNewFieldsCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessPriceSendNewFieldsCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessTcKeepaliveSendCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessTcKeepaliveStartStopCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessTcKeepaliveStartStopCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessOtaImageMangleCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessConcentratorStartStopCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessConcentratorStartStopCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyUpdateCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyUpdateCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessKeyUpdateCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessLimitBeaconsOnOffCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessLimitBeaconsOnOffCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessEnableDisableEndpointCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessEnableDisableEndpointCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessEndpointStatusCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessClusterEndpointIndexCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessRadioOnOffCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessRadioOnOffCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetRadioPower(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessAddChildCommand(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetNodeDescriptorComplianceRevision(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetMaxChildren(sl_cli_command_arg_t *arguments);
void emberAfPluginTestHarnessSetNeighborTableSize(sl_cli_command_arg_t *arguments);
void sl_zigbee_suppress_cluster(sl_cli_command_arg_t *arguments);
void sl_zigbee_suppress_command(sl_cli_command_arg_t *arguments);
void sl_zigbee_print_suppression_table(sl_cli_command_arg_t *arguments);
void emberAfPluginSetTCLinkKeyUpdateTimerCommand(sl_cli_command_arg_t *arguments);
void networkFormCommand(sl_cli_command_arg_t *arguments);
void networkJoinCommand(sl_cli_command_arg_t *arguments);
void networkPermitJoinCommand(sl_cli_command_arg_t *arguments);
void networkLeaveCommand(sl_cli_command_arg_t *arguments);
void networkRejoinCommand(sl_cli_command_arg_t *arguments);
void networkRejoinDiffDeviceTypeCommand(sl_cli_command_arg_t *arguments);
void networkExtendedPanIdCommand(sl_cli_command_arg_t *arguments);
void networkCheckPjoinCommand(sl_cli_command_arg_t *arguments);
void networkPermitJoinCommand(sl_cli_command_arg_t *arguments);
void findJoinableNetworkCommand(sl_cli_command_arg_t *arguments);
void findUnusedPanIdCommand(sl_cli_command_arg_t *arguments);
void networkChangeChannelCommand(sl_cli_command_arg_t *arguments);
void networkSetCommand(sl_cli_command_arg_t *arguments);
void networkInitCommand(sl_cli_command_arg_t *arguments);
void networkIdCommand(sl_cli_command_arg_t *arguments);
void changeKeepAliveModeCommand(sl_cli_command_arg_t *arguments);
void networkChangeChildTimeoutOptionMaskCommand(sl_cli_command_arg_t *arguments);
void networkMultiPhyStartCommand(sl_cli_command_arg_t *arguments);
void networkMultiPhyStopCommand(sl_cli_command_arg_t *arguments);
void keysPrintCommand(sl_cli_command_arg_t *arguments);
void keysDeleteCommand(sl_cli_command_arg_t *arguments);
void keysClearCommand(sl_cli_command_arg_t *arguments);
void optionBindingTablePrintCommand(sl_cli_command_arg_t *arguments);
void optionBindingTableClearCommand(sl_cli_command_arg_t *arguments);
void optionBindingTableSetCommand(sl_cli_command_arg_t *arguments);
void optionPrintRxCommand(sl_cli_command_arg_t *arguments);
void optionPrintRxCommand(sl_cli_command_arg_t *arguments);
void optionRegisterCommand(sl_cli_command_arg_t *arguments);
void optionDiscoveryTargetCommand(sl_cli_command_arg_t *arguments);
void optionDiscoverCommand(sl_cli_command_arg_t *arguments);
void optionApsRetryCommand(sl_cli_command_arg_t *arguments);
void optionApsRetryCommand(sl_cli_command_arg_t *arguments);
void optionApsRetryCommand(sl_cli_command_arg_t *arguments);
void optionApsSecurityCommand(sl_cli_command_arg_t *arguments);
void optionApsSecurityCommand(sl_cli_command_arg_t *arguments);
void optionSecurityAllowTrustCenterRejoinUsingWellKnownKey(sl_cli_command_arg_t *arguments);
void optionSecurityAllowTrustCenterRejoinUsingWellKnownKeyTimeout(sl_cli_command_arg_t *arguments);
void optionSecuritySetKeyRequestPolicy(sl_cli_command_arg_t *arguments);
void changeKeyCommand(sl_cli_command_arg_t *arguments);
void changeKeyCommand(sl_cli_command_arg_t *arguments);
void optionLinkCommand(sl_cli_command_arg_t *arguments);
void optionInstallCodeCommand(sl_cli_command_arg_t *arguments);
void zdoRouteRequestCommand(sl_cli_command_arg_t *arguments);
void zdoPowerDescriptorRequestCommand(sl_cli_command_arg_t *arguments);
void zdoMgmtLqiCommand(sl_cli_command_arg_t *arguments);
void zdoMgmtBindCommand(sl_cli_command_arg_t *arguments);
void zdoLeaveRequestCommand(sl_cli_command_arg_t *arguments);
void zdoUnbindGroupCommand(sl_cli_command_arg_t *arguments);
void zdoUnbindUnicastCommand(sl_cli_command_arg_t *arguments);
void zdoActiveEpCommand(sl_cli_command_arg_t *arguments);
void zdoBindCommand(sl_cli_command_arg_t *arguments);
void zdoNodeCommand(sl_cli_command_arg_t *arguments);
void zdoMatchCommand(sl_cli_command_arg_t *arguments);
void zdoSimpleCommand(sl_cli_command_arg_t *arguments);
void zdoIeeeAddressRequestCommand(sl_cli_command_arg_t *arguments);
void zdoNwkAddressRequestCommand(sl_cli_command_arg_t *arguments);
void zdoNetworkUpdateScanCommand(sl_cli_command_arg_t *arguments);
void zdoNetworkUpdateSetCommand(sl_cli_command_arg_t *arguments);
void zdoNetworkUpdateScanCommand(sl_cli_command_arg_t *arguments);
void zdoNetworkUpdateChannelCommand(sl_cli_command_arg_t *arguments);
void zdoNetworkUpdateChannelCommand(sl_cli_command_arg_t *arguments);
void zdoAddClusterCommand(sl_cli_command_arg_t *arguments);
void zdoClearClusterCommand(sl_cli_command_arg_t *arguments);
void zdoAddClusterCommand(sl_cli_command_arg_t *arguments);
void zdoClearClusterCommand(sl_cli_command_arg_t *arguments);
void emberAfPrintAttributeTable(sl_cli_command_arg_t *arguments);
void printTimeCommand(sl_cli_command_arg_t *arguments);
void mfgappTokenDump(sl_cli_command_arg_t *arguments);
void changeNwkKeyCommand(sl_cli_command_arg_t *arguments);
void printNextKeyCommand(sl_cli_command_arg_t *arguments);
void versionCommand(sl_cli_command_arg_t *arguments);
void setTxPowerCommand(sl_cli_command_arg_t *arguments);

// Command structs. Names are in the format : cli_cmd_{command group name}_{command name}
// In order to support hyphen in command and group name, every occurence of it while
// building struct names will be replaced by "_hyphen_"
static const sl_cli_command_info_t cli_cmd_address_hyphen_table_add = \
  SL_CLI_COMMAND(emberAfPluginAddressTableAddCommand,
                 "",
                  "Entry to be added" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_address_hyphen_table_set = \
  SL_CLI_COMMAND(emberAfPluginAddressTableSetCommand,
                 "Sets an entry in the address table according to the arguments specified.",
                  "" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_HEX, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_address_hyphen_table_remove = \
  SL_CLI_COMMAND(emberAfPluginAddressTableRemoveCommand,
                 "Removes an entry from the address table.",
                  "Entry to be removed" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_address_hyphen_table_lookup = \
  SL_CLI_COMMAND(emberAfPluginAddressTableLookupCommand,
                 "Looks up an entry in the address table.",
                  "Entry to be looked up" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_address_hyphen_table_print = \
  SL_CLI_COMMAND(emberAfPluginAddressTablePrintCommand,
                 "Prints the address table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_concentrator_status = \
  SL_CLI_COMMAND(emberAfPluginConcentratorStatus,
                 "Prints current status and configured parameters of the concentrator.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_concentrator_start = \
  SL_CLI_COMMAND(emberAfPluginConcentratorStartDiscoveryCommand,
                 "Starts the periodic broadcast of MTORRs.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_concentrator_stop = \
  SL_CLI_COMMAND(emberAfPluginConcentratorStopDiscoveryCommand,
                 "Stops the periodic broadcast of MTORRs.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_concentrator_agg = \
  SL_CLI_COMMAND(emberAfPluginConcentratorAggregationCommand,
                 "(Requires Concentrator Support to be enabled on this device.) Schedules a Zigbee PRO Many-To-One Route Request (MTORR) to be sent out at the next opportunity, which will cause aggregation (many-to-one) routes to be created towards this concentrator.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_concentrator_print_hyphen_table = \
  SL_CLI_COMMAND(emberAfPluginConcentratorPrintSourceRouteTable,
                 "Prints the SoC/NCP source route table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_concentrator_set_hyphen_router_hyphen_behavior = \
  SL_CLI_COMMAND(emberAfPluginConcentratorSetRouterBehaviorCommand,
                 "This command allows the user to set the router behavior for this component. The argument values come from concentrator-support.h in the enum with members starting with EMBER_AF_PLUGIN_CONCENTRATOR_ROUTER_BEHAVIOR_.",
                  "The value of an EMBER_AF_PLUGIN_CONCENTRATOR_ROUTER_BEHAVIOR_ enum member" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__info = \
  SL_CLI_COMMAND(sli_zigbee_af_cli_info_command,
                 "Prints information about the network state, clusters, and endpoints.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__libs = \
  SL_CLI_COMMAND(printAllLibraryStatus,
                 "Lists which optional libraries of the stack are implemented on this device.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__bsend = \
  SL_CLI_COMMAND(sli_zigbee_af_cli_bsend_command,
                 "Sends a message.",
                  "Source endpoint" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__send = \
  SL_CLI_COMMAND(sli_zigbee_cli_send_command,
                 "Sends a message.",
                  "Destination" SL_CLI_UNIT_SEPARATOR "Source endpoint" SL_CLI_UNIT_SEPARATOR "Destination endpoint" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__read = \
  SL_CLI_COMMAND(sli_zigbee_zcl_read_cli_command,
                 "Reads a message.",
                  "Endpoint" SL_CLI_UNIT_SEPARATOR "Cluster ID" SL_CLI_UNIT_SEPARATOR "Attribute ID" SL_CLI_UNIT_SEPARATOR "1 if server direction, 0 if client direction" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__write = \
  SL_CLI_COMMAND(sli_zigbee_zcl_write_cli_command,
                 "Writes a message.",
                  "Endpoint" SL_CLI_UNIT_SEPARATOR "Cluster ID" SL_CLI_UNIT_SEPARATOR "Attribute ID" SL_CLI_UNIT_SEPARATOR "Mask" SL_CLI_UNIT_SEPARATOR "Data type" SL_CLI_UNIT_SEPARATOR "Data byte" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__reset = \
  SL_CLI_COMMAND(resetCommand,
                 "Resets the node.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__raw = \
  SL_CLI_COMMAND(sli_zigbee_af_cli_raw_command,
                 "Creates a message by specifying the raw bytes. Use the send command to send the message once it has been created. Ex: raw 0x000F {00 0A 00 11 22 33 44 55} sends a message to cluster 15 (0x000F) of length 8 which includes the ZCL header.",
                  "ClusterId" SL_CLI_UNIT_SEPARATOR "Data" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__send_multicast = \
  SL_CLI_COMMAND(sli_zigbee_cli_send_command,
                 "Sends a pre-buffered multicast message to a given group ID from a given endpoint.",
                  "groupId" SL_CLI_UNIT_SEPARATOR "src-endpoint" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__send_hyphen_using_hyphen_multicast_hyphen_binding = \
  SL_CLI_COMMAND(sli_zigbee_af_cli_send_using_multicast_binding_command,
                 "When sending using a binding, specifies whether a multicast binding should be used.",
                  "useMulticastBinding" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__timesync = \
  SL_CLI_COMMAND(sli_zigbee_af_cli_timesync_command,
                 "Sends a read attr for the time of the device specified. It sets a flag so when it gets the response it writes the time to its own time attr.",
                  "Id" SL_CLI_UNIT_SEPARATOR "srcEndpoint" SL_CLI_UNIT_SEPARATOR "destEndpoint" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__config_hyphen_cca_hyphen_mode = \
  SL_CLI_COMMAND(sli_zigbee_cli_config_cca_mode_command,
                 "Set the configured 802.15.4 CCA mode in the radio. See documentation regarding RAIL_IEEE802154_CcaMode_t.",
                  "A RAIL_IEEE802154_CcaMode_t value" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__version = \
  SL_CLI_COMMAND(sli_zigbee_cli_version_command,
                 "Shows the version of the software.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_endpoints_print = \
  SL_CLI_COMMAND(endpointPrint,
                 "Print status of endpoints.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_endpoints_enable = \
  SL_CLI_COMMAND(enableDisableEndpoint,
                 "Enables the endpoint for ZCL messages.",
                  "Endpoint index" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_endpoints_disable = \
  SL_CLI_COMMAND(enableDisableEndpoint,
                 "Disable the endpoint for ZCL messages.",
                  "Endpoint index" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd__events = \
  SL_CLI_COMMAND(printEvents,
                 "Print active events.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfg_hyphen_token_get = \
  SL_CLI_COMMAND(getSetMfgToken,
                 "Print MFG token.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfg_hyphen_token_set = \
  SL_CLI_COMMAND(getSetMfgToken,
                 "Set MFG token, CANNOT BE UNSET BY CLI.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_print = \
  SL_CLI_COMMAND(emberAfPluginCountersPrintCommand,
                 "Prints all counter values and clears them.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_print_hyphen_counter_hyphen_type = \
  SL_CLI_COMMAND(emberAfPluginCounterPrintCounterTypeCommand,
                 "Prints the value of this particular counter.",
                  "The counter type to print" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_simple_hyphen_print = \
  SL_CLI_COMMAND(emberAfPluginCountersSimplePrintCommand,
                 "Prints all counter values.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_clear = \
  SL_CLI_COMMAND(emberAfPluginCountersClear,
                 "Clears all counter values.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_print_hyphen_thresholds = \
  SL_CLI_COMMAND(emberAfPluginCountersPrintThresholdsCommand,
                 "Prints the thresholds of all the counters.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_set_hyphen_threshold = \
  SL_CLI_COMMAND(emberAfPluginCountersSetThresholdCommand,
                 "Sets a threshold value for a particular type of counter.",
                  "Type of counter" SL_CLI_UNIT_SEPARATOR "Threshold Value" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_reset_hyphen_thresholds = \
  SL_CLI_COMMAND(emberAfPluginCountersResetThresholds,
                 "Resets all thresholds values to 0xFFFF.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_counters_send_hyphen_request = \
  SL_CLI_COMMAND(emberAfPluginCountersSendRequestCommand,
                 "Sends a request for OTA counters.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_enable_type_stack = \
  SL_CLI_COMMAND(sli_zigbee_debug_print_enable_stack_type_command,
                 "Enable/disable debug `stack` print type.",
                  "Enable/disable" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_enable_type_core = \
  SL_CLI_COMMAND(sli_zigbee_debug_print_enable_core_type_command,
                 "Enable/disable debug `core` print type.",
                  "Enable/disable" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_enable_type_app = \
  SL_CLI_COMMAND(sli_zigbee_debug_print_enable_app_type_command,
                 "Enable/disable debug `app` print type.",
                  "Enable/disable" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_enable_type_zcl = \
  SL_CLI_COMMAND(sli_zigbee_debug_print_enable_zcl_type_command,
                 "Enable/disable debug `zcl` print type.",
                  "Enable/disable" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_enable_type_legacy_af_debug = \
  SL_CLI_COMMAND(sli_zigbee_debug_print_enable_legacy_af_debug_type_command,
                 "Enable/disable debug `legacy app framework debug` print type.",
                  "Enable/disable" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ezmode_hyphen_commissioning_client = \
  SL_CLI_COMMAND(emberAfPluginEzModeCommissioningClientCommand,
                 "Starts EZ-Mode client commissioning.",
                  "The local endpoint" SL_CLI_UNIT_SEPARATOR "EMBER_AF_EZMODE_COMMISSIONING_SERVER_TO_CLIENT or EMBER_AF_EZMODE_COMMISSIONING_CLIENT_TO_SERVER" SL_CLI_UNIT_SEPARATOR "A list of cluster IDs" SL_CLI_UNIT_SEPARATOR "Array type argument" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_ADDITIONAL, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ezmode_hyphen_commissioning_server = \
  SL_CLI_COMMAND(emberAfPluginEzModeCommissioningServerCommand,
                 "Starts EZ-Mode server commissioning.",
                  "The local endpoint" SL_CLI_UNIT_SEPARATOR "The identify time in seconds" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_gateway_time_hyphen_sync_hyphen_local = \
  SL_CLI_COMMAND(emberAfPluginGatewaySupportTimeSyncLocal,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ias_hyphen_zone_hyphen_client_print_hyphen_servers = \
  SL_CLI_COMMAND(sli_zigbee_af_ias_zone_client_print_servers_command,
                 "Prints the known IAS Zone Servers.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ias_hyphen_zone_hyphen_client_clear_hyphen_all = \
  SL_CLI_COMMAND(sli_zigbee_af_ias_zone_client_clear_all_servers_command,
                 "Clears all known IAS Zone Servers from a local device.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_identify_print = \
  SL_CLI_COMMAND(sli_zigbee_af_identify_cli_print,
                 "Print which endpoints are reporting.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_start = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_start_command,
                 "Start the mfglib test mode.",
                  "Use the Rx callback." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_stop = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_stop_command,
                 "Stop the mfglib test mode.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_tone_start = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_tone_start_command,
                 "Starts a tone test.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_tone_stop = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_tone_stop_command,
                 "Stops the tone test.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_status = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_status_command,
                 "Prints the current status of the manufacturing library.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_set_hyphen_channel = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_set_channel_command,
                 "Sets the channel used by the manufacturing library for testing.",
                  "The 802.15.4 channel number." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_set_hyphen_power = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_set_power_and_mode_command,
                 "Set the power level and mode for the manufacturing test.",
                  "The power level" SL_CLI_UNIT_SEPARATOR "The power mode" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_stream_start = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_stream_start_command,
                 "Start the stream test.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_stream_stop = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_stream_stop_command,
                 "Stop the stream test.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_send_random = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_send_command,
                 "Send a series of test packets with random data..",
                  "The number of packets to send." SL_CLI_UNIT_SEPARATOR "The length of the packet to send." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_send_test = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_send_command,
                 "Send a series of test packets with fixed data.",
                  "The number of packets to send." SL_CLI_UNIT_SEPARATOR "The length of the packet to send." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_send_message = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_send_message_command,
                 "Send a test message with the specified data in it.",
                  "The hex data to send, up to 16 bytes." SL_CLI_UNIT_SEPARATOR "The number of packets to send." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_sleep = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_sleep_command,
                 "Sleep.",
                  "Sleep duration (mS)." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_programEui = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_program_eui_command,
                 "Program EUI.",
                  "IEEE address to program." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_mfgenable = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_enable_mfglib,
                 "Enable mfglib.",
                  "1 = enable, 0 = disable." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mfglib_set_hyphen_options = \
  SL_CLI_COMMAND(sli_zigbee_af_mfglib_set_options,
                 "Sets options in the manufacturing library for testing.",
                  "The options bitmask (0 = normal transmit, 1 = CSMA transmit)." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_start = \
  SL_CLI_COMMAND(emberAfPluginNetworkCreatorStartCommand,
                 "Starts the network formation process.",
                  "Whether or not to form a centralized network. If this value is false, the device will attempt to join a distributed network." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_stop = \
  SL_CLI_COMMAND(emberAfPluginNetworkCreatorStop,
                 "Stops the network formation process.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_form = \
  SL_CLI_COMMAND(emberAfPluginNetworkCreatorFormCommand,
                 "Forms a network with specified parameters.",
                  "Whether or not to form a centralized network. If this value is false, the device will attempt to join a distributed network." SL_CLI_UNIT_SEPARATOR "PanID of the network to be formed" SL_CLI_UNIT_SEPARATOR "Tx power of the network to be formed" SL_CLI_UNIT_SEPARATOR "Channel of the network to be formed" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_INT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mask_add = \
  SL_CLI_COMMAND(emberAfPluginNetworkCreatorChannelMaskCommand,
                 "Adds a channel to the channel mask of choice.",
                  "The mask to which to add the channel. 1 chooses the primary channel mask, any other argument chooses the secondary channel mask." SL_CLI_UNIT_SEPARATOR "The channel to add to the channel mask" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mask_subtract = \
  SL_CLI_COMMAND(emberAfPluginNetworkCreatorChannelMaskCommand,
                 "Subtracts a channel from the channel mask of choice.",
                  "The mask from which to subtract the channel. 1 chooses the primary channel mask. Any other argument chooses the secondary channel mask." SL_CLI_UNIT_SEPARATOR "The channel to subtract from the channel mask" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_mask_set = \
  SL_CLI_COMMAND(emberAfPluginNetworkCreatorChannelMaskCommand,
                 "Sets a channel mask.",
                  "The mask  to set. 1 chooses the primary channel mask. Any other argument chooses the secondary channel mask." SL_CLI_UNIT_SEPARATOR "The bit mask to which to set the chosen channel mask." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_status = \
  SL_CLI_COMMAND(emberAfPluginNetworkCreatorStatusCommand,
                 "Prints the status of the network-creator component.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_hyphen_security_set_hyphen_joining_hyphen_link_hyphen_key = \
  SL_CLI_COMMAND(sli_zigbee_af_network_creator_security_set_joining_link_key_command,
                 "Sets the link key that a specific joining device will use when joining the network. This command can be also be used to add install code-derived link keys. If all FFs are entered for the EUI64 for the joining device, then this link key will be used for all joining devices without a joining key entry.",
                  "The EUI64 of the joining device" SL_CLI_UNIT_SEPARATOR "The link key that the joining device will use to enter the network" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_hyphen_security_clear_hyphen_joining_hyphen_link_hyphen_keys = \
  SL_CLI_COMMAND(sli_zigbee_af_network_creator_security_clear_joining_link_key_command,
                 "Clears all of the joining link keys stored in the stack.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_hyphen_security_open_hyphen_network = \
  SL_CLI_COMMAND(sli_zigbee_af_network_creator_security_open_or_close_network_command,
                 "Opens the network for joining.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_hyphen_security_close_hyphen_network = \
  SL_CLI_COMMAND(sli_zigbee_af_network_creator_security_open_or_close_network_command,
                 "Closes the network for joining.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_hyphen_security_open_hyphen_with_hyphen_key = \
  SL_CLI_COMMAND(sli_zigbee_af_network_creator_security_open_network_with_key_command,
                 "Opens the network that would only allow the node with the specified EUI and link key pair to join.",
                  "The EUI64 of the joining device" SL_CLI_UNIT_SEPARATOR "The link key that the joining device will use to enter the network" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_creator_hyphen_security_set_hyphen_distributed_hyphen_key = \
  SL_CLI_COMMAND(sli_zigbee_af_network_creator_security_configure_distributed_key,
                 "Sets the TC Link key for a distributed network.",
                  "The pre-configured distributed key that the joining device will use to enter the network" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_steering_status = \
  SL_CLI_COMMAND(emberAfPluginNetworkSteeringStatusCommand,
                 "Displays the current status of the network steering process.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_steering_start = \
  SL_CLI_COMMAND(emberAfPluginNetworkSteeringStartCommand,
                 "Starts the network steering process.",
                  "A mask of options for indicating specific behavior within the network-steering process." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_steering_stop = \
  SL_CLI_COMMAND(emberAfPluginNetworkSteeringStopCommand,
                 "Stops the network steering process.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_hyphen_steering_pre_hyphen_configured_hyphen_key_hyphen_set = \
  SL_CLI_COMMAND(emberAfPluginNetworkSteeringSetPreconfiguredKeyCommand,
                 "Sets the pre-configured key so that the joining device can enter the network.",
                  "Sets the preconfigured key" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_shell_mask_1_set = \
  SL_CLI_COMMAND(emberAfPluginNetworkSteeringChannelSetCommand,
                 "Sets either the primary or secondary channel mask.",
                  "The channel mask to subtract the channel from" SL_CLI_UNIT_SEPARATOR "The value to set the channel mask to." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_shell_mask_1_add = \
  SL_CLI_COMMAND(emberAfPluginNetworkSteeringChannelAddOrSubtractCommand,
                 "Adds a channel to either the primary or secondary channel mask of the network-steering component.",
                  "The channel mask to add a channel to" SL_CLI_UNIT_SEPARATOR "The channel to add to the mask" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_shell_mask_1_subtract = \
  SL_CLI_COMMAND(emberAfPluginNetworkSteeringChannelAddOrSubtractCommand,
                 "Subtracts a channel from either the primary or secondary channel mask of the network-steering component.",
                  "The channel mask to subtract the channel from" SL_CLI_UNIT_SEPARATOR "The channel to subtract the mask from" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_hyphen_server_notify = \
  SL_CLI_COMMAND(otaImageNotifyCommand,
                 "Sends an OTA Image Notify message to the specified destination indicating a new version of an image is available for download.",
                  "The node ID (can be a broadcast address) to which this OTA Notify message should be sent" SL_CLI_UNIT_SEPARATOR "Target endpoint for the OTA Notify message (only meaningful for non-broadcast target destination)" SL_CLI_UNIT_SEPARATOR "Specifies which parameters to include in the OTA Notify cluster command payload (0 = jitter value only; 1 = jitter and manufacturer id; 2 = jitter, mfr id, and device id; 3 = jitter, mfr id, device id, and firmware version)" SL_CLI_UNIT_SEPARATOR "Corresponds to QueryJitter parameter in the OTA Upgrade cluster specification. Indicates whether the client receiving Image Notify Command should send in Query Next Image Request command or not." SL_CLI_UNIT_SEPARATOR "Manufacturer ID for the image being advertised (should match the mfr ID in the OTA files header)" SL_CLI_UNIT_SEPARATOR "Image type ID for the image being advertised (should match the image type ID from the OTA files header)" SL_CLI_UNIT_SEPARATOR "Firmware version of the image being advertised (should match the version from the OTA files header)" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_hyphen_server_upgrade = \
  SL_CLI_COMMAND(otaSendUpgradeCommand,
                 "Instructs a device to upgrade now.",
                  "Short destination to send message" SL_CLI_UNIT_SEPARATOR "Endpoint destination to send message" SL_CLI_UNIT_SEPARATOR "Manufacturer ID for the image (0xFFFF for wildcard)" SL_CLI_UNIT_SEPARATOR "Image type for the image (0xFFFF for wildcard)" SL_CLI_UNIT_SEPARATOR "File version for the image (0xFFFFFFFF for wildcard)" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_policy_print = \
  SL_CLI_COMMAND(sli_zigbee_af_ota_server_policy_print,
                 "Prints the polices used by the OTA Server Policy component.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_policy_query = \
  SL_CLI_COMMAND(setPolicy,
                 "Sets the policy used by the OTA Server Policy component when it receives a query request from the client.",
                  "0 Upgrade if server has newer (default), 1 Downgrade if server has older, 2       Reinstall if server has same, 3 No next version (no next image is available for download)" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_policy_upgrade = \
  SL_CLI_COMMAND(setPolicy,
                 "Sets the policy used by the OTA Server Policy component when it receives an upgrade end request.",
                  "0 Upgrade Now (default), 1 Upgrade in 2       minutes, 2 Ask me later to upgrade, 3 Abort Upgrade (send default response)" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_policy_page_hyphen_req_hyphen_miss = \
  SL_CLI_COMMAND(setPolicy,
                 "Sets the modulus number of blocks not to respond to. This is used in testing to simulate a device that fails to receive certain blocks from an Image Page Request message.",
                  "The block modulus number to skip sending when responding to an Image Page Request. E.g. if 2, every other block will not be sent. 0 turns the feature off." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_policy_page_hyphen_req_hyphen_sup = \
  SL_CLI_COMMAND(setPolicy,
                 "Sets whether the Page Request feature is supported or not.",
                  "1 if Page Request is supported, 0 if unsupported" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_policy_block_hyphen_request = \
  SL_CLI_COMMAND(setPolicy,
                 "Sets the policy used by the ota-server Policy component when it receives an image block request.",
                  "0 Send block (default), 1 Delay download once for 2 minutes, 2 Always abort download after first block" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_policy_image_hyphen_req_hyphen_min_hyphen_period = \
  SL_CLI_COMMAND(setPolicy,
                 "Sets the Minimum Block Period.",
                  "The minimum block period in milliseconds" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_hyphen_storage_hyphen_common_printImages = \
  SL_CLI_COMMAND(sli_zigbee_af_ota_print_all_images,
                 "Prints the images.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_hyphen_storage_hyphen_common_delete = \
  SL_CLI_COMMAND(sli_zigbee_af_ota_image_delete,
                 "Deletes the image at the specified index.",
                  "The index at which to begin deleting the image" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_hyphen_storage_hyphen_common_reload = \
  SL_CLI_COMMAND(sli_zigbee_af_ota_reload_storage_device,
                 "Reload the storage device.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_hyphen_storage_hyphen_common_storage_hyphen_info = \
  SL_CLI_COMMAND(sli_zigbee_af_ota_storage_info_print,
                 "Prints information about the storage device.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_hyphen_storage_hyphen_common_data_hyphen_print = \
  SL_CLI_COMMAND(sli_zigbee_af_ota_storage_data_print,
                 "Prints arbitrary bytes of the OTA image on disk.",
                  "The index of the image to print its data" SL_CLI_UNIT_SEPARATOR "The offset into the OTA image that will be printed" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_poll_hyphen_control_hyphen_client_mode = \
  SL_CLI_COMMAND(mode,
                 "Sets the fast polling mode.",
                  "The fast polling mode" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_poll_hyphen_control_hyphen_client_timeout = \
  SL_CLI_COMMAND(timeout,
                 "Sets the fast polling timeout.",
                  "The fast polling timeout" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_poll_hyphen_control_hyphen_client_respond = \
  SL_CLI_COMMAND(respond,
                 "Sets the response mode.",
                  "The response mode" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_poll_hyphen_control_hyphen_client_print = \
  SL_CLI_COMMAND(print,
                 "Prints the fast polling mode and timeout.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_reporting_print = \
  SL_CLI_COMMAND(sli_zigbee_af_reporting_cli_print,
                 "Prints the report table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_reporting_clear = \
  SL_CLI_COMMAND(sli_zigbee_af_reporting_cli_clear,
                 "Clears all entries from the report table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_reporting_remove = \
  SL_CLI_COMMAND(sli_zigbee_af_reporting_cli_remove,
                 "Removes an entry from the report table.",
                  "The index of the report to be removed" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_reporting_add = \
  SL_CLI_COMMAND(sli_zigbee_af_reporting_cli_add,
                 "Adds a new entry to the report table.",
                  "The local endpoint from which the attribute is reported" SL_CLI_UNIT_SEPARATOR "The cluster where the attribute is located" SL_CLI_UNIT_SEPARATOR "The ID of the attribute being reported" SL_CLI_UNIT_SEPARATOR "0 for client-side attributes or 1 for server-side attributes" SL_CLI_UNIT_SEPARATOR "The minimum reporting interval, measured in seconds." SL_CLI_UNIT_SEPARATOR "The maximum reporting interval, measured in seconds." SL_CLI_UNIT_SEPARATOR "The minimum change to the attribute that will result in a report being sent." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_reporting_clear_hyphen_last_hyphen_report_hyphen_time = \
  SL_CLI_COMMAND(sli_zigbee_af_reporting_cli_clear_last_report_time,
                 "Clears the last report time of attributes.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_reporting_test_hyphen_timing = \
  SL_CLI_COMMAND(sli_zigbee_af_reporting_cli_test_timing,
                 "FOR TESTING PURPOSES - gather timing metrics for reporting table operations.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_simple_hyphen_metering_hyphen_client_sch_hyphen_snapshot = \
  SL_CLI_COMMAND(sli_zigbee_af_simple_metering_client_cli_sch_snapshot,
                 "Schedules a snapshot.",
                  "The network address of the server to which the request will be sent" SL_CLI_UNIT_SEPARATOR "The local endpoint from which the request will be sent" SL_CLI_UNIT_SEPARATOR "The remote endpoint to which the request will be sent" SL_CLI_UNIT_SEPARATOR "The issuerId" SL_CLI_UNIT_SEPARATOR "The commandIndex" SL_CLI_UNIT_SEPARATOR "The total number of commands" SL_CLI_UNIT_SEPARATOR "The snapshot schedule Id" SL_CLI_UNIT_SEPARATOR "The start time" SL_CLI_UNIT_SEPARATOR "The snapshot schedule. 3 bytes" SL_CLI_UNIT_SEPARATOR "The snapshot Type" SL_CLI_UNIT_SEPARATOR "The snapshot schedule cause" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_UINT32, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_simple_hyphen_metering_hyphen_client_start_hyphen_sampling = \
  SL_CLI_COMMAND(sli_zigbee_af_simple_metering_client_cli_start_sampling,
                 "Sends a start sampling command to a metering server.",
                  "The network address of the server to which the request will be sent" SL_CLI_UNIT_SEPARATOR "The local endpoint from which the request will be sent" SL_CLI_UNIT_SEPARATOR "The remote endpoint to which the request will be sent" SL_CLI_UNIT_SEPARATOR "The issuerId" SL_CLI_UNIT_SEPARATOR "The time to start sampling" SL_CLI_UNIT_SEPARATOR "An 8-bit enumeration that identifies the type of data being sampled" SL_CLI_UNIT_SEPARATOR "An unsigned 16-bit field representing the interval or time in seconds between samples" SL_CLI_UNIT_SEPARATOR "A 16-bit unsigned integer that represents the number of samples to be taken" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_UINT32, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_simple_hyphen_metering_hyphen_client_get_hyphen_sampled_hyphen_data = \
  SL_CLI_COMMAND(sli_zigbee_af_simple_metering_client_cli_get_sampled_data,
                 "Sends a start sampling command to a metering server.",
                  "The network address of the server to which the request will be sent" SL_CLI_UNIT_SEPARATOR "The local endpoint from which the request will be sent" SL_CLI_UNIT_SEPARATOR "The remote endpoint to which the request will be sent" SL_CLI_UNIT_SEPARATOR "The sample ID as received in a previous startSamplingResponse" SL_CLI_UNIT_SEPARATOR "The earliest start time sampling" SL_CLI_UNIT_SEPARATOR "An 8-bit enumeration that identifies the required type of sampled data" SL_CLI_UNIT_SEPARATOR "The total number of samples" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT32, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_simple_hyphen_metering_hyphen_client_local_hyphen_change_hyphen_supply = \
  SL_CLI_COMMAND(sli_zigbee_af_simple_metering_client_cli_local_change_supply,
                 "Sends a start sampling command to a metering server.",
                  "The network address of the server to which the request will be sent" SL_CLI_UNIT_SEPARATOR "The local endpoint from which the request will be sent" SL_CLI_UNIT_SEPARATOR "The remote endpoint to which the request will be sent" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_stack_hyphen_diagnostics_info = \
  SL_CLI_COMMAND(printInfo,
                 "Prints out general information about the state of the stack.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_stack_hyphen_diagnostics_child_hyphen_table = \
  SL_CLI_COMMAND(printChildTable,
                 "Prints out the entries in the stacks child table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_stack_hyphen_diagnostics_neighbor_hyphen_table = \
  SL_CLI_COMMAND(printNeighborTable,
                 "Prints out the entries in the stacks neighbor table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_stack_hyphen_diagnostics_route_hyphen_table = \
  SL_CLI_COMMAND(printRouteTable,
                 "Prints out the entries in the stacks route table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_status = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessStatusCommand,
                 "Displays the current status of the test harness.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_aps_hyphen_sec_hyphen_for_hyphen_cluster_on = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetApsSecurityForClusterCommand,
                 "Turns on automatic APS security for the specified cluster.",
                  "The cluster ID to add APS security to automatically" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_aps_hyphen_sec_hyphen_for_hyphen_cluster_off = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetApsSecurityForClusterCommand,
                 "Turns off automatic APS security for the previously specified cluster.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_attr_options = \
  SL_CLI_COMMAND(setOptionsCommand,
                 "Sets the options for the attributes tests.",
                  "" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_attr_set_hyphen_dest = \
  SL_CLI_COMMAND(setDestinationCommand,
                 "Sets the destination for the attributes tests.",
                  "" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_attr_start_hyphen_test = \
  SL_CLI_COMMAND(startTestCommand,
                 "Starts the attributes test.",
                  "" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR "" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_INT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_registration_on = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetRegistrationCommand,
                 "Turns on automatic SE registration.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_registration_off = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetRegistrationCommand,
                 "Turns off automatic SE registration.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_normal_hyphen_mode = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Sets the key establishment mode to normal.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_no_hyphen_resources = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "All received KE requests will be responded with no resources.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_out_hyphen_of_hyphen_sequence = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Sends an out-of-sequence message.",
                  "The out-of-sequence command ID to send" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_timeout = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Artificially creates a timeout by delaying an outgoing message.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_delay_hyphen_cbke = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Changes the advertised delays by the local device for CBKE.",
                  "Set the actual delay that occurs" SL_CLI_UNIT_SEPARATOR "Sets the advertised delay sent to the partner of key establishment" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_default_hyphen_resp = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Sends a default response error message in response to initiate KE.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_new_hyphen_key_hyphen_policy = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Sets the policy of whether the TC allows new KE requests.",
                  "Allows / disallows new key establishment requests" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_reset_hyphen_aps_hyphen_fc = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Forces the local device to reset its outgoing APS FC.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_adv_hyphen_aps_hyphen_fc = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetModeCommand,
                 "Advances the local devices outgoing APS FC by 4096.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_cert_hyphen_mangle_length = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessCertMangleCommand,
                 "Mangles the length of the certificate.",
                  "The positive or negative change in length" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_cert_hyphen_mangle_issuer = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessCertMangleCommand,
                 "Changes the issuer in the certificate.",
                  "The EUI64 of the issuer (big endian)" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_cert_hyphen_mangle_corrupt = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessCertMangleCommand,
                 "Corrupts a single byte in the cert.",
                  "The index of the certificate byte to corrupt" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_cert_hyphen_mangle_change_hyphen_byte = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessCertMangleCommand,
                 "Changes a single byte in the cert.",
                  "The index of the certificate byte to change" SL_CLI_UNIT_SEPARATOR "The new value of the certificate byte" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_cert_hyphen_mangle_subject = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessCertMangleCommand,
                 "Changes the subject (EUI64) of the cert.",
                  "The EUI64 of the subject (big endian)" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_suite = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSelectSuiteCommand,
                 "Selects between the CBKE 163k1 and 283k1 suites.",
                  "Holds the type        of key establishment suite. It can be EMBER_AF_CBKE_KEY_ESTABLISHMENT_SUITE_163K1,        EMBER_AF_CBKE_KEY_ESTABLISHMENT_SUITE_283K1, or        EMBER_AF_INVALID_KEY_ESTABLISHMENT_SUITE" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_set_hyphen_available_hyphen_suite = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentSetAvailableSuiteCommand,
                 "Selects between the CBKE 163k1 and 283k1 suites.",
                  "Holds the type        of key establishment suite. It can be EMBER_AF_CBKE_KEY_ESTABLISHMENT_SUITE_163K1,        EMBER_AF_CBKE_KEY_ESTABLISHMENT_SUITE_283K1, or        EMBER_AF_INVALID_KEY_ESTABLISHMENT_SUITE" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_establishment_key_hyphen_mangle = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyEstablishmentKeyMangleCommand,
                 "Mangles the length of the ephemeral key.",
                  "The positive or negative change in length" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_price_send_hyphen_new_hyphen_fields = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessPriceSendNewFieldsCommand,
                 "Controls whether the new SE 1.1 price fields are included.",
                  "Boolean indicating whether to send new fields" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_price_send_hyphen_se10_hyphen_fields = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessPriceSendNewFieldsCommand,
                 "Controls whether the new SE 1.1 price fields are included.",
                  "Boolean indicating whether to send new fields" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_tc_hyphen_keepalive_send = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessTcKeepaliveSendCommand,
                 "Sends a Trust Center Keepalive.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_tc_hyphen_keepalive_start = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessTcKeepaliveStartStopCommand,
                 "Starts the TC keepalive state machine.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_tc_hyphen_keepalive_stop = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessTcKeepaliveStartStopCommand,
                 "Stops the TC keepalive state machine.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_ota_image_hyphen_mangle = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessOtaImageMangleCommand,
                 "Mangles the Simple Storage RAM OTA image.",
                  "The byte index into the OTA image that will be mangled" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_concentrator_hyphen_start = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessConcentratorStartStopCommand,
                 "Starts the concentrators periodic broadcasts",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_concentrator_hyphen_stop = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessConcentratorStartStopCommand,
                 "Stops the concentrators periodic broadcasts",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_update_unicast = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyUpdateCommand,
                 "Changes TC NWK key update mechanism to unicast",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_update_broadcast = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyUpdateCommand,
                 "Changes TC NWK key update mechanism to broadcast.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_key_hyphen_update_now = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessKeyUpdateCommand,
                 "Starts a TC NWK key update now.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_limit_hyphen_beacons_on = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessLimitBeaconsOnOffCommand,
                 "Enables a limit to the max number of outgoing beacons.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_limit_hyphen_beacons_off = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessLimitBeaconsOnOffCommand,
                 "Disables a limit to the max number of outgoing beacons.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_endpoint_enable = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessEnableDisableEndpointCommand,
                 "Enables the endpoint to receive messages and be discovered.",
                  "The endpoint number" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_endpoint_disable = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessEnableDisableEndpointCommand,
                 "Disables the endpoint to receive messages and be discovered.",
                  "The endpoint number" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_endpoint_status = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessEndpointStatusCommand,
                 "Disables the endpoint to receive messages and be discovered.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_endpoint_cluster_hyphen_endpoint_hyphen_index = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessClusterEndpointIndexCommand,
                 "Gets the cluster endpoint index.",
                  "The local endpoint of the cluster" SL_CLI_UNIT_SEPARATOR "The cluster whose index is needed" SL_CLI_UNIT_SEPARATOR "0 for client-side attributes or 1 for server-side attributes" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_radio_on = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessRadioOnOffCommand,
                 "Turns on the radio if it was previously turned off.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_radio_off = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessRadioOnOffCommand,
                 "Turns off the radio so that no messages are sent.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_set_hyphen_radio_hyphen_power = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetRadioPower,
                 "Sets the radio power.",
                  "The radio power to set" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_add_hyphen_child = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessAddChildCommand,
                 "Adds a child to the child table.",
                  "The shortId of the child device" SL_CLI_UNIT_SEPARATOR "The EUI64 of the child (big endian)" SL_CLI_UNIT_SEPARATOR "The node type of the child device" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_HEX, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_set_hyphen_compliance_hyphen_revision = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetNodeDescriptorComplianceRevision,
                 "Sets a compliance revision for a device such that the device can act as pre-R21 or R21+ for testing purposes. The reason for doing this is because the end device may send a node descriptor request and the hub will respond with the node descriptor response, which will include the hubs compliance revision. If the compliance revision of the hub is R21+, only then will the TC link key request be made by the end device.",
                  "The compliance version" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_set_hyphen_max_hyphen_children = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetMaxChildren,
                 "Sets the maximum children supported by the local node.",
                  "The maximum number of children to support" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_test_hyphen_harness_set_hyphen_neighbor_hyphen_table_hyphen_size = \
  SL_CLI_COMMAND(emberAfPluginTestHarnessSetNeighborTableSize,
                 "Sets the neighbor table size.",
                  "The size of the neighbor table" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_suppress_cluster = \
  SL_CLI_COMMAND(sl_zigbee_suppress_cluster,
                 "Suppress all automatic responses from specified cluster",
                  "cluster id value" SL_CLI_UNIT_SEPARATOR "server or client" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_suppress_command = \
  SL_CLI_COMMAND(sl_zigbee_suppress_command,
                 "Suppress all automatic responses from specified cluster command.",
                  "cluster id value" SL_CLI_UNIT_SEPARATOR "server or client" SL_CLI_UNIT_SEPARATOR "command id" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_suppress_print = \
  SL_CLI_COMMAND(sl_zigbee_print_suppression_table,
                 "Print the cluster/command suppression table",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_update_hyphen_tc_hyphen_link_hyphen_key_timer = \
  SL_CLI_COMMAND(emberAfPluginSetTCLinkKeyUpdateTimerCommand,
                 "This sets the the amount of time between subsequent trust center link key updates in milliseconds.",
                  "The amount of time between subsequent trust center link key updates in milliseconds" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_form = \
  SL_CLI_COMMAND(networkFormCommand,
                 "Forms a network on a given channel, with a given TX Power and PAN ID.",
                  "The channel on which to form the network" SL_CLI_UNIT_SEPARATOR "One-byte signed value indicating the TX Power that the radio should be set to" SL_CLI_UNIT_SEPARATOR "The PAN ID on which to form the network" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_INT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_join = \
  SL_CLI_COMMAND(networkJoinCommand,
                 "Joins a network on a given channel, with a given TX Power and PAN ID.",
                  "The channel on which to join the network" SL_CLI_UNIT_SEPARATOR "One-byte signed value indicating the TX Power that the radio should be set to" SL_CLI_UNIT_SEPARATOR "The PAN ID on which to join the network" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_INT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_pjoin = \
  SL_CLI_COMMAND(networkPermitJoinCommand,
                 "Turns permit joining on for the amount of time indicated.",
                  "A single byte indicating how long the device should have permit joining turn on for. A value of 0xff turns permit join indefinitely." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_leave = \
  SL_CLI_COMMAND(networkLeaveCommand,
                 "Leaves a network.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_rejoin = \
  SL_CLI_COMMAND(networkRejoinCommand,
                 "ReJoins a network.",
                  "Boolean network key availability" SL_CLI_UNIT_SEPARATOR "Channel mask" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_rejoin_hyphen_diff_hyphen_device_hyphen_type = \
  SL_CLI_COMMAND(networkRejoinDiffDeviceTypeCommand,
                 "Rejoins an existing network in a secure or insecure manner with a different device type.",
                  "Boolean network key availability" SL_CLI_UNIT_SEPARATOR "Channel mask" SL_CLI_UNIT_SEPARATOR "An enumeration indicating the device type to rejoin as.The stack only accepts EMBER_END_DEVICE and EMBER_SLEEPY_END_DEVICE." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_INT32, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_extpanid = \
  SL_CLI_COMMAND(networkExtendedPanIdCommand,
                 "Writes the extended pan ID for the device.",
                  "extpanid" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_isopen = \
  SL_CLI_COMMAND(networkCheckPjoinCommand,
                 "Checks network pjoin status.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_broad_hyphen_pjoin = \
  SL_CLI_COMMAND(networkPermitJoinCommand,
                 "Permits joining on the network for a given number of seconds AND broadcasts a ZDO Mgmt Permit Joining request to all routers.",
                  "A single byte indicating how long the device should have permit joining turned on for. A value of 0xff turns on permit join indefinitely." SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_find_joinable = \
  SL_CLI_COMMAND(findJoinableNetworkCommand,
                 "findJoinableNetwork",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_find_unused = \
  SL_CLI_COMMAND(findUnusedPanIdCommand,
                 "findUnusedPanId",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_change_hyphen_channel = \
  SL_CLI_COMMAND(networkChangeChannelCommand,
                 "Attempts to change device over to a different channel given in the channel argument.",
                  "The channel to change to" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_set = \
  SL_CLI_COMMAND(networkSetCommand,
                 "Sets the network index used by all future CLI commands.  Before executing a CLI command, the framework switches to this network.  After the command finishes executing, the framework switches back to the previous network.  The CLI uses the same network index until the device resets or it is changed through this command.",
                  "index" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_init = \
  SL_CLI_COMMAND(networkInitCommand,
                 "Initializes a network; this is a test command used for tc-swap-out testing.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_id = \
  SL_CLI_COMMAND(networkIdCommand,
                 "Prints the current Node ID, EUI64, and Pan ID.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_change_hyphen_keep_hyphen_alive_hyphen_mode = \
  SL_CLI_COMMAND(changeKeepAliveModeCommand,
                 "Switches between different keep alive modes supported by a router.",
                  "Keep alive mode" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_timeout_hyphen_option_hyphen_mask = \
  SL_CLI_COMMAND(networkChangeChildTimeoutOptionMaskCommand,
                 "Attempts to change the child timeout option mask to filter out undesirable values (e.g. no more than 3 days).",
                  "timeout option mask" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_multi_hyphen_phy_hyphen_start = \
  SL_CLI_COMMAND(networkMultiPhyStartCommand,
                 "Used to start multi-PHY interface other than native and form the network. The stack uses same PanId as native radio network.",
                  "page" SL_CLI_UNIT_SEPARATOR "channel" SL_CLI_UNIT_SEPARATOR "power" SL_CLI_UNIT_SEPARATOR "optionsMask (Bit 0 = Routers allowed, Bit 1 = Broadcast allowed)" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_INT8, SL_CLI_ARG_UINT8OPT, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_network_multi_hyphen_phy_hyphen_stop = \
  SL_CLI_COMMAND(networkMultiPhyStopCommand,
                 "Terminates the multi-PHY interface",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_keys_print = \
  SL_CLI_COMMAND(keysPrintCommand,
                 "Prints all security keys.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_keys_delete = \
  SL_CLI_COMMAND(keysDeleteCommand,
                 "Delete the specified link key index.",
                  "index" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_keys_clear = \
  SL_CLI_COMMAND(keysClearCommand,
                 "Clears all security keys.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_binding_hyphen_table_print = \
  SL_CLI_COMMAND(optionBindingTablePrintCommand,
                 "Prints the binding table to the command line.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_binding_hyphen_table_clear = \
  SL_CLI_COMMAND(optionBindingTableClearCommand,
                 "Clears the binding table.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_binding_hyphen_table_set = \
  SL_CLI_COMMAND(optionBindingTableSetCommand,
                 "Sets the binding table",
                  "index" SL_CLI_UNIT_SEPARATOR "cluster" SL_CLI_UNIT_SEPARATOR "localEp" SL_CLI_UNIT_SEPARATOR "remoteEp" SL_CLI_UNIT_SEPARATOR "eui64" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_print_hyphen_rx_hyphen_msgs_enable = \
  SL_CLI_COMMAND(optionPrintRxCommand,
                 "Enables printing of Rx messages.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_print_hyphen_rx_hyphen_msgs_disable = \
  SL_CLI_COMMAND(optionPrintRxCommand,
                 "Disables printing of Rx messages.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_option_register = \
  SL_CLI_COMMAND(optionRegisterCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_option_target = \
  SL_CLI_COMMAND(optionDiscoveryTargetCommand,
                 "",
                  "targetId" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_option_disc = \
  SL_CLI_COMMAND(optionDiscoverCommand,
                 "",
                  "profileId" SL_CLI_UNIT_SEPARATOR "clusterId" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_apsretry_on = \
  SL_CLI_COMMAND(optionApsRetryCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_apsretry_off = \
  SL_CLI_COMMAND(optionApsRetryCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_apsretry_default = \
  SL_CLI_COMMAND(optionApsRetryCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_aps_on = \
  SL_CLI_COMMAND(optionApsSecurityCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_aps_off = \
  SL_CLI_COMMAND(optionApsSecurityCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_security_set_hyphen_allow_hyphen_trust_hyphen_center_hyphen_rejoin_hyphen_using_hyphen_well_hyphen_known_hyphen_key = \
  SL_CLI_COMMAND(optionSecurityAllowTrustCenterRejoinUsingWellKnownKey,
                 "",
                  "Bool: allow trust center rejoin using well-known key" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_security_set_hyphen_allow_hyphen_trust_hyphen_center_hyphen_rejoin_hyphen_using_hyphen_well_hyphen_known_hyphen_key_hyphen_timeout = \
  SL_CLI_COMMAND(optionSecurityAllowTrustCenterRejoinUsingWellKnownKeyTimeout,
                 "",
                  "timeout" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_security_set_hyphen_key_hyphen_request_hyphen_policy = \
  SL_CLI_COMMAND(optionSecuritySetKeyRequestPolicy,
                 "",
                  "TC link key request policy" SL_CLI_UNIT_SEPARATOR "App link key request policy" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_changekey_link = \
  SL_CLI_COMMAND(changeKeyCommand,
                 "",
                  "key" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_changekey_network = \
  SL_CLI_COMMAND(changeKeyCommand,
                 "",
                  "key" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_option_link = \
  SL_CLI_COMMAND(optionLinkCommand,
                 "",
                  "index" SL_CLI_UNIT_SEPARATOR "eui64" SL_CLI_UNIT_SEPARATOR "key" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_HEX, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_option_install_hyphen_code = \
  SL_CLI_COMMAND(optionInstallCodeCommand,
                 "",
                  "index" SL_CLI_UNIT_SEPARATOR "eui64" SL_CLI_UNIT_SEPARATOR "installCode" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_HEX, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_route = \
  SL_CLI_COMMAND(zdoRouteRequestCommand,
                 "Sends a ZDO route request command to the target.",
                  "target" SL_CLI_UNIT_SEPARATOR "index" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_power = \
  SL_CLI_COMMAND(zdoPowerDescriptorRequestCommand,
                 "Sends a ZDO Power Descriptor Request to the target device.",
                  "target" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_mgmt_hyphen_lqi = \
  SL_CLI_COMMAND(zdoMgmtLqiCommand,
                 "Sends a ZDO MGMT-LQI (LQI Table) Request to the target device.",
                  "target" SL_CLI_UNIT_SEPARATOR "startIndex" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_mgmt_hyphen_bind = \
  SL_CLI_COMMAND(zdoMgmtBindCommand,
                 "Sends a ZDO MGMT-Bind (Binding Table) Request to the target device.",
                  "target" SL_CLI_UNIT_SEPARATOR "startIndex" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_leave = \
  SL_CLI_COMMAND(zdoLeaveRequestCommand,
                 "Sends a ZDO Management Leave command to the target device.",
                  "target" SL_CLI_UNIT_SEPARATOR "removeChildren" SL_CLI_UNIT_SEPARATOR "rejoin" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_unbind_group = \
  SL_CLI_COMMAND(zdoUnbindGroupCommand,
                 "Sends an unbind request for a multicast binding to the target device.",
                  "target" SL_CLI_UNIT_SEPARATOR "source eui64" SL_CLI_UNIT_SEPARATOR "source endpoint" SL_CLI_UNIT_SEPARATOR "clusterID" SL_CLI_UNIT_SEPARATOR "groupAddress" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_HEX, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_unbind_unicast = \
  SL_CLI_COMMAND(zdoUnbindUnicastCommand,
                 "Sends an unbind request for a unicast binding to the target device.",
                  "target" SL_CLI_UNIT_SEPARATOR "source eui64" SL_CLI_UNIT_SEPARATOR "source endpoint" SL_CLI_UNIT_SEPARATOR "clusterID" SL_CLI_UNIT_SEPARATOR "destinationEUI64" SL_CLI_UNIT_SEPARATOR "destination endpoint" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_HEX, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_HEX, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_active = \
  SL_CLI_COMMAND(zdoActiveEpCommand,
                 "Sends an active endpoint request to the device with the given short ID.",
                  "nodeId" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_bind = \
  SL_CLI_COMMAND(zdoBindCommand,
                 "Sends a ZDO Bind command to a device specified in the command arguments.",
                  "Destination" SL_CLI_UNIT_SEPARATOR "Source endpoint" SL_CLI_UNIT_SEPARATOR "Destination endpoint" SL_CLI_UNIT_SEPARATOR "clusterID" SL_CLI_UNIT_SEPARATOR "remoteEUI64" SL_CLI_UNIT_SEPARATOR "destEUI64" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_HEX, SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_node = \
  SL_CLI_COMMAND(zdoNodeCommand,
                 "Sends a node descriptor request to a given target device.",
                  "target" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_match = \
  SL_CLI_COMMAND(zdoMatchCommand,
                 "Sends a matchDescriptorsRequest to the given destination with the given profile.",
                  "nodeId" SL_CLI_UNIT_SEPARATOR "profile" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_simple = \
  SL_CLI_COMMAND(zdoSimpleCommand,
                 "Sends a simple descriptor request for the short address and endpoint specified.",
                  "dest" SL_CLI_UNIT_SEPARATOR "targetEndpoint" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_ieee = \
  SL_CLI_COMMAND(zdoIeeeAddressRequestCommand,
                 "Requests an IEEE address based on a given node ID.",
                  "nodeId" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_zdo_nwk = \
  SL_CLI_COMMAND(zdoNwkAddressRequestCommand,
                 "Sends a network address request for the given IEEE address.",
                  "ieee" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_HEX, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_nwk_hyphen_upd_scan_hyphen_chan_hyphen_mask = \
  SL_CLI_COMMAND(zdoNetworkUpdateScanCommand,
                 "Performs an energy scan on given channel mask.",
                  "targetNodeId" SL_CLI_UNIT_SEPARATOR "scanDuration" SL_CLI_UNIT_SEPARATOR "scanCount" SL_CLI_UNIT_SEPARATOR "channelMask" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_nwk_hyphen_upd_set = \
  SL_CLI_COMMAND(zdoNetworkUpdateSetCommand,
                 "Broadcasts the ID of the new network manager and active channels.",
                  "nwkMgeId" SL_CLI_UNIT_SEPARATOR "channelMask" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT32, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_nwk_hyphen_upd_scan = \
  SL_CLI_COMMAND(zdoNetworkUpdateScanCommand,
                 "Performs an energy scan.",
                  "targetNodeId" SL_CLI_UNIT_SEPARATOR "scanDuration" SL_CLI_UNIT_SEPARATOR "scanCount" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_nwk_hyphen_upd_chanPg = \
  SL_CLI_COMMAND(zdoNetworkUpdateChannelCommand,
                 "Sends an update channel page req. The stack sends nwk enhanced update req for non-zero page.",
                  "channel" SL_CLI_UNIT_SEPARATOR "page" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_nwk_hyphen_upd_chan = \
  SL_CLI_COMMAND(zdoNetworkUpdateChannelCommand,
                 "Sends an update channel request.",
                  "channel" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT8, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_out_hyphen_cl_hyphen_list_add = \
  SL_CLI_COMMAND(zdoAddClusterCommand,
                 "Adds clusters to the known client (out) clusters on this device.",
                  "clusterId" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_out_hyphen_cl_hyphen_list_clear = \
  SL_CLI_COMMAND(zdoClearClusterCommand,
                 "Clears the ZDO list of client (out) clusters.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_in_hyphen_cl_hyphen_list_add = \
  SL_CLI_COMMAND(zdoAddClusterCommand,
                 "Adds clusters to the known client (in) clusters on this device.",
                  "clusterId" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_UINT16, SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_in_hyphen_cl_hyphen_list_clear = \
  SL_CLI_COMMAND(zdoClearClusterCommand,
                 "Clears the ZDO list of client (in) clusters.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_print_attr = \
  SL_CLI_COMMAND(emberAfPrintAttributeTable,
                 "Prints attribute.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_print_time = \
  SL_CLI_COMMAND(printTimeCommand,
                 "Prints time.",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_custom_tokdump = \
  SL_CLI_COMMAND(mfgappTokenDump,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_custom_changeNwkKey = \
  SL_CLI_COMMAND(changeNwkKeyCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_custom_printNextKey = \
  SL_CLI_COMMAND(printNextKeyCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_custom_version = \
  SL_CLI_COMMAND(versionCommand,
                 "",
                  "",
                 {SL_CLI_ARG_END, });

static const sl_cli_command_info_t cli_cmd_custom_txPower = \
  SL_CLI_COMMAND(setTxPowerCommand,
                 "",
                  "" SL_CLI_UNIT_SEPARATOR,
                 {SL_CLI_ARG_INT8, SL_CLI_ARG_END, });


// Create group command tables and structs if cli_groups given
// in template. Group name is suffixed with _group_table for tables
// and group commands are cli_cmd_grp_( group name )
static const sl_cli_command_entry_t address_hyphen_table_group_table[] = {
  { "add", &cli_cmd_address_hyphen_table_add, false },
  { "set", &cli_cmd_address_hyphen_table_set, false },
  { "remove", &cli_cmd_address_hyphen_table_remove, false },
  { "lookup", &cli_cmd_address_hyphen_table_lookup, false },
  { "print", &cli_cmd_address_hyphen_table_print, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_address_hyphen_table = \
  SL_CLI_COMMAND_GROUP(address_hyphen_table_group_table, "");

static const sl_cli_command_entry_t concentrator_group_table[] = {
  { "status", &cli_cmd_concentrator_status, false },
  { "start", &cli_cmd_concentrator_start, false },
  { "stop", &cli_cmd_concentrator_stop, false },
  { "agg", &cli_cmd_concentrator_agg, false },
  { "print-table", &cli_cmd_concentrator_print_hyphen_table, false },
  { "set-router-behavior", &cli_cmd_concentrator_set_hyphen_router_hyphen_behavior, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_concentrator = \
  SL_CLI_COMMAND_GROUP(concentrator_group_table, "concentrator related commands.");

static const sl_cli_command_entry_t endpoints_group_table[] = {
  { "print", &cli_cmd_endpoints_print, false },
  { "enable", &cli_cmd_endpoints_enable, false },
  { "disable", &cli_cmd_endpoints_disable, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_endpoints = \
  SL_CLI_COMMAND_GROUP(endpoints_group_table, "endpoint related commands.");

static const sl_cli_command_entry_t mfg_hyphen_token_group_table[] = {
  { "get", &cli_cmd_mfg_hyphen_token_get, false },
  { "set", &cli_cmd_mfg_hyphen_token_set, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_mfg_hyphen_token = \
  SL_CLI_COMMAND_GROUP(mfg_hyphen_token_group_table, "Get/set MFG token.");

static const sl_cli_command_entry_t aps_group_table[] = {
  { "on", &cli_cmd_aps_on, false },
  { "off", &cli_cmd_aps_off, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_aps = \
  SL_CLI_COMMAND_GROUP(aps_group_table, "Security aps related commands.");

static const sl_cli_command_entry_t security_group_table[] = {
  { "set-allow-trust-center-rejoin-using-well-known-key", &cli_cmd_security_set_hyphen_allow_hyphen_trust_hyphen_center_hyphen_rejoin_hyphen_using_hyphen_well_hyphen_known_hyphen_key, false },
  { "set-allow-trust-center-rejoin-using-well-known-key-timeout", &cli_cmd_security_set_hyphen_allow_hyphen_trust_hyphen_center_hyphen_rejoin_hyphen_using_hyphen_well_hyphen_known_hyphen_key_hyphen_timeout, false },
  { "set-key-request-policy", &cli_cmd_security_set_hyphen_key_hyphen_request_hyphen_policy, false },
  { "mfg-token", &cli_cmd_grp_mfg_hyphen_token, false },
  { "aps", &cli_cmd_grp_aps, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_security = \
  SL_CLI_COMMAND_GROUP(security_group_table, "security related commands");

static const sl_cli_command_entry_t counters_group_table[] = {
  { "print", &cli_cmd_counters_print, false },
  { "print-counter-type", &cli_cmd_counters_print_hyphen_counter_hyphen_type, false },
  { "simple-print", &cli_cmd_counters_simple_hyphen_print, false },
  { "clear", &cli_cmd_counters_clear, false },
  { "print-thresholds", &cli_cmd_counters_print_hyphen_thresholds, false },
  { "set-threshold", &cli_cmd_counters_set_hyphen_threshold, false },
  { "reset-thresholds", &cli_cmd_counters_reset_hyphen_thresholds, false },
  { "send-request", &cli_cmd_counters_send_hyphen_request, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_counters = \
  SL_CLI_COMMAND_GROUP(counters_group_table, "counters related commands.");

static const sl_cli_command_entry_t enable_type_group_table[] = {
  { "stack", &cli_cmd_enable_type_stack, false },
  { "core", &cli_cmd_enable_type_core, false },
  { "app", &cli_cmd_enable_type_app, false },
  { "zcl", &cli_cmd_enable_type_zcl, false },
  { "legacy_af_debug", &cli_cmd_enable_type_legacy_af_debug, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_enable_type = \
  SL_CLI_COMMAND_GROUP(enable_type_group_table, "");

static const sl_cli_command_entry_t zigbee_print_group_table[] = {
  { "enable_type", &cli_cmd_grp_enable_type, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_zigbee_print = \
  SL_CLI_COMMAND_GROUP(zigbee_print_group_table, "");

static const sl_cli_command_entry_t ezmode_hyphen_commissioning_group_table[] = {
  { "client", &cli_cmd_ezmode_hyphen_commissioning_client, false },
  { "server", &cli_cmd_ezmode_hyphen_commissioning_server, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_ezmode_hyphen_commissioning = \
  SL_CLI_COMMAND_GROUP(ezmode_hyphen_commissioning_group_table, "ezmode-commissioning related commands.");

static const sl_cli_command_entry_t gateway_group_table[] = {
  { "time-sync-local", &cli_cmd_gateway_time_hyphen_sync_hyphen_local, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_gateway = \
  SL_CLI_COMMAND_GROUP(gateway_group_table, "gateway related commands");

static const sl_cli_command_entry_t ias_hyphen_zone_hyphen_client_group_table[] = {
  { "print-servers", &cli_cmd_ias_hyphen_zone_hyphen_client_print_hyphen_servers, false },
  { "clear-all", &cli_cmd_ias_hyphen_zone_hyphen_client_clear_hyphen_all, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_ias_hyphen_zone_hyphen_client = \
  SL_CLI_COMMAND_GROUP(ias_hyphen_zone_hyphen_client_group_table, "ias-zone-client related commands.");

static const sl_cli_command_entry_t identify_group_table[] = {
  { "print", &cli_cmd_identify_print, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_identify = \
  SL_CLI_COMMAND_GROUP(identify_group_table, "identify related commands");

static const sl_cli_command_entry_t tone_group_table[] = {
  { "start", &cli_cmd_tone_start, false },
  { "stop", &cli_cmd_tone_stop, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_tone = \
  SL_CLI_COMMAND_GROUP(tone_group_table, "tone related commands");

static const sl_cli_command_entry_t stream_group_table[] = {
  { "start", &cli_cmd_stream_start, false },
  { "stop", &cli_cmd_stream_stop, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_stream = \
  SL_CLI_COMMAND_GROUP(stream_group_table, "stream related commands");

static const sl_cli_command_entry_t send_group_table[] = {
  { "random", &cli_cmd_send_random, false },
  { "test", &cli_cmd_send_test, false },
  { "message", &cli_cmd_send_message, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_send = \
  SL_CLI_COMMAND_GROUP(send_group_table, "send related commands");

static const sl_cli_command_entry_t mfglib_group_table[] = {
  { "start", &cli_cmd_mfglib_start, false },
  { "stop", &cli_cmd_mfglib_stop, false },
  { "status", &cli_cmd_mfglib_status, false },
  { "set-channel", &cli_cmd_mfglib_set_hyphen_channel, false },
  { "set-power", &cli_cmd_mfglib_set_hyphen_power, false },
  { "sleep", &cli_cmd_mfglib_sleep, false },
  { "programEui", &cli_cmd_mfglib_programEui, false },
  { "mfgenable", &cli_cmd_mfglib_mfgenable, false },
  { "set-options", &cli_cmd_mfglib_set_hyphen_options, false },
  { "tone", &cli_cmd_grp_tone, false },
  { "stream", &cli_cmd_grp_stream, false },
  { "send", &cli_cmd_grp_send, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_mfglib = \
  SL_CLI_COMMAND_GROUP(mfglib_group_table, "mfglib related commands");

static const sl_cli_command_entry_t mask_group_table[] = {
  { "add", &cli_cmd_mask_add, false },
  { "subtract", &cli_cmd_mask_subtract, false },
  { "set", &cli_cmd_mask_set, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_mask = \
  SL_CLI_COMMAND_GROUP(mask_group_table, "mask related commands");

static const sl_cli_command_entry_t network_hyphen_creator_group_table[] = {
  { "start", &cli_cmd_network_hyphen_creator_start, false },
  { "stop", &cli_cmd_network_hyphen_creator_stop, false },
  { "form", &cli_cmd_network_hyphen_creator_form, false },
  { "status", &cli_cmd_network_hyphen_creator_status, false },
  { "mask", &cli_cmd_grp_mask, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_network_hyphen_creator = \
  SL_CLI_COMMAND_GROUP(network_hyphen_creator_group_table, "network-creator related commands.");

static const sl_cli_command_entry_t network_hyphen_creator_hyphen_security_group_table[] = {
  { "set-joining-link-key", &cli_cmd_network_hyphen_creator_hyphen_security_set_hyphen_joining_hyphen_link_hyphen_key, false },
  { "clear-joining-link-keys", &cli_cmd_network_hyphen_creator_hyphen_security_clear_hyphen_joining_hyphen_link_hyphen_keys, false },
  { "open-network", &cli_cmd_network_hyphen_creator_hyphen_security_open_hyphen_network, false },
  { "close-network", &cli_cmd_network_hyphen_creator_hyphen_security_close_hyphen_network, false },
  { "open-with-key", &cli_cmd_network_hyphen_creator_hyphen_security_open_hyphen_with_hyphen_key, false },
  { "set-distributed-key", &cli_cmd_network_hyphen_creator_hyphen_security_set_hyphen_distributed_hyphen_key, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_network_hyphen_creator_hyphen_security = \
  SL_CLI_COMMAND_GROUP(network_hyphen_creator_hyphen_security_group_table, "network-creator-security related commands.");

static const sl_cli_command_entry_t shell_mask_1_group_table[] = {
  { "set", &cli_cmd_shell_mask_1_set, false },
  { "add", &cli_cmd_shell_mask_1_add, false },
  { "subtract", &cli_cmd_shell_mask_1_subtract, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_shell_mask_1 = \
  SL_CLI_COMMAND_GROUP(shell_mask_1_group_table, "mask related command.");

static const sl_cli_command_entry_t network_hyphen_steering_group_table[] = {
  { "status", &cli_cmd_network_hyphen_steering_status, false },
  { "start", &cli_cmd_network_hyphen_steering_start, false },
  { "stop", &cli_cmd_network_hyphen_steering_stop, false },
  { "pre-configured-key-set", &cli_cmd_network_hyphen_steering_pre_hyphen_configured_hyphen_key_hyphen_set, false },
  { "mask", &cli_cmd_grp_shell_mask_1, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_network_hyphen_steering = \
  SL_CLI_COMMAND_GROUP(network_hyphen_steering_group_table, "network-steering related commands.");

static const sl_cli_command_entry_t policy_group_table[] = {
  { "print", &cli_cmd_policy_print, false },
  { "query", &cli_cmd_policy_query, false },
  { "upgrade", &cli_cmd_policy_upgrade, false },
  { "page-req-miss", &cli_cmd_policy_page_hyphen_req_hyphen_miss, false },
  { "page-req-sup", &cli_cmd_policy_page_hyphen_req_hyphen_sup, false },
  { "block-request", &cli_cmd_policy_block_hyphen_request, false },
  { "image-req-min-period", &cli_cmd_policy_image_hyphen_req_hyphen_min_hyphen_period, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_policy = \
  SL_CLI_COMMAND_GROUP(policy_group_table, "policy related commands");

static const sl_cli_command_entry_t ota_hyphen_server_group_table[] = {
  { "notify", &cli_cmd_ota_hyphen_server_notify, false },
  { "upgrade", &cli_cmd_ota_hyphen_server_upgrade, false },
  { "policy", &cli_cmd_grp_policy, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_ota_hyphen_server = \
  SL_CLI_COMMAND_GROUP(ota_hyphen_server_group_table, "ota-server related commands.");

static const sl_cli_command_entry_t ota_hyphen_storage_hyphen_common_group_table[] = {
  { "printImages", &cli_cmd_ota_hyphen_storage_hyphen_common_printImages, false },
  { "delete", &cli_cmd_ota_hyphen_storage_hyphen_common_delete, false },
  { "reload", &cli_cmd_ota_hyphen_storage_hyphen_common_reload, false },
  { "storage-info", &cli_cmd_ota_hyphen_storage_hyphen_common_storage_hyphen_info, false },
  { "data-print", &cli_cmd_ota_hyphen_storage_hyphen_common_data_hyphen_print, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_ota_hyphen_storage_hyphen_common = \
  SL_CLI_COMMAND_GROUP(ota_hyphen_storage_hyphen_common_group_table, "ota-storage-common related commands");

static const sl_cli_command_entry_t poll_hyphen_control_hyphen_client_group_table[] = {
  { "mode", &cli_cmd_poll_hyphen_control_hyphen_client_mode, false },
  { "timeout", &cli_cmd_poll_hyphen_control_hyphen_client_timeout, false },
  { "respond", &cli_cmd_poll_hyphen_control_hyphen_client_respond, false },
  { "print", &cli_cmd_poll_hyphen_control_hyphen_client_print, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_poll_hyphen_control_hyphen_client = \
  SL_CLI_COMMAND_GROUP(poll_hyphen_control_hyphen_client_group_table, "poll-control-client related commands.");

static const sl_cli_command_entry_t reporting_group_table[] = {
  { "print", &cli_cmd_reporting_print, false },
  { "clear", &cli_cmd_reporting_clear, false },
  { "remove", &cli_cmd_reporting_remove, false },
  { "add", &cli_cmd_reporting_add, false },
  { "clear-last-report-time", &cli_cmd_reporting_clear_hyphen_last_hyphen_report_hyphen_time, false },
  { "test-timing", &cli_cmd_reporting_test_hyphen_timing, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_reporting = \
  SL_CLI_COMMAND_GROUP(reporting_group_table, "reporting related commands.");

static const sl_cli_command_entry_t simple_hyphen_metering_hyphen_client_group_table[] = {
  { "sch-snapshot", &cli_cmd_simple_hyphen_metering_hyphen_client_sch_hyphen_snapshot, false },
  { "start-sampling", &cli_cmd_simple_hyphen_metering_hyphen_client_start_hyphen_sampling, false },
  { "get-sampled-data", &cli_cmd_simple_hyphen_metering_hyphen_client_get_hyphen_sampled_hyphen_data, false },
  { "local-change-supply", &cli_cmd_simple_hyphen_metering_hyphen_client_local_hyphen_change_hyphen_supply, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_simple_hyphen_metering_hyphen_client = \
  SL_CLI_COMMAND_GROUP(simple_hyphen_metering_hyphen_client_group_table, "simple-metering-client related commands.");

static const sl_cli_command_entry_t stack_hyphen_diagnostics_group_table[] = {
  { "info", &cli_cmd_stack_hyphen_diagnostics_info, false },
  { "child-table", &cli_cmd_stack_hyphen_diagnostics_child_hyphen_table, false },
  { "neighbor-table", &cli_cmd_stack_hyphen_diagnostics_neighbor_hyphen_table, false },
  { "route-table", &cli_cmd_stack_hyphen_diagnostics_route_hyphen_table, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_stack_hyphen_diagnostics = \
  SL_CLI_COMMAND_GROUP(stack_hyphen_diagnostics_group_table, "stack-diagnostics related commands.");

static const sl_cli_command_entry_t aps_hyphen_sec_hyphen_for_hyphen_cluster_group_table[] = {
  { "on", &cli_cmd_aps_hyphen_sec_hyphen_for_hyphen_cluster_on, false },
  { "off", &cli_cmd_aps_hyphen_sec_hyphen_for_hyphen_cluster_off, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_aps_hyphen_sec_hyphen_for_hyphen_cluster = \
  SL_CLI_COMMAND_GROUP(aps_hyphen_sec_hyphen_for_hyphen_cluster_group_table, "aps-sec-for-cluster related commands.");

static const sl_cli_command_entry_t attr_group_table[] = {
  { "options", &cli_cmd_attr_options, false },
  { "set-dest", &cli_cmd_attr_set_hyphen_dest, false },
  { "start-test", &cli_cmd_attr_start_hyphen_test, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_attr = \
  SL_CLI_COMMAND_GROUP(attr_group_table, "attr related commands.");

static const sl_cli_command_entry_t registration_group_table[] = {
  { "on", &cli_cmd_registration_on, false },
  { "off", &cli_cmd_registration_off, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_registration = \
  SL_CLI_COMMAND_GROUP(registration_group_table, "registration related commands.");

static const sl_cli_command_entry_t cert_hyphen_mangle_group_table[] = {
  { "length", &cli_cmd_cert_hyphen_mangle_length, false },
  { "issuer", &cli_cmd_cert_hyphen_mangle_issuer, false },
  { "corrupt", &cli_cmd_cert_hyphen_mangle_corrupt, false },
  { "change-byte", &cli_cmd_cert_hyphen_mangle_change_hyphen_byte, false },
  { "subject", &cli_cmd_cert_hyphen_mangle_subject, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_cert_hyphen_mangle = \
  SL_CLI_COMMAND_GROUP(cert_hyphen_mangle_group_table, "cert-mangle related commands.");

static const sl_cli_command_entry_t key_hyphen_establishment_group_table[] = {
  { "normal-mode", &cli_cmd_key_hyphen_establishment_normal_hyphen_mode, false },
  { "no-resources", &cli_cmd_key_hyphen_establishment_no_hyphen_resources, false },
  { "out-of-sequence", &cli_cmd_key_hyphen_establishment_out_hyphen_of_hyphen_sequence, false },
  { "timeout", &cli_cmd_key_hyphen_establishment_timeout, false },
  { "delay-cbke", &cli_cmd_key_hyphen_establishment_delay_hyphen_cbke, false },
  { "default-resp", &cli_cmd_key_hyphen_establishment_default_hyphen_resp, false },
  { "new-key-policy", &cli_cmd_key_hyphen_establishment_new_hyphen_key_hyphen_policy, false },
  { "reset-aps-fc", &cli_cmd_key_hyphen_establishment_reset_hyphen_aps_hyphen_fc, false },
  { "adv-aps-fc", &cli_cmd_key_hyphen_establishment_adv_hyphen_aps_hyphen_fc, false },
  { "suite", &cli_cmd_key_hyphen_establishment_suite, false },
  { "set-available-suite", &cli_cmd_key_hyphen_establishment_set_hyphen_available_hyphen_suite, false },
  { "key-mangle", &cli_cmd_key_hyphen_establishment_key_hyphen_mangle, false },
  { "cert-mangle", &cli_cmd_grp_cert_hyphen_mangle, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_key_hyphen_establishment = \
  SL_CLI_COMMAND_GROUP(key_hyphen_establishment_group_table, "key-establishment related commands.");

static const sl_cli_command_entry_t price_group_table[] = {
  { "send-new-fields", &cli_cmd_price_send_hyphen_new_hyphen_fields, false },
  { "send-se10-fields", &cli_cmd_price_send_hyphen_se10_hyphen_fields, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_price = \
  SL_CLI_COMMAND_GROUP(price_group_table, "price related commands.");

static const sl_cli_command_entry_t tc_hyphen_keepalive_group_table[] = {
  { "send", &cli_cmd_tc_hyphen_keepalive_send, false },
  { "start", &cli_cmd_tc_hyphen_keepalive_start, false },
  { "stop", &cli_cmd_tc_hyphen_keepalive_stop, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_tc_hyphen_keepalive = \
  SL_CLI_COMMAND_GROUP(tc_hyphen_keepalive_group_table, "tc-keepalive related commands.");

static const sl_cli_command_entry_t ota_group_table[] = {
  { "image-mangle", &cli_cmd_ota_image_hyphen_mangle, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_ota = \
  SL_CLI_COMMAND_GROUP(ota_group_table, "ota related commands.");

static const sl_cli_command_entry_t key_hyphen_update_group_table[] = {
  { "unicast", &cli_cmd_key_hyphen_update_unicast, false },
  { "broadcast", &cli_cmd_key_hyphen_update_broadcast, false },
  { "now", &cli_cmd_key_hyphen_update_now, false },
  { "security", &cli_cmd_grp_security, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_key_hyphen_update = \
  SL_CLI_COMMAND_GROUP(key_hyphen_update_group_table, "key-update related commands.");

static const sl_cli_command_entry_t limit_hyphen_beacons_group_table[] = {
  { "on", &cli_cmd_limit_hyphen_beacons_on, false },
  { "off", &cli_cmd_limit_hyphen_beacons_off, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_limit_hyphen_beacons = \
  SL_CLI_COMMAND_GROUP(limit_hyphen_beacons_group_table, "limit-beacons related commands.");

static const sl_cli_command_entry_t stack_group_table[] = {
  { "limit-beacons", &cli_cmd_grp_limit_hyphen_beacons, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_stack = \
  SL_CLI_COMMAND_GROUP(stack_group_table, "stack related commands.");

static const sl_cli_command_entry_t channel_hyphen_mask_group_table[] = {
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_channel_hyphen_mask = \
  SL_CLI_COMMAND_GROUP(channel_hyphen_mask_group_table, "channel-mask related commands");

static const sl_cli_command_entry_t endpoint_group_table[] = {
  { "enable", &cli_cmd_endpoint_enable, false },
  { "disable", &cli_cmd_endpoint_disable, false },
  { "status", &cli_cmd_endpoint_status, false },
  { "cluster-endpoint-index", &cli_cmd_endpoint_cluster_hyphen_endpoint_hyphen_index, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_endpoint = \
  SL_CLI_COMMAND_GROUP(endpoint_group_table, "endpoint related commands.");

static const sl_cli_command_entry_t radio_group_table[] = {
  { "on", &cli_cmd_radio_on, false },
  { "off", &cli_cmd_radio_off, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_radio = \
  SL_CLI_COMMAND_GROUP(radio_group_table, "radio related commands.");

static const sl_cli_command_entry_t test_hyphen_harness_group_table[] = {
  { "status", &cli_cmd_test_hyphen_harness_status, false },
  { "concentrator-start", &cli_cmd_test_hyphen_harness_concentrator_hyphen_start, false },
  { "concentrator-stop", &cli_cmd_test_hyphen_harness_concentrator_hyphen_stop, false },
  { "set-radio-power", &cli_cmd_test_hyphen_harness_set_hyphen_radio_hyphen_power, false },
  { "add-child", &cli_cmd_test_hyphen_harness_add_hyphen_child, false },
  { "set-compliance-revision", &cli_cmd_test_hyphen_harness_set_hyphen_compliance_hyphen_revision, false },
  { "set-max-children", &cli_cmd_test_hyphen_harness_set_hyphen_max_hyphen_children, false },
  { "set-neighbor-table-size", &cli_cmd_test_hyphen_harness_set_hyphen_neighbor_hyphen_table_hyphen_size, false },
  { "aps-sec-for-cluster", &cli_cmd_grp_aps_hyphen_sec_hyphen_for_hyphen_cluster, false },
  { "attr", &cli_cmd_grp_attr, false },
  { "registration", &cli_cmd_grp_registration, false },
  { "key-establishment", &cli_cmd_grp_key_hyphen_establishment, false },
  { "price", &cli_cmd_grp_price, false },
  { "tc-keepalive", &cli_cmd_grp_tc_hyphen_keepalive, false },
  { "ota", &cli_cmd_grp_ota, false },
  { "key-update", &cli_cmd_grp_key_hyphen_update, false },
  { "stack", &cli_cmd_grp_stack, false },
  { "channel-mask", &cli_cmd_grp_channel_hyphen_mask, false },
  { "endpoint", &cli_cmd_grp_endpoint, false },
  { "radio", &cli_cmd_grp_radio, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_test_hyphen_harness = \
  SL_CLI_COMMAND_GROUP(test_hyphen_harness_group_table, "test-harness related commands.");

static const sl_cli_command_entry_t suppress_group_table[] = {
  { "cluster", &cli_cmd_suppress_cluster, false },
  { "command", &cli_cmd_suppress_command, false },
  { "print", &cli_cmd_suppress_print, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_suppress = \
  SL_CLI_COMMAND_GROUP(suppress_group_table, "Commands to suppress automatic responses");

static const sl_cli_command_entry_t update_hyphen_tc_hyphen_link_hyphen_key_group_table[] = {
  { "timer", &cli_cmd_update_hyphen_tc_hyphen_link_hyphen_key_timer, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_update_hyphen_tc_hyphen_link_hyphen_key = \
  SL_CLI_COMMAND_GROUP(update_hyphen_tc_hyphen_link_hyphen_key_group_table, "update-tc-link-key related commands");

static const sl_cli_command_entry_t plugin_group_table[] = {
  { "address-table", &cli_cmd_grp_address_hyphen_table, false },
  { "concentrator", &cli_cmd_grp_concentrator, false },
  { "counters", &cli_cmd_grp_counters, false },
  { "ezmode-commissioning", &cli_cmd_grp_ezmode_hyphen_commissioning, false },
  { "gateway", &cli_cmd_grp_gateway, false },
  { "ias-zone-client", &cli_cmd_grp_ias_hyphen_zone_hyphen_client, false },
  { "identify", &cli_cmd_grp_identify, false },
  { "mfglib", &cli_cmd_grp_mfglib, false },
  { "network-creator", &cli_cmd_grp_network_hyphen_creator, false },
  { "network-creator-security", &cli_cmd_grp_network_hyphen_creator_hyphen_security, false },
  { "network-steering", &cli_cmd_grp_network_hyphen_steering, false },
  { "ota-server", &cli_cmd_grp_ota_hyphen_server, false },
  { "ota-storage-common", &cli_cmd_grp_ota_hyphen_storage_hyphen_common, false },
  { "poll-control-client", &cli_cmd_grp_poll_hyphen_control_hyphen_client, false },
  { "reporting", &cli_cmd_grp_reporting, false },
  { "simple-metering-client", &cli_cmd_grp_simple_hyphen_metering_hyphen_client, false },
  { "stack-diagnostics", &cli_cmd_grp_stack_hyphen_diagnostics, false },
  { "test-harness", &cli_cmd_grp_test_hyphen_harness, false },
  { "update-tc-link-key", &cli_cmd_grp_update_hyphen_tc_hyphen_link_hyphen_key, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_plugin = \
  SL_CLI_COMMAND_GROUP(plugin_group_table, "");

static const sl_cli_command_entry_t find_group_table[] = {
  { "joinable", &cli_cmd_find_joinable, false },
  { "unused", &cli_cmd_find_unused, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_find = \
  SL_CLI_COMMAND_GROUP(find_group_table, "network find commands.");

static const sl_cli_command_entry_t network_group_table[] = {
  { "form", &cli_cmd_network_form, false },
  { "join", &cli_cmd_network_join, false },
  { "pjoin", &cli_cmd_network_pjoin, false },
  { "leave", &cli_cmd_network_leave, false },
  { "rejoin", &cli_cmd_network_rejoin, false },
  { "rejoin-diff-device-type", &cli_cmd_network_rejoin_hyphen_diff_hyphen_device_hyphen_type, false },
  { "extpanid", &cli_cmd_network_extpanid, false },
  { "isopen", &cli_cmd_network_isopen, false },
  { "broad-pjoin", &cli_cmd_network_broad_hyphen_pjoin, false },
  { "change-channel", &cli_cmd_network_change_hyphen_channel, false },
  { "set", &cli_cmd_network_set, false },
  { "init", &cli_cmd_network_init, false },
  { "id", &cli_cmd_network_id, false },
  { "change-keep-alive-mode", &cli_cmd_network_change_hyphen_keep_hyphen_alive_hyphen_mode, false },
  { "timeout-option-mask", &cli_cmd_network_timeout_hyphen_option_hyphen_mask, false },
  { "multi-phy-start", &cli_cmd_network_multi_hyphen_phy_hyphen_start, false },
  { "multi-phy-stop", &cli_cmd_network_multi_hyphen_phy_hyphen_stop, false },
  { "find", &cli_cmd_grp_find, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_network = \
  SL_CLI_COMMAND_GROUP(network_group_table, "Network related commands.");

static const sl_cli_command_entry_t keys_group_table[] = {
  { "print", &cli_cmd_keys_print, false },
  { "delete", &cli_cmd_keys_delete, false },
  { "clear", &cli_cmd_keys_clear, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_keys = \
  SL_CLI_COMMAND_GROUP(keys_group_table, "Security keys related commands.");

static const sl_cli_command_entry_t binding_hyphen_table_group_table[] = {
  { "print", &cli_cmd_binding_hyphen_table_print, false },
  { "clear", &cli_cmd_binding_hyphen_table_clear, false },
  { "set", &cli_cmd_binding_hyphen_table_set, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_binding_hyphen_table = \
  SL_CLI_COMMAND_GROUP(binding_hyphen_table_group_table, "Binding table related commands.");

static const sl_cli_command_entry_t print_hyphen_rx_hyphen_msgs_group_table[] = {
  { "enable", &cli_cmd_print_hyphen_rx_hyphen_msgs_enable, false },
  { "disable", &cli_cmd_print_hyphen_rx_hyphen_msgs_disable, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_print_hyphen_rx_hyphen_msgs = \
  SL_CLI_COMMAND_GROUP(print_hyphen_rx_hyphen_msgs_group_table, "Enables/Disables printing of Rx messages.");

static const sl_cli_command_entry_t apsretry_group_table[] = {
  { "on", &cli_cmd_apsretry_on, false },
  { "off", &cli_cmd_apsretry_off, false },
  { "default", &cli_cmd_apsretry_default, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_apsretry = \
  SL_CLI_COMMAND_GROUP(apsretry_group_table, "APS retry flag force commands");

static const sl_cli_command_entry_t option_group_table[] = {
  { "register", &cli_cmd_option_register, false },
  { "target", &cli_cmd_option_target, false },
  { "disc", &cli_cmd_option_disc, false },
  { "link", &cli_cmd_option_link, false },
  { "install-code", &cli_cmd_option_install_hyphen_code, false },
  { "binding-table", &cli_cmd_grp_binding_hyphen_table, false },
  { "print-rx-msgs", &cli_cmd_grp_print_hyphen_rx_hyphen_msgs, false },
  { "apsretry", &cli_cmd_grp_apsretry, false },
  { "security", &cli_cmd_grp_security, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_option = \
  SL_CLI_COMMAND_GROUP(option_group_table, "Option related commands.");

static const sl_cli_command_entry_t changekey_group_table[] = {
  { "link", &cli_cmd_changekey_link, false },
  { "network", &cli_cmd_changekey_network, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_changekey = \
  SL_CLI_COMMAND_GROUP(changekey_group_table, "changekey related commands.");

static const sl_cli_command_entry_t unbind_group_table[] = {
  { "group", &cli_cmd_unbind_group, false },
  { "unicast", &cli_cmd_unbind_unicast, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_unbind = \
  SL_CLI_COMMAND_GROUP(unbind_group_table, "Zdo unbind related commands.");

static const sl_cli_command_entry_t nwk_hyphen_upd_group_table[] = {
  { "scan-chan-mask", &cli_cmd_nwk_hyphen_upd_scan_hyphen_chan_hyphen_mask, false },
  { "set", &cli_cmd_nwk_hyphen_upd_set, false },
  { "scan", &cli_cmd_nwk_hyphen_upd_scan, false },
  { "chanPg", &cli_cmd_nwk_hyphen_upd_chanPg, false },
  { "chan", &cli_cmd_nwk_hyphen_upd_chan, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_nwk_hyphen_upd = \
  SL_CLI_COMMAND_GROUP(nwk_hyphen_upd_group_table, "Zdo nwk-upd related commands.");

static const sl_cli_command_entry_t out_hyphen_cl_hyphen_list_group_table[] = {
  { "add", &cli_cmd_out_hyphen_cl_hyphen_list_add, false },
  { "clear", &cli_cmd_out_hyphen_cl_hyphen_list_clear, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_out_hyphen_cl_hyphen_list = \
  SL_CLI_COMMAND_GROUP(out_hyphen_cl_hyphen_list_group_table, "Zdo out-cl-list related commands.");

static const sl_cli_command_entry_t in_hyphen_cl_hyphen_list_group_table[] = {
  { "add", &cli_cmd_in_hyphen_cl_hyphen_list_add, false },
  { "clear", &cli_cmd_in_hyphen_cl_hyphen_list_clear, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_in_hyphen_cl_hyphen_list = \
  SL_CLI_COMMAND_GROUP(in_hyphen_cl_hyphen_list_group_table, "Zdo in-cl-list related commands.");

static const sl_cli_command_entry_t zdo_group_table[] = {
  { "route", &cli_cmd_zdo_route, false },
  { "power", &cli_cmd_zdo_power, false },
  { "mgmt-lqi", &cli_cmd_zdo_mgmt_hyphen_lqi, false },
  { "mgmt-bind", &cli_cmd_zdo_mgmt_hyphen_bind, false },
  { "leave", &cli_cmd_zdo_leave, false },
  { "active", &cli_cmd_zdo_active, false },
  { "bind", &cli_cmd_zdo_bind, false },
  { "node", &cli_cmd_zdo_node, false },
  { "match", &cli_cmd_zdo_match, false },
  { "simple", &cli_cmd_zdo_simple, false },
  { "ieee", &cli_cmd_zdo_ieee, false },
  { "nwk", &cli_cmd_zdo_nwk, false },
  { "unbind", &cli_cmd_grp_unbind, false },
  { "nwk-upd", &cli_cmd_grp_nwk_hyphen_upd, false },
  { "out-cl-list", &cli_cmd_grp_out_hyphen_cl_hyphen_list, false },
  { "in-cl-list", &cli_cmd_grp_in_hyphen_cl_hyphen_list, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_zdo = \
  SL_CLI_COMMAND_GROUP(zdo_group_table, "Zdo related commands.");

static const sl_cli_command_entry_t print_group_table[] = {
  { "attr", &cli_cmd_print_attr, false },
  { "time", &cli_cmd_print_time, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_print = \
  SL_CLI_COMMAND_GROUP(print_group_table, "print related commands.");

static const sl_cli_command_entry_t custom_group_table[] = {
  { "tokdump", &cli_cmd_custom_tokdump, false },
  { "changeNwkKey", &cli_cmd_custom_changeNwkKey, false },
  { "printNextKey", &cli_cmd_custom_printNextKey, false },
  { "version", &cli_cmd_custom_version, false },
  { "txPower", &cli_cmd_custom_txPower, false },
  { NULL, NULL, false },
};
static const sl_cli_command_info_t cli_cmd_grp_custom = \
  SL_CLI_COMMAND_GROUP(custom_group_table, "Custom commands");

// Create root command table
const sl_cli_command_entry_t sl_cli_default_command_table[] = {
  { "info", &cli_cmd__info, false },
  { "libs", &cli_cmd__libs, false },
  { "bsend", &cli_cmd__bsend, false },
  { "send", &cli_cmd__send, false },
  { "read", &cli_cmd__read, false },
  { "write", &cli_cmd__write, false },
  { "reset", &cli_cmd__reset, false },
  { "raw", &cli_cmd__raw, false },
  { "send_multicast", &cli_cmd__send_multicast, false },
  { "send-using-multicast-binding", &cli_cmd__send_hyphen_using_hyphen_multicast_hyphen_binding, false },
  { "timesync", &cli_cmd__timesync, false },
  { "config-cca-mode", &cli_cmd__config_hyphen_cca_hyphen_mode, false },
  { "version", &cli_cmd__version, false },
  { "events", &cli_cmd__events, false },
  { "endpoints", &cli_cmd_grp_endpoints, false },
  { "security", &cli_cmd_grp_security, false },
  { "zigbee_print", &cli_cmd_grp_zigbee_print, false },
  { "suppress", &cli_cmd_grp_suppress, false },
  { "plugin", &cli_cmd_grp_plugin, false },
  { "network", &cli_cmd_grp_network, false },
  { "net", &cli_cmd_grp_network, true },
  { "keys", &cli_cmd_grp_keys, false },
  { "option", &cli_cmd_grp_option, false },
  { "opt", &cli_cmd_grp_option, true },
  { "plugin", &cli_cmd_grp_plugin, false },
  { "plug", &cli_cmd_grp_plugin, true },
  { "changekey", &cli_cmd_grp_changekey, false },
  { "changek", &cli_cmd_grp_changekey, true },
  { "zdo", &cli_cmd_grp_zdo, false },
  { "print", &cli_cmd_grp_print, false },
  { "custom", &cli_cmd_grp_custom, false },
  { NULL, NULL, false },
};


#ifdef __cplusplus
}
#endif

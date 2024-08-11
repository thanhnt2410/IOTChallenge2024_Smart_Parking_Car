/***************************************************************************//**
 * @file  zap-event.h
 * @brief Generated file for zcl events using ZAP. Do not update file manually.
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/


#ifdef SL_COMPONENT_CATALOG_PRESENT
#include "sl_component_catalog.h"
#endif

#ifdef SL_CATALOG_ZIGBEE_ZCL_FRAMEWORK_CORE_PRESENT
#include "af.h"

#define EMBER_AF_GENERATED_UC_EVENTS_DEF \
sl_zigbee_event_t emberAfIdentifyClusterServerTickCallbackEvent1; \
sl_zigbee_event_t emberAfOnOffClusterServerTickCallbackEvent1; \
sl_zigbee_event_t emberAfLevelControlClusterServerTickCallbackEvent1; \
sl_zigbee_event_t emberAfTimeClusterServerTickCallbackEvent1; \
sl_zigbee_event_t emberAfOtaBootloadClusterServerTickCallbackEvent1; \
sl_zigbee_event_t emberAfColorControlClusterServerTickCallbackEvent1; \


#define EMBER_AF_GENERATED_UC_EVENTS_INIT \
extern void emberAfIdentifyClusterServerTickCallback(uint8_t endpoint); \
extern void emberAfOnOffClusterServerTickCallback(uint8_t endpoint); \
extern void emberAfLevelControlClusterServerTickCallback(uint8_t endpoint); \
extern void emberAfTimeClusterServerTickCallback(uint8_t endpoint); \
extern void emberAfOtaBootloadClusterServerTickCallback(uint8_t endpoint); \
extern void emberAfColorControlClusterServerTickCallback(uint8_t endpoint); \
sl_zigbee_endpoint_event_init(&emberAfIdentifyClusterServerTickCallbackEvent1, (void *)emberAfIdentifyClusterServerTickCallback, 1); \
sl_zigbee_endpoint_event_init(&emberAfOnOffClusterServerTickCallbackEvent1, (void *)emberAfOnOffClusterServerTickCallback, 1); \
sl_zigbee_endpoint_event_init(&emberAfLevelControlClusterServerTickCallbackEvent1, (void *)emberAfLevelControlClusterServerTickCallback, 1); \
sl_zigbee_endpoint_event_init(&emberAfTimeClusterServerTickCallbackEvent1, (void *)emberAfTimeClusterServerTickCallback, 1); \
sl_zigbee_endpoint_event_init(&emberAfOtaBootloadClusterServerTickCallbackEvent1, (void *)emberAfOtaBootloadClusterServerTickCallback, 1); \
sl_zigbee_endpoint_event_init(&emberAfColorControlClusterServerTickCallbackEvent1, (void *)emberAfColorControlClusterServerTickCallback, 1); \

// sl_zigbee_event_context_t structs used to populate the sli_zigbee_app_event_context table
#define EMBER_AF_GENERATED_UC_EVENT_CONTEXT \
{ 1, 0x3, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfIdentifyClusterServerTickCallbackEvent1 },     \
{ 1, 0x6, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfOnOffClusterServerTickCallbackEvent1 },     \
{ 1, 0x8, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfLevelControlClusterServerTickCallbackEvent1 },     \
{ 1, 0xA, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfTimeClusterServerTickCallbackEvent1 },     \
{ 1, 0x19, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfOtaBootloadClusterServerTickCallbackEvent1 },     \
{ 1, 0x300, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfColorControlClusterServerTickCallbackEvent1 },     \

#define EMBER_AF_GENERATED_UC_EVENT_CONTEXT_COUNT 6

#endif // SL_CATALOG_ZIGBEE_ZCL_FRAMEWORK_CORE_PRESENT

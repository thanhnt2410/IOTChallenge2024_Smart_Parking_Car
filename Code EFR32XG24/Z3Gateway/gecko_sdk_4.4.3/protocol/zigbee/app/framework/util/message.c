/***************************************************************************//**
 * @file
 * @brief Code for manipulating the incoming and outgoing messages in a flat
 * memory buffer.
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
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

#include "app/framework/include/af.h"
#include "app/framework/util/util.h"
#include "app/framework/util/config.h"

#include "app/framework/signature-decode/sl_signature_decode.h"

//------------------------------------------------------------------------------

// these variables are for storing responses that are created by zcl-utils
// in functions called from emberIncomingMsgHandler. The response is sent
// from emberAfTick (meant to be called immediately after emberTick).
// There is only space for one response as each call to emberTick will
// only result in a single call to emberIncomingMsgHandler. If the device
// receives multiple ZCL messages, the stack will queue these and hand
// these to the application via emberIncomingMsgHandler one at a time.
EmberApsFrame      emberAfResponseApsFrame;
EmberNodeId        emberAfResponseDestination;
uint8_t  appResponseData[EMBER_AF_RESPONSE_BUFFER_LEN];
uint16_t  appResponseLength;

// Used for empty string
static uint16_t zeroLenByte = 0;
static uint8_t* zeroLenBytePtr = (uint8_t *)&zeroLenByte;

//------------------------------------------------------------------------------
// Utilities for adding bytes to the response buffer: appResponseData. These
// functions take care of incrementing appResponseLength.

void emberAfClearResponseData(void)
{
  emberAfResponseType = ZCL_UTIL_RESP_NORMAL;
  // To prevent accidentally sending to someone else,
  // set the destination to ourselves.
  emberAfResponseDestination = emberAfGetNodeId();
  MEMSET(appResponseData, 0, EMBER_AF_RESPONSE_BUFFER_LEN);
  appResponseLength = 0;
  MEMSET(&emberAfResponseApsFrame, 0, sizeof(EmberApsFrame));
}

uint8_t * emberAfPutInt8uInResp(uint8_t value)
{
  //emberAfDebugPrint("try %x max %x\r\n", appResponseLength, EMBER_AF_RESPONSE_BUFFER_LEN);
  if (appResponseLength < EMBER_AF_RESPONSE_BUFFER_LEN) {
    //emberAfDebugPrint("put %x at spot %x\r\n", value, appResponseLength);
    appResponseData[appResponseLength] = value;
    appResponseLength++;
    return &appResponseData[appResponseLength - 1];
  }

  return NULL;
}

uint16_t * emberAfPutInt16uInResp(uint16_t value)
{
  uint8_t * low = emberAfPutInt8uInResp(LOW_BYTE(value));
  uint8_t * high = emberAfPutInt8uInResp(HIGH_BYTE(value));

  if (low && high) {
    return (uint16_t *) low;
  } else {
    return NULL;
  }
}

uint32_t * emberAfPutInt32uInResp(uint32_t value)
{
  uint8_t * a =  emberAfPutInt8uInResp(BYTE_0(value));
  uint8_t * b =  emberAfPutInt8uInResp(BYTE_1(value));
  uint8_t * c =  emberAfPutInt8uInResp(BYTE_2(value));
  uint8_t * d =  emberAfPutInt8uInResp(BYTE_3(value));

  if (a && b && c && d) {
    return (uint32_t *)a;
  } else {
    return NULL;
  }
}

uint32_t * emberAfPutInt24uInResp(uint32_t value)
{
  uint8_t * a = emberAfPutInt8uInResp(BYTE_0(value));
  uint8_t * b = emberAfPutInt8uInResp(BYTE_1(value));
  uint8_t * c = emberAfPutInt8uInResp(BYTE_2(value));

  if (a && b && c) {
    return (uint32_t *) a;
  } else {
    return NULL;
  }
}

uint8_t * emberAfPutBlockInResp(const uint8_t* data, uint16_t length)
{
  if ((appResponseLength + length) < EMBER_AF_RESPONSE_BUFFER_LEN) {
    MEMMOVE(appResponseData + appResponseLength, data, length);
    appResponseLength += length;
    return &appResponseData[appResponseLength - length];
  } else {
    return NULL;
  }
}

uint8_t * emberAfPutStringInResp(const uint8_t *buffer)
{
  uint8_t length = emberAfStringLength(buffer);
  return emberAfPutBlockInResp(buffer, length + 1);
}

uint8_t * emberAfPutDateInResp(EmberAfDate *value)
{
  uint8_t * a = emberAfPutInt8uInResp(value->year);
  uint8_t * b = emberAfPutInt8uInResp(value->month);
  uint8_t * c = emberAfPutInt8uInResp(value->dayOfMonth);
  uint8_t * d = emberAfPutInt8uInResp(value->dayOfWeek);

  if (a && b && c && d) {
    return a;
  } else {
    return NULL;
  }
}

// ------------------------------------
// Utilities for reading from RAM buffers (reading from incoming message
// buffer)
// ------------------------------------

// retrieves an uint32_t which contains between 1 and 4 bytes of relevent data
// depending on number of bytes requested.
uint32_t emberAfGetInt(const uint8_t* message,
                       uint16_t currentIndex,
                       uint16_t msgLen,
                       uint8_t bytes)
{
  // This printout needs to stay here, otherwise `./z run linkkey` test fails.
  // We should rework the test so we can remove this....
  if ((currentIndex + bytes) > msgLen) {
    emberAfDebugPrintln("GetInt, %x bytes short", bytes);
    emberAfDebugFlush();
    return 0;
  }
  return sl_signature_decode_int(message, currentIndex, msgLen, bytes);
}

uint32_t emberAfGetInt32u(const uint8_t* message, uint16_t currentIndex, uint16_t msgLen)
{
  return emberAfGetInt(message, currentIndex, msgLen, 4);
}

uint32_t emberAfGetInt24u(const uint8_t* message, uint16_t currentIndex, uint16_t msgLen)
{
  return emberAfGetInt(message, currentIndex, msgLen, 3);
}

uint16_t emberAfGetInt16u(const uint8_t* message, uint16_t currentIndex, uint16_t msgLen)
{
  return (uint16_t)emberAfGetInt(message, currentIndex, msgLen, 2);
}

uint8_t* emberAfGetString(uint8_t* message, uint16_t currentIndex, uint16_t msgLen)
{
  // Strings must contain at least one byte for the length.
  if (msgLen <= currentIndex) {
    emberAfDebugPrintln("GetString: %p", "buffer too short");
    return zeroLenBytePtr;
  }

  // Starting from the current index, there must be enough bytes in the message
  // for the string and the length byte.
  if (msgLen < currentIndex + emberAfStringLength(&message[currentIndex]) + 1) {
    emberAfDebugPrintln("GetString: %p", "len byte wrong");
    return zeroLenBytePtr;
  }

  return &message[currentIndex];
}

uint8_t* emberAfGetLongString(uint8_t* message, uint16_t currentIndex, uint16_t msgLen)
{
  // Long strings must contain at least two bytes for the length.
  if (msgLen <= currentIndex + 1) {
    emberAfDebugPrintln("GetLongString: %p", "buffer too short");
    return zeroLenBytePtr;
  }

  // Starting from the current index, there must be enough bytes in the message
  // for the string and the length bytes.
  if (msgLen
      < currentIndex + emberAfLongStringLength(&message[currentIndex]) + 2) {
    emberAfDebugPrintln("GetLongString: %p", "len bytes wrong");
    return zeroLenBytePtr;
  }

  return &message[currentIndex];
}

uint8_t emberAfStringLength(const uint8_t *buffer)
{
  // The first byte specifies the length of the string.  A length of 0xFF means
  // the string is invalid and there is no character data.
  return (buffer[0] == 0xFF ? 0 : buffer[0]);
}

uint16_t emberAfLongStringLength(const uint8_t *buffer)
{
  // The first two bytes specify the length of the long string.  A length of
  // 0xFFFF means the string is invalid and there is no character data.
  uint16_t length = emberAfGetInt16u(buffer, 0, 2);
  return (length == 0xFFFF ? 0 : length);
}

uint8_t emberAfGetDate(uint8_t* message,
                       uint16_t currentIndex,
                       uint16_t msgLen,
                       EmberAfDate *destination)
{
  if ((currentIndex + 4) > msgLen) {
    emberAfDebugPrintln("GetDate, %x bytes short", 4);
    emberAfDebugFlush();
    return 0;
  }
  destination->year       = message[(currentIndex + 0)];
  destination->month      = message[(currentIndex + 1)];
  destination->dayOfMonth = message[(currentIndex + 2)];
  destination->dayOfWeek  = message[(currentIndex + 3)];
  return 4;
}

uint8_t sli_decode_parse_one_byte(EmberAfClusterCommand *cmd, uint16_t payloadOffset)
{
  return (cmd->buffer)[payloadOffset];
}

uint16_t sli_decode_parse_two_bytes(EmberAfClusterCommand * cmd, uint16_t payloadOffset)
{
  return emberAfGetInt16u(cmd->buffer, payloadOffset, cmd->bufLen);
}

uint32_t sli_decode_parse_three_bytes(EmberAfClusterCommand * cmd, uint16_t payloadOffset)
{
  return emberAfGetInt24u(cmd->buffer, payloadOffset, cmd->bufLen);
}

uint32_t sli_decode_parse_four_bytes(EmberAfClusterCommand * cmd, uint16_t payloadOffset)
{
  return emberAfGetInt32u(cmd->buffer, payloadOffset, cmd->bufLen);
}

uint8_t *sli_decode_string(EmberAfClusterCommand * cmd, uint16_t payloadOffset)
{
  return emberAfGetString(cmd->buffer, payloadOffset, cmd->bufLen);
}

uint8_t *sli_decode_long_string(EmberAfClusterCommand * cmd, uint16_t payloadOffset)
{
  return emberAfGetLongString(cmd->buffer, payloadOffset, cmd->bufLen);
}

uint8_t *sli_decode_bytes(EmberAfClusterCommand * cmd, uint16_t payloadOffset)
{
  return cmd->buffer + payloadOffset;
}

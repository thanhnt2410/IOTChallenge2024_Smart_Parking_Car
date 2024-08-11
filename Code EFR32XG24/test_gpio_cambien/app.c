/***************************************************************************//**
 * @file
 * @brief Top level application functions
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

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
#include <app.h>
void app_init(void)
{
  GPIO_PinModeSet(onBoardLED_PORT, onBoardLED_PIN, gpioModePushPull, 1);
  // Configure Push PB0 as input
    GPIO_PinModeSet(gpioPortA, 0, gpioModeInput, 0);
}

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{
  if (GPIO_PinInGet(gpioPortA, 0))
      {
        GPIO_PinOutClear(onBoardLED_PORT, onBoardLED_PIN);
        //GPIO_PinOut
      }
      else
      {
        GPIO_PinOutSet(onBoardLED_PORT, onBoardLED_PIN);
      }
}

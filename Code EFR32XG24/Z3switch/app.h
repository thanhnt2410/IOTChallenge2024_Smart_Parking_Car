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

#ifndef APP_H
#define APP_H


#include "em_gpio.h"
#include "ember-types.h"
#include "em_wdog.h"

#define onBoardLED_PORT gpioPortA
#define onBoardLED_PIN  4
/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
void getdata_init(void);
void getdata();

void initCMU();

void initGPIO();

void initIADC();
void IADC_main();

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void);

#endif  // APP_H

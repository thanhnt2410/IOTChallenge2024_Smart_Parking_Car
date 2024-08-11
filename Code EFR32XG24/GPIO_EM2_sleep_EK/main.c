/***************************************************************************//**
 * @file main.c
 * @brief main() function.
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
#include "sl_component_catalog.h"
#include "sl_system_init.h"
#include "app.h"
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
#include "sl_power_manager.h"
#endif
#if defined(SL_CATALOG_KERNEL_PRESENT)
#include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
#include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT

#include "em_device.h"
#include "em_chip.h"
#include "em_emu.h"
#include "em_gpio.h"
#include "em_cmu.h"

#define onBoardLED_PORT gpioPortA
#define onBoardLED_PIN  4
int i=0;
//#define SENSOR_PIN    gpioPortA, 0
//#define LED_PIN       gpioPortA, 7

// Hàm xử lý ngắt GPIO EVEN
//void GPIO_EVEN_IRQHandler(void)
//{
//    // Kiểm tra nguồn ngắt
//    if (GPIO_IntGet() & (1 << 0))  // 1 << 0 tương ứng với PA0
//    {
//        // Xóa cờ ngắt
//        GPIO_IntClear(1 << 0);
//
//        // Kiểm tra trạng thái của cảm biến
//        if (GPIO_PinInGet(gpioPortA, 0))
//        {
//            i=1;
//            // Cảm biến được kéo lên cao, LED sáng
//            GPIO_PinOutSet(gpioPortA, 7);
//        }
//        else
//        {
//            i=0;
//            // Cảm biến gửi dữ liệu 0, LED tắt và đưa vi điều khiển vào chế độ EM2
//            GPIO_PinOutClear(gpioPortA, 7);
//            EMU_EnterEM2(true);
//        }
//    }
//}
void GPIO_EVEN_IRQHandler(void)
{
  // Get and clear all pending GPIO interrupts
  uint32_t interruptMask = GPIO_IntGet();
  GPIO_IntClear(interruptMask);
  if (interruptMask & (1 << 0))
    {
      //GPIO_PinOutToggle(onBoardLED_PORT, onBoardLED_PIN);
      if(GPIO_PinInGet(gpioPortB, 0))
              {
                GPIO_PinOutSet(onBoardLED_PORT, onBoardLED_PIN);
              }
      else
              {
                GPIO_PinOutClear(onBoardLED_PORT, onBoardLED_PIN);
                EMU_EnterEM2(true);
              }
    }
}

void setupGPIOInterrupt(void)
{
  CMU_ClockEnable(cmuClock_GPIO, true);
    // Cấu hình chân cảm biến làm nguồn ngắt
    GPIO_PinModeSet(gpioPortA, 0, gpioModeInputPull , 1);  // Kéo lên cao
    GPIO_PinModeSet(gpioPortB, 0, gpioModeInputPull , 1);
    // Cấu hình ngắt cho chân cảm biến
    GPIO_ExtIntConfig(gpioPortA, 0, 0, true, true, true);

    // Xóa và bật ngắt cho GPIO EVEN
    NVIC_ClearPendingIRQ(GPIO_EVEN_IRQn);
    NVIC_EnableIRQ(GPIO_EVEN_IRQn);
}

int main(void)
{
  // Initialize Silicon Labs device, system, service(s) and protocol stack(s).
  // Note that if the kernel is present, processing task(s) will be created by
  // this call.
  sl_system_init();

  // Initialize the application. For example, create periodic timer(s) or
  // task(s) if the kernel is present.
  app_init();
  CHIP_Init();

  // Thiết lập chân LED
  GPIO_PinModeSet(onBoardLED_PORT, onBoardLED_PIN, gpioModePushPull, 1);
  // Configure Push PB0 as input
  //GPIO_PinModeSet(gpioPortA, 0, gpioModeInput, 0);
  //sl_sleeptimer_delay_millisecond(1000);
  // Thiết lập ngắt cho GPIO
  setupGPIOInterrupt();



      // Chuyển vào chế độ EM2 ngay lập tức
  EMU_EnterEM2(true);


#if defined(SL_CATALOG_KERNEL_PRESENT)
  // Start the kernel. Task(s) created in app_init() will start running.
  sl_system_kernel_start();
#else // SL_CATALOG_KERNEL_PRESENT
  while (1) {
    // Do not remove this call: Silicon Labs components process action routine
    // must be called from the super loop.
    sl_system_process_action();

    // Application process.
    app_process_action();
    //GPIO_PinOutGet(gpioPortA, 7);
    //GPIO_PinOutSet(onBoardLED_PORT, onBoardLED_PIN);
    EMU_EnterEM2(true);



#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
    // Let the CPU go to sleep if the system allows it.
    sl_power_manager_sleep();
#endif
  }
#endif // SL_CATALOG_KERNEL_PRESENT
}

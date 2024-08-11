#include "app/framework/include/af.h"
#include "em_gpio.h"
#include "em_emu.h"

#include "em_device.h"

#include "em_cmu.h"
#include "em_iadc.h"
#include "math.h"

#define SOURCE_ENDPOINT 1
#define DESTINATION_ENDPOINT 1
#define MSG_INTERVAL_MS 5000
#define EMBER_AF_DOXYGEN_CLI_COMMAND_BUILD_SEND_MSG_RAW

#define onBoardLED_PORT gpioPortB
#define onBoardLED_PIN  0

//---------------Setup ADC-----------------
// Set CLK_ADC to 40 MHz - this will be adjusted to HFXO frequency in the
// initialization process
#define CLK_SRC_ADC_FREQ        40000000  // CLK_SRC_ADC - 40 MHz max
#define CLK_ADC_FREQ            10000000  // CLK_ADC - 10 MHz max in normal mode

// Number of scan channels
#define NUM_INPUTS 2
 /* ...for port A, port B, and port C/D pins, even and odd, respectively.
 */
#define IADC_INPUT_0_PORT_PIN     iadcPosInputPortBPin1;
#define IADC_INPUT_1_PORT_PIN     iadcPosInputPortBPin2;

#define IADC_INPUT_0_BUS          BBUSALLOC
#define IADC_INPUT_0_BUSALLOC     GPIO_BBUSALLOC_BEVEN0_ADC0
#define IADC_INPUT_1_BUS          BBUSALLOC
#define IADC_INPUT_1_BUSALLOC     GPIO_BBUSALLOC_BODD0_ADC0

// GPIO output toggle to notify IADC conversion complete
#define GPIO_OUTPUT_0_PORT        gpioPortA
#define GPIO_OUTPUT_0_PIN         4

#if defined(BSP_WSTK_BRD4181A) || defined(BSP_WSTK_BRD4182A)
// HFXO frequency set for BRD4181A and BRD4182A
#define HFXO_FREQ               38400000
#else
// HFXO frequency for rest of radio boards
#define HFXO_FREQ               39000000
#endif

/*******************************************************************************
***************************   GLOBAL VARIABLES   *******************************
 ******************************************************************************/

static volatile double scanResult[NUM_INPUTS];

/**************************************************************************//**
 * @brief  CMU initialization
 *****************************************************************************/
//---------------End define ADC-------------------
static volatile int battery =0;
static uint32_t messageCounter = 1;
static sl_zigbee_event_t sendMsgEvent;
//static uint8_t msg[8] ={0x00, 0x0A, 0x00, 0x11, 0x22, 0x33, 0x44, 0x00};
int light =0, fire_sensor =0;
void getdata_init(void)
{

  GPIO_PinModeSet(onBoardLED_PORT, onBoardLED_PIN, gpioModePushPull, 1);
  // Configure Push PB3 as input light sensor
  GPIO_PinModeSet(gpioPortB, 3, gpioModeInput, 0);
  GPIO_PinModeSet(gpioPortB, 0, gpioModeInput, 0);    // cảm biến cháy
}

static void sendMsgEventHandler(sl_zigbee_event_t *event);

// Function to send a message
void sendTestMessage(void) {
  EmberStatus status;
  EmberNodeId destination = 0x0000; // Node ID của Coordinator
  uint8_t message[10];
  snprintf((char *)message, sizeof(message), "test%lu", messageCounter++);
  static uint8_t msg[8] ={0x00, 0x0A, 0x00, 0x11, 0x22, 0x00, 0x00, 0x00};

  // Khởi tạo APS frame để gửi tin nhắn
  EmberApsFrame apsFrame;
  apsFrame.profileId = 0x0104; // Home Automation profile ID
  apsFrame.sourceEndpoint = SOURCE_ENDPOINT;
  apsFrame.destinationEndpoint = DESTINATION_ENDPOINT;
  apsFrame.clusterId = 0x000F; // Basic cluster ID
  apsFrame.options = EMBER_AF_DEFAULT_APS_OPTIONS;
  apsFrame.groupId = 0;
  apsFrame.sequence = 0;
//  msg[3] +=1;
//  msg[4] +=1;
//  msg[5] +=1;
//  msg[6] +=1;
//  msg[7] +=1;
//  msg[6]=0x00;
  msg[7] = (uint8_t)battery; // pin, max 100 tương đương 100%
  //msg[6] là giá trị cảm biến
  msg[6] = (uint8_t)light;
  msg[5] = (uint8_t)fire_sensor;
//  if (raw==1)
//         {
//           msg[6]=0x00;
//         }
//  else
//    {
//      msg[6]=0x01;
//    }


  // Gửi tin nhắn unicast đến thiết bị đích
  status = emberAfSendUnicast(EMBER_OUTGOING_DIRECT, destination, &apsFrame, 8 , msg);
  if (status != EMBER_SUCCESS) {
    emberAfCorePrintln("Error: %d", status);
  } else {
    //emberAfCorePrintln("Message sent: %s", message);
      emberAfCorePrint("Message sent:");
            for(int i=0;i<8;i++){
          emberAfCorePrint(" %x", msg[i]);}
            emberAfCorePrintln(" ");
  }
}
void getdata()
{

  if (GPIO_PinInGet(gpioPortB, 3))
         {
           light=0;
           GPIO_PinOutClear(onBoardLED_PORT, onBoardLED_PIN);
         }
  else
          {
            light=1;
            GPIO_PinOutSet(onBoardLED_PORT, onBoardLED_PIN);
          }
  battery = (int)round(scanResult[1] *100);
  if (GPIO_PinInGet(gpioPortB, 0))
           {
             fire_sensor=0;
             GPIO_PinOutClear(onBoardLED_PORT, onBoardLED_PIN);
           }
    else
            {
              fire_sensor=1;
              GPIO_PinOutSet(onBoardLED_PORT, onBoardLED_PIN);
            }
//  if(scanResult[1]>1)
//            {
//              GPIO_PinOutSet(onBoardLED_PORT, onBoardLED_PIN);
//            }
//  else
//          {
//            GPIO_PinOutClear(onBoardLED_PORT, onBoardLED_PIN);
//          }

}

void emberAfMainInitCallback(void) {
  emberAfCorePrintln("Main init");

  // Thiết lập sự kiện để gửi tin nhắn
  sl_zigbee_event_init(&sendMsgEvent, sendMsgEventHandler);
  sl_zigbee_event_set_delay_ms(&sendMsgEvent, MSG_INTERVAL_MS);
//  getdata_init();
}

// Hàm callback để gửi tin nhắn mỗi khi timer được gọi
static void sendMsgEventHandler(sl_zigbee_event_t *event) {
  getdata();
  sl_sleeptimer_delay_millisecond(1000);
  sendTestMessage();
  sl_zigbee_event_set_delay_ms(&sendMsgEvent, MSG_INTERVAL_MS);
}

// Hàm khởi tạo ADC

/**************************************************************************//**
 * @brief  CMU initialization
 *****************************************************************************/
void initCMU(void)
{
  // Initialization structure for HFXO configuration
  CMU_HFXOInit_TypeDef hfxoInit = CMU_HFXOINIT_DEFAULT;

  // Check if device has HFXO configuration information in DEVINFO page
  if (DEVINFO->MODULEINFO & DEVINFO_MODULEINFO_HFXOCALVAL) {
    // Use the DEVINFO page's CTUNE values
    hfxoInit.ctuneXoAna = (DEVINFO->MODXOCAL & DEVINFO_MODXOCAL_HFXOCTUNEXOANA_DEFAULT)
        >> _DEVINFO_MODXOCAL_HFXOCTUNEXOANA_SHIFT;
    hfxoInit.ctuneXiAna = (DEVINFO->MODXOCAL & DEVINFO_MODXOCAL_HFXOCTUNEXIANA_DEFAULT)
        >> _DEVINFO_MODXOCAL_HFXOCTUNEXIANA_SHIFT;
  }

  // Configure HFXO settings
  CMU_HFXOInit(&hfxoInit);

  // Set system HFXO frequency
  SystemHFXOClockSet(HFXO_FREQ);

  // Enable HFXO oscillator, and wait for it to be stable
  CMU_OscillatorEnable(cmuOsc_HFXO, true, true);

  // Select HFXO as the EM01GRPA clock
  CMU_ClockSelectSet(cmuClock_EM01GRPACLK, cmuSelect_HFXO);
}

/**************************************************************************//**
 * @brief  GPIO initialization
 *****************************************************************************/
void initGPIO(void)
{
  /*
   * On EFR32xG21 devices, CMU_ClockEnable() calls have no effect as
   * clocks are enabled/disabled on-demand in response to peripheral
   * requests.  Deleting such lines is safe on xG21 devices and will
   * provide a small reduction in code size.
   */
  CMU_ClockEnable(cmuClock_GPIO, true);

  // Output toggled upon completing each IADC scan sequence
  GPIO_PinModeSet(GPIO_OUTPUT_0_PORT, GPIO_OUTPUT_0_PIN, gpioModePushPull, 0);
  //
  //GPIO_PinModeSet(gpioPortB, 1, gpioModeInput, 0);
}

/**************************************************************************//**
 * @brief  IADC initialization
 *****************************************************************************/
void initIADC(void)
{
  // Declare initialization structures
  IADC_Init_t init = IADC_INIT_DEFAULT;
  IADC_AllConfigs_t initAllConfigs = IADC_ALLCONFIGS_DEFAULT;
  IADC_InitScan_t initScan = IADC_INITSCAN_DEFAULT;

  // Scan table structure
  IADC_ScanTable_t scanTable = IADC_SCANTABLE_DEFAULT;

  CMU_ClockEnable(cmuClock_IADC0, true);

  // Use the EM01GRPACLK as the IADC clock
  CMU_ClockSelectSet(cmuClock_IADCCLK, cmuSelect_EM01GRPACLK);

  // Shutdown between conversions to reduce current
  init.warmup = iadcWarmupNormal;

  // Set the HFSCLK prescale value here
  init.srcClkPrescale = IADC_calcSrcClkPrescale(IADC0, CLK_SRC_ADC_FREQ, 0);

  /*
   * The IADC local timer runs at CLK_SRC_ADC_FREQ, which is at least
   * 2x CLK_ADC_FREQ. CLK_SRC_ADC_FREQ in this example is equal to the
   * HFXO frequency. Dividing the frequency of the HFXO by 1000 will give
   * the tick count for 1 ms trigger rate.
   * For example - if HFXO freq = 38.4 MHz,
   *
   * ticks for 1 ms trigger = 38400000 / 1000
   * ticks =  38400
   */
  init.timerCycles = CMU_ClockFreqGet(cmuClock_IADCCLK)/1000;

  /*
   * Configuration 0 is used by both scan and single conversions by
   * default.  Use internal bandgap as the reference and specify the
   * reference voltage in mV.
   *
   * Resolution is not configurable directly but is based on the
   * selected oversampling ratio (osrHighSpeed), which defaults to
   * 2x and generates 12-bit results.
   */
  initAllConfigs.configs[0].reference = iadcCfgReferenceInt1V2;
  initAllConfigs.configs[0].vRef = 1210;
  initAllConfigs.configs[0].osrHighSpeed = iadcCfgOsrHighSpeed2x;
  initAllConfigs.configs[0].analogGain = iadcCfgAnalogGain0P5x;

  /*
   * CLK_SRC_ADC must be prescaled by some value greater than 1 to
   * derive the intended CLK_ADC frequency.
   *
   * Based on the default 2x oversampling rate (OSRHS)...
   *
   * conversion time = ((4 * OSRHS) + 2) / fCLK_ADC
   *
   * ...which results in a maximum sampling rate of 833 ksps with the
   * 2-clock input multiplexer switching time is included.
   */
  initAllConfigs.configs[0].adcClkPrescale = IADC_calcAdcClkPrescale(IADC0,
                                                                     CLK_ADC_FREQ,
                                                                     0,
                                                                     iadcCfgModeNormal,
                                                                     init.srcClkPrescale);

  /*
   * The IADC local timer triggers conversions.
   *
   * Set the SCANFIFODVL flag when scan FIFO holds 2 entries.  In this
   * example, the interrupt associated with the SCANFIFODVL flag in
   * the IADC_IF register is not used.
   *
   * Tag each FIFO entry with scan table entry ID.
   */
  initScan.triggerSelect = iadcTriggerSelTimer;
  initScan.dataValidLevel = iadcFifoCfgDvl2;
  initScan.showId = true;

  /*
   * Configure entries in the scan table.  CH0 is single-ended from
   * input 0; CH1 is single-ended from input 1.
   */
  scanTable.entries[0].posInput = IADC_INPUT_0_PORT_PIN;
  scanTable.entries[0].negInput = iadcNegInputGnd;
  scanTable.entries[0].includeInScan = true;

  scanTable.entries[1].posInput = IADC_INPUT_1_PORT_PIN;
  scanTable.entries[1].negInput = iadcNegInputGnd;
  scanTable.entries[1].includeInScan = true;

  // Initialize IADC
  IADC_init(IADC0, &init, &initAllConfigs);

  // Initialize scan
  IADC_initScan(IADC0, &initScan, &scanTable);

  // Enable the IADC timer (must be after the IADC is initialized)
  IADC_command(IADC0, iadcCmdEnableTimer);

  // Allocate the analog bus for ADC0 inputs
  GPIO->IADC_INPUT_0_BUS |= IADC_INPUT_0_BUSALLOC;
  GPIO->IADC_INPUT_1_BUS |= IADC_INPUT_1_BUSALLOC;

  // Enable scan interrupts
  IADC_enableInt(IADC0, IADC_IEN_SCANFIFODVL);

  // Enable ADC interrupts
  NVIC_ClearPendingIRQ(IADC_IRQn);
  NVIC_EnableIRQ(IADC_IRQn);
}

/**************************************************************************//**
 * @brief  IADC interrupt handler
 *****************************************************************************/
void IADC_IRQHandler(void)
{
  IADC_Result_t sample;

  // Toggle GPIO to signal scan completion
//  GPIO_PinOutToggle(GPIO_OUTPUT_0_PORT, GPIO_OUTPUT_0_PIN);

  // While the FIFO count is non-zero...
  while (IADC_getScanFifoCnt(IADC0))
  {
    // Pull a scan result from the FIFO
    sample = IADC_pullScanFifoResult(IADC0);

    /*
     * Calculate the voltage converted as follows:
     *
     * For single-ended conversions, the result can range from 0 to
     * +Vref, i.e., for Vref = VBGR = 1.21V, and with analog gain = 0.5,
     * 0xFFF represents the full scale value of 2.42V.
     */
    scanResult[sample.id] = sample.data * 2.42 / 0xFFF;
  }

  /*
   * Clear the scan table complete interrupt.  Reading from the FIFO
   * does not do this automatically.
   */
  IADC_clearInt(IADC0, IADC_IF_SCANFIFODVL);
}
void IADC_main()
{
  IADC_command(IADC0, iadcCmdStartScan);
}

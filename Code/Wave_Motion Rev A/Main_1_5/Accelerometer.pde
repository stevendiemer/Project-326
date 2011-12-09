#include <SPI.h>
#include "ADCSetup.h"
#include "SPIMemory.h"
#include "SoundEffects.h"

/***********************************************
 * This function is responsible for getting the
 * accelerometer values when sound effects 
 * playback mode is enabled
 *
 * Parameter axis - Determines which axis to
 *                 read from during operation
 *
 * Return ADC - Digital Value of Accelerometer
 ***********************************************/
uint16_t getAccelVal(byte axis)
{
  setAdmux(axis);          // Axis to read from, X or Y
  ADCSRA |= _BV(ADSC);     // ADC Start Conversion Command
  while (ADCSRA & _BV(ADSC));  // Wait for conversion to finish
  return ADC;                  // Return ADC Value
}

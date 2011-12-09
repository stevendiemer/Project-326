#include <avr/io.h>
#include "ADCSetup.h"

// Power reduce bit for ADC operation
#define PWR_REDUCE_ADC 0b00000001
// Bit for enabling SPI communication
#define SPI_COM 0b01000000
// Bit for defining SPI Master Mode
#define MSTR 0b00010000
// Bit for setting 1:1 Prescale on Timer 1B
#define TCCR1B_1 0b00000001

/************************************************
 * Sets up ADC in order to pull values from the
 * microphone during record operation
 ************************************************/
void configureADC()
{
    PRR &= ~PWR_REDUCE_ADC;                      // Disables Power Reduction for ADC
    SPCR |= (_BV(SPI_COM) | _BV(MSTR));          // Enable SPI and Master Mode 
    ADCSRA = _BV(ADEN) | _BV(ADPS2)| _BV(ADPS0); // ENABLE ADC, PRESCALE: 4
    ADMUX = _BV(REFS0);                          // SET VOLTAGE REFERENCE FOR ADC AT VCC
    
    //TCNT1 prescaler of 1:1
    TCCR1B |= TCCR1B_1;
}

/********************************************************
 * Configures ADC to determine which channel
 * channel to read values from
 *
 * Parameter reg_val - Channel to read analog values from
 ********************************************************/
void setAdmux(byte reg_val)
{
  ADMUX = (reg_val|(_BV(REFS0)));  // Configure ADC for proper Channel and reference voltage
}

/*********************************************************
 * Enables ADC and sets the prescaler value for operation
 *********************************************************/
void setADPS(byte preScaleVal)
{
  ADCSRA = _BV(ADEN) | preScaleVal;  //Enable ADC and set prescaler
}

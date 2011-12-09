#include <SPI.h>
#include "ADCSetup.h"
#include "SPIMemory.h"
#include "SoundEffects.h"

void record_init();  // Function Prototypes
void playAudio();
void playSFX();

// Define Arduino Pin Number Names
#define CS_DAC 9
#define CS_MEM 10
#define MOSI 11
#define MISO 12
#define SCLK 13
#define RCRD 2
#define PLAY 3
#define RCRD_LED 5
#define PLAY_LED 4
#define SFXMODE 6
#define RCRDMODE 7

// Microphone
// ADMUX Configuration for A0 Microphone
#define MIC 0b00000000

// Memory
// Erase Full Chip
#define EFMA 0b01100000
// Read Status Register
#define RDSR 0b00000101
// Enable Writing to Status Register
#define EWSR 0b01010000
// Write to Status Register
#define WRSR 0b00000001
// Enable Writing to Memory
#define WREN 0b00000110
// Disable Writing to Memory
#define WRDI 0b00000100
// Auto Address Increment Programming
#define AAI 0b10101101
// Write to Memory
#define PRGB 0b00000010
// Read Memory
#define RMEM 0b00000011
// Memory Chip Select
#define MEM_CS 0x04
// Protect 2nd Half of Flash Memory
#define PROTECT_MEM 0b00011000
// Unprotect All Memory
#define UNPROTECT_ALL 0b00000000

// Accelerometer
// ADMUX Configuration for A3 Y-Direction
#define YACCEL 0b00000011
// ADMUX Configuration for A2 X-Direction
#define XACCEL 0b00000010

// DAC
// DAC Header Inital Command
#define DAC_HEADER 0b01110000
// DAC Chip Select Line
#define DAC_CS 0x02

// ADC
// ADC Prescale 64
#define ADC64 0b00000110
// ADC Prescale 8
#define ADC8 0b00000011
// MSB ADC Conversion
#define MSB_ADC 0b11111111
// LSB ADC Conversion
#define LSB_ADC 0b00000011

int sensorVal = 0;         // ADC value from Microphone
byte rcrd_flag = 0;        // Determines if audio has been played
byte memMSB = 0;           // Most Significant Bits for Memory
byte memLSB = 0;           // Least Significant Bits for Memory
uint32_t increment = 0;    // Used to determine length of audio
uint32_t increment2 = 0;   // Used to determine length of playback
int memory_cleared = 0;    // Shows if memory has been cleared
int ammo = 3;              // Initial ammo count upon power up
int switch_flag = 0;
int alternateMode = 0;

/*****************************************************************
* Configure Arduino with proper pin directions and with
* proper initial values.
*   
* Initializes SPI communication and also configures the ADC,
* and configures the memory.
******************************************************************/    
void setup(){
  // Pin Configurations
  pinMode(CS_DAC, OUTPUT);
  pinMode(CS_MEM, OUTPUT);
  pinMode(MOSI, OUTPUT);
  pinMode(MISO, INPUT);
  pinMode(SCLK, OUTPUT);
  pinMode(RCRD, INPUT);
  pinMode(PLAY, INPUT);
  pinMode(SFXMODE, INPUT);
  pinMode(RCRDMODE, INPUT);
  pinMode(RCRD_LED, OUTPUT);
  pinMode(PLAY_LED, OUTPUT);
  digitalWrite(CS_DAC, HIGH);
  digitalWrite(RCRD, HIGH);
  digitalWrite(PLAY, HIGH);
  digitalWrite(SFXMODE, HIGH);
  digitalWrite(RCRDMODE, HIGH);
  PORTB |= MEM_CS;

  // SPI Enable, Master Node
  SPCR = _BV(SPE)|_BV(MSTR);
  SPI.setClockDivider(SPI_CLOCK_DIV8);  // Set SPI clock frequency
  SPI.begin();
  Serial.begin(9600);
  configureADC();         // Sets up ADC for mic input conversion
  
  //Removes memory protection
  unprotect(PROTECT_MEM);            // Configures memory and protects sound bytes in Flash
  
  /*******************************************************
   * Use Only After Consulting Users Manual
   * Unintended Usage May Result In LOSS Of Data Stored
   *******************************************************/  
  //bytesToMemory();      // Used only when uploading sound effects to board
  
  //Clears Full Memory Allocation
  clearRecordSector();
}

/****************************************************************************
* This function is responsible for running the body of the code. It controls
* the modes of playback and contains the function calls for basic operation
* of the device.
*****************************************************************************/
void loop(){ 

  // Check to see if record mode is enabled
  while (digitalRead(RCRDMODE) == LOW){
    
    /* Check for Toggling Modes of Audio Playback
       When held upside down for 3 seconds, Mode is switched*/
    while ((getAccelVal(YACCEL) < 270) && (alternateMode < 3))
    { 
      alternateMode++;                // Alternate Mode Counter
      if (alternateMode >= 3)         // Check for 3 Seconds
      {
        switch_flag ^= 1;             // Toggle Play Mode
        getSound(0x20, 0x00, 0x01, 25438, 15);  // Play Sound Indicating Change
      }  
      delay(1000);                    // Delay 1 second
    }
    
    alternateMode = 0;                // Alternate Mode Counter
    
    // While Record button is being held, write to memory        
    while (digitalRead(RCRD) == LOW)
    {
      if(memory_cleared == 0)    // Check if Memory is currently cleared
      {
        record_init();           // Initilizes the Memory for recording
      }
      
      // Start Conversion from A0 or Mic input
      ADCSRA |= _BV(ADSC);
      
      // Passes bytes to memory in two seperate bytes and increments
      nextAAI((sensorVal >> 2) & MSB_ADC,  sensorVal & LSB_ADC);
      
      
      memory_cleared = 1; // Flag states that memory has been cleared and is in record mode
      rcrd_flag = 1;      // Signifies that a message has been recorded
      increment++;        // Records time and number of bytes of recording
      
      
      while (ADCSRA & _BV(ADSC));  // Wait Until Conversion is done
      sensorVal = ADC;             // Obtains analog input from microphone
    }
    
    memory_cleared = 0;            // Memory is no longer cleared
    digitalWrite(RCRD_LED, LOW);   // Record LED turned off to signify finished recording
    
    // If message has been recorded
    if(rcrd_flag == 1)
    {
      //Wait until the busy line goes low indicating done with writing to flash
      while((readStatusRegister() & 0x08) == 1);
      
      //Write Disable to Stop AAI
      memWriteDisable();
      delayMicroseconds(2);
  
      //Wait for user to press play or record or switch mode of operation
      while((digitalRead(PLAY) == HIGH) && (digitalRead(RCRD) == HIGH) && (digitalRead(RCRDMODE) == LOW)
                && (getAccelVal(YACCEL) > 270));
      
      // Check to see if user has pressed the Play button
      if(digitalRead(PLAY) == LOW)
      {
        if (switch_flag == 0)
          playAudio();    // Play recorded audio
        else
          circlePlayback();
      }
      else if ((digitalRead(RCRD) == LOW) || (digitalRead(RCRDMODE) == HIGH))
      {
        rcrd_flag = 0;  // Set as no message recorded
      }
      else{}
    }
  }
  
  // Check if sound effects mode is enabled
  while(digitalRead(SFXMODE) == LOW)
  {
    playSFX();  // Retrieve pre-stored audio for playback
  }
}

/********************************************************
 * Initializes the memory for writing audio to the Flash
 ********************************************************/
void record_init()
{
  setADPS(ADC64);               // Set ADC Prescale 64
  setAdmux(MIC);                // Set Admux to read from A0
  clearRecordSector();          // Clears front half of memory for Writing
  startAAI(0, 0, 0, 0, 0);      // Start Address Auto Increment
  increment = 0;                // Counter Variable
  rcrd_flag = 0;                // Represents if a message has been recorded
  digitalWrite(RCRD_LED, HIGH); // Record LED
}

/********************************************************
 * Writes Audio Recording to the ADC
 ********************************************************/
void playAudio(){
  int accelVal = 8;      // Standard delay value for playback
  increment2=0;          // Counter for bytes sent
  
  digitalWrite(PLAY_LED, HIGH);  // Shows sound being played
  PORTB &= ~MEM_CS;              // Select memory to talk to
  SPI.transfer(RMEM);            // Read data from memory
  SPI.transfer(0);    // Start location for audio in 3 seperate bytes 0, 0, 0 
  SPI.transfer(0);
  SPI.transfer(0);
  
  setAdmux(XACCEL);   // Set ADC to read from the X-value of the accelerometer
  setADPS(ADC8);      // Set the ADC prescaler to 8
  
  // Plays back only the bytes that were previously recorded
  while(increment2 <= increment)
  {
    ADCSRA |= _BV(ADSC);      // Starts conversion for accelerometer reading
    TCNT1=0;                  // Clock to delay audio playback to set playback speed
    while(TCNT1 < accelVal);  // Delay determines how quickly audio is played back
       
    //DAC CS LOW
    PORTB &= ~DAC_CS;         // Selects DAC to talk to via SPI
    memMSB = SPI.transfer(DAC_HEADER | (memMSB>>4));  // Transfers first half of bits to DAC and gets next
    memLSB = SPI.transfer((memMSB<<4) | (memLSB<<2)); // Transfers second half of bits and gets next
    PORTB |= DAC_CS;          // Stop talking to DAC

    increment2++;             // Increment bytes transferred

    accelVal = ((ADC)-175)/15;        // Set delay for playback dependent on Accelerometer reading
    if(accelVal > 30 | accelVal < 0)  // Set maximum and minimum playback constraints
      accelVal = 8;                   // Default playback value
  }
  
  digitalWrite(PLAY_LED, LOW);        // End of playback
  PORTB |= MEM_CS;                    // Stop talking to Memory
}


/********************************************************
 * Circle Playback Mode
 ********************************************************/
void circlePlayback(){
  int accelVal = 8;              // Default Value
  increment2 = 0;                // Initialize Counter
  volatile int accelMag = 0;     // Magnitude of Acceleration
  volatile int x = 340;          // Default Acclerometer Values
  volatile int y = 340;

  digitalWrite(PLAY_LED, HIGH);  // Write Play LED High
  PORTB &= ~MEM_CS;              // Select Memory SPI
  SPI.transfer(RMEM);            // Read Memory Command
  SPI.transfer(0);               // Byte Address 2
  SPI.transfer(0);               // Byte Address 1
  SPI.transfer(0);               // Byte Address 0

  setADPS(ADC8);                 // ADC Prescale of 8

  while(increment2 <= increment) // Playback Time
  {
    //DAC CS LOW
    if (accelMag < 14)           // Playback When Appropriate Motion Detected
    {
      PORTB &= ~DAC_CS;          // Select Memory SPI
      memMSB = SPI.transfer(0b01110000 | (memMSB>>4));    // Get MSB
      memLSB = SPI.transfer((memMSB<<4) | (memLSB<<2));   // Get LSB
      PORTB |= DAC_CS;           // Deselect Memory SPI

      increment2++;              // Increment Counter
    }
    
    TCNT1 = 0;                   // Delay to Allow ADC to Finish
    while (TCNT1 < 2);
    
    y = ADC;                     // Get Y Acclerometer Value
    y -= 60;                     // Reduce Value

    //Start Conversion on X axis
    setAdmux(XACCEL);            // Configure ADC for X axis
    ADCSRA |= _BV(ADSC);         // Start Conversion
    if(y >= 335)                 // Find Magnitude from Center Value
    {
      y = y - 335;
    }
    else
    {
      y = 335 - y;
    }
    
    if(x >= 335)                 // Find Magnitude from Center Value
    {
      x = x - 335;
    }
    else
    {
      x = 335 - x;
    }
    
    accelMag = (x+y);            // Find Magnitude
    accelMag = 15 - (accelMag/30);    // Reduce Value to Proper Playback Speed
    
    if (accelMag <=0)            // Set Accleration if too Low
      accelMag = 3;
      
    TCNT1 = 0;                   // Delay Initialize
    while(TCNT1 < (accelMag));   // Delay for Proper Sound Quality Playback

    x = ADC;                     // Get X Accelerometer Value

    //Start Conversion on Y-axis
    setAdmux(YACCEL);            // Set Y Accelerometer Select ADC
    ADCSRA |= _BV(ADSC);         // Start Y Axis Conversion
  }

  digitalWrite(PLAY_LED, LOW);   // Turn LED Low when Finished Playing
  PORTB |= MEM_CS;               // Deselect Memory SPI
}


/****************************************************************
 * Writes Pre-Stored Sound Effects to DAC
 * The getSound() function has parameters as follows:
 * getSound(Address byte 2, Address byte 1, Address byte 0,
 *            # of bytes in sound clip, Speed to play back sound)
 ****************************************************************/
void playSFX(){
  byte sound_flag = 0;    // Kicks out of sound playback in order to check for mode switch
  int accelValY = 0;      // Y-Value obtained from accelerometer
  int accelValX = 0;      // X-Value obtained from accelerometer
  
  setADPS(ADC8);          // Set ADC Prescale of 8
  
  accelValY = getAccelVal(YACCEL);    // Get Y-axis accelerometer reading
  
  accelValX = getAccelVal(XACCEL);    // Get X-axis accelerometer reading

  if(accelValY > 600 && ammo >= 0)    // See if Y-direction laser sound is detected and checks ammo
  {    
    if (ammo > 0)                     // Clicks as dry fire if ammo is not available
    {
      getSound(0x20, 0x00, 0x01, 25438, 15);  // Function to play laser sound
      ammo--;                                 // Subtract 1 ammo from clip
    }
    
    else   // No Ammo Available
    {
      getSound(0x23, 0xFB, 0x88, 7935, 20);  // Play click representing empty clip
    }
  }
    
  else if(accelValX > 600)    // Play disc scratching sound for this direction
  {
    getSound(0x20, 0x70, 0x00, 7150, 20);  // Disc scratch
  }
 
  else if (accelValX < 125)   // Play disc scratching sound for other direction
  {
    getSound(0x20, 0x8B, 0xEE, 7150, 20);  // Disc scratch
  }
  
  else if ((accelValY < 150) && (ammo == 0))  // If clip is empty and device moved upwards
  {                                           // Reload clip is performed
    getSound(0x23, 0xD0, 0x90, 10677, 20);    // Reload shotgun sound
    ammo = 3;                                 // Ammo set to 3
  }
}


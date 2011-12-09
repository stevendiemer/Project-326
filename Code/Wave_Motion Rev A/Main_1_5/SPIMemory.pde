#include <SPI.h>
#include "SPIMemory.h"

/********************************************************
 * Clear the Full Memory
 ********************************************************/
void clearMemory(void){
  // Clear Chip
  memWriteEnable();        // Enable Writing to memory
  delayMicroseconds(2);
    
  PORTB &= ~MEM_CS;    // Talk to Memory
  SPI.transfer(EFMA);      // Transfer Erase command
  PORTB |= MEM_CS;     // Stop talking to Memory
  delay(50);               // Delay
}

/*******************************************************
 * Read Byte from Memory
 * 
 * Parameters A2, A1, A0 - Memory Address for Reading
 *
 * Return r - Byte stored at Address Location Specified
 *******************************************************/
byte readByte(byte A2, byte A1, byte A0){
  byte r = 0;
 
  PORTB &= ~MEM_CS;    // Select Memory SPI
  SPI.transfer(RMEM);      // Read from Memory command
  SPI.transfer(A2);        // Address byte 2
  SPI.transfer(A1);        // Address byte 1
  SPI.transfer(A0);        // Address byte 0
  r = SPI.transfer(0);     // Byte at address
  PORTB |= MEM_CS;     // Deselect Memory SPI
  
  return r;                // Return Byte
}

/******************************************************
 * Unprotect all memory sectors.
 *
 * Parameter protection - Amount of Memory to Protect
 ******************************************************/
void unprotect(byte protection){
  memWriteEnable();           // Enable Writing to Memory
  delayMicroseconds(2);

  PORTB &= ~MEM_CS;           // Select Memory SPI
  SPI.transfer(WRSR);         // Write to Status Register
  SPI.transfer(protection);   // Protects Pre-stored sounds
  PORTB |= MEM_CS;            // Deselect Memory SPI
  delayMicroseconds(2);
}

/********************************************************
 * Read Status Register
 * 
 * Return r - Information on Flash Settings
 ********************************************************/
byte readStatusRegister(void){
  byte r = 0;
  // Read status register
  PORTB &= ~MEM_CS;      // Select Memory SPI
  SPI.transfer(RDSR);        // Read Status Register Command
  r = SPI.transfer(0);       // Flash Settings
  PORTB |= MEM_CS;       // Deselect Memory SPI
  delay(1);
  
  return r;                  // Return Settings of Flash
}

/*******************************************************
 * Write to Memory
 *
 * Parameters A2, A1, A0 - Memory Address Bytes
 *******************************************************/
void writeByte(byte A2, byte A1, byte A0, byte dat){
  // Enable Write to memory Bit
    memWriteEnable();        // Enable Writing to Memory
    delayMicroseconds(2);
    
    // Write data Byte
    PORTB &= ~MEM_CS;    // Select Memory SPI
    SPI.transfer(PRGB);      // Write to Memory Command
    SPI.transfer(A2);        // Address Byte 2
    SPI.transfer(A1);        // Address Byte 1
    SPI.transfer(A0);        // Address Byte 0
    SPI.transfer(dat);       // Byte to Write
    PORTB |= MEM_CS;     // Deselect Memory SPI
    delayMicroseconds(2);
}

/*******************************************************
 * Write next AAI bytes.
 *
 * Parameters dat - Byte 1 to Write to Memory
 *            dat2 - Byte 2 to Write to Memory
 *******************************************************/
void nextAAI(byte dat, byte dat2){
  
  // Write next 2 bytes
  PORTB &= ~MEM_CS;      // Select Memory SPI
  SPI.transfer(AAI);         // Program Auto-Address Incrementing 
  SPI.transfer(dat);         // Byte 1 to Store
  SPI.transfer(dat2);        // Byte 2 to Store
  PORTB |= MEM_CS;       // Deselect Memory SPI
  delayMicroseconds(10);
}


/*******************************************************
 * Start AAI Writing
 *
 * Parameters A2, A1, A0 - Memory Address Bytes
              dat, dat2  - Bytes to Write to Memory
 *******************************************************/
void startAAI(byte A2, byte A1, byte A0, byte dat, byte dat2){
  
  // Enable Write to memory Bit
  memWriteEnable();           // Enable Writing to Memory
  delayMicroseconds(5);
    
  // Write data Byte
  PORTB &= ~MEM_CS;       // Select Memory SPI
  SPI.transfer(AAI);          // Program Auto-Address Incrementing
  SPI.transfer(A2);           // Address Byte 2
  SPI.transfer(A1);           // Address Byte 1
  SPI.transfer(A0);           // Address Byte 0
  SPI.transfer(dat);          // Byte 1 to Store
  SPI.transfer(dat2);         // Byte 2 to Store
  PORTB |= MEM_CS;        // Deselect Memory SPI
  delayMicroseconds(10);
}


/********************************************************
 * This function is responsible for clearing the front
 * half of the memory. It clears 64 kilobytes per command.
 ********************************************************/
void clearRecordSector()
{
  int i = 0;                        // Increment Variable
  uint32_t address = 0x0000FA00;    // Starting address
  byte AD2 = 0;                     // Address Byte 2
  byte AD1 = 0;                     // Address Byte 1
  byte AD0 = 0;                     // Address Byte 0
  
  for(i = 0; i <= 31; i++)          // Loop to Clear Front Half
  {
    AD2 = ((address >> 16) & 0x000000FF);  // Get Next Address
    AD1 = ((address >> 8) & 0x000000FF);   // Get Next Address
    AD0 = (address & 0x000000FF);          // Get Next Address
    
    // Enable Write to memory Bit
    memWriteEnable();               // Enable Writing to Memory
    delayMicroseconds(5);
    
    PORTB &= ~MEM_CS;           // Select Memory SPI
    SPI.transfer(0xD8);             // Header for 64 Kilobyte Erase
    SPI.transfer(AD2);              // Address to End At Byte 2
    SPI.transfer(AD1);              // Address to End At Byte 1
    SPI.transfer(AD0);              // Address to End At Byte 2
    
    PORTB |= MEM_CS;            // Deselect Memory SPI
    delay(22);
    
    address += 0x0000FA00;          // Increment to Next Erase Marker
  }
}


/*******************************************************
 * Write Disable for Memory
 *******************************************************/
void memWriteDisable()
{
  PORTB &= ~MEM_CS;             // Select Memory SPI
  SPI.transfer(WRDI);               // Disable Write Command
  PORTB |= MEM_CS;              // Deselect Memory SPI
  delayMicroseconds(2);
}


/*******************************************************
 * Write Enable for Memory
 *******************************************************/
void memWriteEnable()
{
  PORTB &= ~MEM_CS;             // Select Memory SPI
  SPI.transfer(WREN);               // Enable Writing to Memory
  PORTB |= MEM_CS;              // Deselect Memory SPI
  delayMicroseconds(2);
}


/**********************************************************
 * Retrieve Sound Effect
 *
 * Parameters AD2, AD1, AD0 - Bytes for Memory Address
 *            length - Number of Bytes in Sound Clip
 *            timer - Delay Value for Proper Sound Playback
 **********************************************************/
void getSound(byte AD2, byte AD1, byte AD0, int length, int timer)
{
  PORTB &= ~MEM_CS;             // Select Memory SPI
  increment = 0;                    // Set Increment Variable

  SPI.transfer(RMEM);               // Read Memory Command
  SPI.transfer(AD2);                // Address Byte 2
  SPI.transfer(AD1);                // Address Byte 1
  SPI.transfer(AD0);                // Address Byte 0
  
  digitalWrite(PLAY_LED, HIGH);     // Turn RCRD and PLAY LEDs On
  digitalWrite(RCRD_LED, HIGH);
  
  delay(1);
  while(increment <= length)        // Play Through Sound Clip
  {
    PORTB &= ~DAC_CS;               // Select DAC SPI
    TCNT1 = 0;                      // Initialize Timer
    while(TCNT1 < timer);           // Delay for Proper Playback Sound
    
    memMSB = SPI.transfer(0b01110000 | (memMSB>>4));   // Get Byte for Playback 
    memLSB = SPI.transfer((memMSB<<4) | (memLSB<<2));  // Get Byte for Playback
    PORTB |= DAC_CS;                // Deselect DAC SPI

    increment+=2;                   // Increment Bytes Played Back
  }
  
  digitalWrite(PLAY_LED, LOW);      // Turn RCRD and PLAY LEDs Off
  digitalWrite(RCRD_LED, LOW);
 
  PORTB |= MEM_CS;                  // Deselect Memory SPI
  increment=0;                      // Reset Increment Variable
}

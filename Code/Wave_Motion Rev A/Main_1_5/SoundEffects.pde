#include <SPI.h>
#include <avr/pgmspace.h>
#include "SPIMemory.h"

/***************************************************************
 * This is responsible for containing the bytes to be uploaded
 * into the flash memory of the Wave-Motion Board. The data
 * must be byte values between 0 and 127 in order to ensure
 * proper playback. The number of bytes must not exceed 32256.
 * The number of bytes must be set below before uploading.
 * When placing the bytes in the array, each byte must be
 * seperated with a comma as seen in the sample below.
 *
 * 125,
 * 122,
 * 119,
 *  70
 ***************************************************************/
uint32_t numOfBytes = 10; //Number of bytes in sound clip
PROGMEM prog_uchar soundBytes[] = {
127, // (1)
127,
127,
127,
127, // (5)
127,
127,
127,
127,
127  // (10)
};

/********************************************************
 * This function is responsible for uploading the sound
 * byte to the on-board flash memory. This function
 * must only be run once for uploading sounds. Also,
 * the memory address must be manually changed after
 * each upload to ensure that nothing is overwritten.
 * 
 * In order to do this, the decimal value for the hex
 * address must be calculated. The number of bytes being
 * written must be added to that value. This will give
 * the next location available for writing and will 
 * protect the data that has been stored previously.
 ********************************************************/ 
void bytesToMemory(){
  int i = 0;                          // Increment Variable
  
  unprotect(UNPROTECT_ALL);           // Unprotect Memory
  
  startAAI(0x24, 0x26, 0x00, 0, 0);   // Address to Store Sound Clip

  for(i = 0; i < numOfBytes; i+=2)    // Loop to Write All Bytes
  {
    // Stores 2 Bytes at a Time to Flash Memory
    nextAAI(pgm_read_byte_near(soundBytes+i), pgm_read_byte_near(soundBytes+i+1));
  }
  
  delay(1);
  PORTB &= ~MEM_CS;                   // Select Memory SPI
  SPI.transfer(WRDI);                 // Disable Writing to Memory
  PORTB |= MEM_CS;                    // Deselect Memory SPI
  
  unprotect(PROTECT_MEM);             // Protect 2nd Half of Memory
  delay(1000);                        // Allow Time for Bytes to Write
}

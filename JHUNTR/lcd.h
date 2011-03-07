/* lcd.h 

Definitions for the lcd


*/


// driver for a Hitachi based lcd
// The port our LCD is connected to
// is assumed to be hooked up in
// the following arrangement
// PORTBIT0 -> DATA Bit 4
// PORTBIT1 -> DATA Bit 5
// PORTBIT2 -> DATA Bit 6
// PORTBIT3 -> DATA Bit 7
// PORTBIT4 -> Data Enable (E)
// PORTBIT5 -> Register Select (RS)
// PORTBIT6 -> Unused
// PORTBIT7 -> Unused
// NOTE This doesn't use the Read/Write (R/!W)
// pin of the lcd's. It is assumed to be grounded
// so as to always be in write mode
#define LCD_PORT PORTD
#define LCD_DDR DDRD

// lcd buffer size 16chacters*2rows
#define LCD_BUFFER 32

// lcd commands
// clear the screen
#define LCD_CLS 0x01
// reset the lcd address
// cursor reset to 0,0
// if shifting display
// it is reset
#define LCD_HOME 0x02

// make the cursor dec
// ie character go from
// right to left
#define LCD_DEC_CURSOR 0x04
// characters go left to right
#define LCD_INC_CURSOR 0x06
// cursor doesn't move
// have to be moved manually
#define LCD_INCMODE 0x04
// And the LCD_BITS with DISPLAYMOD
// before writing it
// display mod by itself
// turns the display off
// and the cursor/blinking
#define DISPLAYMOD 0x08
// turn the cursor on
#define LCD_CURSOR 0x02
// turn the display on
#define LCD_DISPLAY 0x04
// make the cursor blink
#define LCD_BLINK 0x01

// say this is move instruction
#define LCD_MOVE_BIT 0x80
// the first line (0,0) is at
// this address
#define LCD_FIRST_LINE 0x00
// the second line is at
// this address
#define LCD_SECOND_LINE 0x40

/***************************************************************************
                          main.c  -  description
                             -------------------
    begin                : Sat Apr 26 22:45:31 NZST 2003
    copyright            : (C) 2003 by Jonathan Hunt
    email                : jhuntnz@users.sourceforge.net
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
#include <inttypes.h>
#include <avr/interrupt.h>

#include "lcd.h"


#if 0

 /*Pin constants */
enum Pin
{
    C3 = 0x01,
    C2 = 0x02,
    C1 = 0x04,
    CMask = (C1 | C2 | C3),
    CShift = 0,
    B3 = 0x08,
    B2 = 0x10,
    B1 = 0x20,
    BMask = (B1 | B2 | B3),
    BShift = 3,
    A3 = 0x40,
    A2 = 0x80,
    A1 = 0x100,
    AMask = (A1 | A2 | A3),
    AShift = 6
};

#define ILLEGAL  -1
#define CMAX  4
const int16_t HeightC[] =
{
  ILLEGAL,      //0x000
  0    ,     // 0x001
  2    ,     // 0x010
  1    ,     // 0x011
  4    ,     // 0x100
  ILLEGAL,     // 0x101
  3    ,     // 0x110
  ILLEGAL,    // 0x111
};


#define INVERTC  0x8000
#define BMAX  35
const int16_t HeightB[] =
{
  0   ,        //0x000
  5 | INVERTC ,        // 0x001
  15 | INVERTC,        // 0x010
  10,        // 0x011
  35 | INVERTC,        // 0x100
  30,        // 0x101
  20,        // 0x110
  25 | INVERTC,        // 0x111
};

#define INVERTB  0x8000
const int16_t HeightA[] =
{
   0,          //0x000
   40 | INVERTB,       // 0x001
   80,    // 0x010
   120 | INVERTB,    // 0x011
   160 ,    // 0x100
   200 | INVERTB,    // 0x101
   240 ,    // 0x110
   280 | INVERTB,    // 0x111
};
0x000
   40 | INVERTB,       // 0x001
   80,    // 0x010
   120 | INVERTB,    // 0x011
   160 ,    // 0x100
   200 | INVERTB,    // 0x101
   240 ,    // 0x110
   280 | INVERTB,    // 0x111
};


int16_t decodegrey(uint16_t pins)
{
    int16_t height = -12;
    int8_t thisset;
    uint8_t invert;
    // Decode A
    thisset = (pins & AMask) >> AShift;
    invert = HeightA[thisset] & INVERTB;
    height += (HeightA[thisset] & (~INVERTB));    
    // Decode B
    thisset = (pins & BMask) >> BShift;
    if(invert) {
        height += BMAX - (HeightB[thisset] & (~INVERTC));
    }
    else {
        height += (HeightB[thisset] & (~INVERTC));
    }
    if(invert)
      invert = !(HeightB[thisset] & INVERTC);
    else
      invert = (HeightB[thisset] & INVERTC);
    // Decode C
    thisset = (pins & CMask) >> CShift;
    if(invert)
        height += CMAX - HeightC[thisset];
    else
        height += HeightC[thisset];

    return height;
    
}

#endif // 0



uint16_t getpins()
{
	return 0;
}

int16_t decodegrey(uint16_t pins)
{
		return 0;
}

void displaypins(int16_t heights, uint16_t pins)
{
	lcdputcontrolch(LCD_CLS);
	lcdputs("Height: ");
//	lcdputs("\nPins");
}


// Pause for a bit
void pause()
{
	uint16_t i;
	uint8_t j;
	for(i = 0; i < 60000; i++) {
		for(j = 0; j < 200; j++);
	}
}

int main()
{
	uint16_t pins;
	int16_t height;

	lcd_init();
	// Leave PORTB & leave the top pin of PORTD alone
	

	sei();
	// setup the lcd how we want it
    lcdputcontrolch(DISPLAYMOD);
    lcdputcontrolch(LCD_CLS);
    lcdputcontrolch(LCD_HOME);
    lcdputcontrolch(LCD_INC_CURSOR);
    lcdputcontrolch(DISPLAYMOD|LCD_DISPLAY);

	lcdputs("AltGrey is here\nMade by Jonny");
	pause();
	lcdputcontrolch(LCD_CLS);
	lcdputs("Beginning\nDecoding");
	pause();
	lcdputcontrolch(LCD_CLS);

	// Main loop where we actually program
	for(;;) {
		pins = getpins();
		height = decodegrey(pins);
		displaypins(height, pins);
	}
}

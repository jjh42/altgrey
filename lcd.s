/* lcd.S
 *
 *
 *	This contains all the lower level code for writing to the LCD.
 * Functions:
 *		lcdputchar:	Put on character from r16 into LCD
 *		lcdputcontrolchar: Put 1 control character from r16 into LCD
 *		lcdputflashstring:	Put a string of characters from the flash pointed to by Z register into LCD
*/

#include <avr/io.h>
#include "lcd.h"


// Macro to toggle bit
.macro togglede
	sbi	(LCD_PORT-__SFR_OFFSET), 4
	nop
	nop
	nop
	nop
	cbi	(LCD_PORT-__SFR_OFFSET),4
.endm

.global setuplcd
setuplcd:
		ldi		r16,0x3f	; Set all 6 pins involved to output
		out	(LCD_DDR-__SFR_OFFSET), r16
		
		; Wait for 15 ms for power to rise to full
		; @ 4000000 mhz this is 60000 cycles
		ldi		ZL, lo8(20000)
		ldi		ZH, hi8(20000)
_sl1: sbiw	ZL, 1		; 4 cyles per loop
		brne	_sl1
		
		; Output first init bytes
		ldi		r16, 0x03
		out	(LCD_PORT-__SFR_OFFSET), r16
		togglede
		
		; Wait for 4.1 ms
		; @ 4000000 mhz this is 16400 cycles 
		ldi		ZL, lo8(5000)
		ldi		ZH, hi8(5000)
_sl5: sbiw	ZL, 1		; 4 cyles per loop
		brne	_sl5
		; Leave the port set at 0x03
		togglede
		
		; Wait 100 micro sec
		; At 4 mhz this is 400 cycles
		ldi		r16, 150
_sl2:
		dec	r16
		brne	_sl2
		
		; Leave port at 0x03
		togglede
		
		; Wait for 40 micros	
		; At 4mhz this is 160 cycles
		ldi		r16, 100
_sl4:
		dec	r16
		brne	_sl4

		; Set to 4 bit mode
		ldi		r16, 0x02
		out	(LCD_PORT-__SFR_OFFSET), r16
		togglede
		
		; Wait for 40 micros
		; At 4mhz this is 160 cycles
		ldi		r16, 100
_sl3:
		dec	r16
		brne	_sl3

		; Now set as 2 line display etc.
		ldi		r16, 0x28
		rcall	lcdputcontrolchar
		; Now clear screen & get it ready for printing
		// setup the lcd how we want it
		ldi		r16, DISPLAYMOD
		rcall	lcdputcontrolchar
		ldi		r16, LCD_CLS
		rcall	lcdputcontrolchar
		ldi		r16, LCD_HOME
		rcall	lcdputcontrolchar
		ldi		r16, LCD_INC_CURSOR
		rcall	lcdputcontrolchar
		ldi		r16, (DISPLAYMOD|LCD_DISPLAY)
		rcall	lcdputcontrolchar
		
		ret
	
.global lcdputcontrolchar
lcdputcontrolchar:
		clr		r18 
		rcall		_bytetolcd
		; Control char so pause for  1.52 ms
		; At 4 mhz = 6080 cycles
		ldi		ZL, lo8(15000)
		ldi		ZH, hi8(15000)
lpcc: sbiw	ZL, 1		; 4 cyles per loop
		brne	lpcc
		
		ret

.global lcdputchar
lcdputchar:
		; Set bit 5 high as well
		ldi		r18, 0x20
		rcall		_bytetolcd
		; Pause for 40 microsec 
     	; At 4mhz this is 160 cycles
		ldi		r16, 100
lpc1:
		dec	r16
		brne	lpc1

		ret		


; Helper function which simple outputs a byte to the LCD. Delays are handled by the calling function
; R18 contains mask which is or in
_bytetolcd:
		; Output high nibble first
		mov		r17, r16
		swap		r17
		andi		r17, 0x0f	
		; OR with mask
		or		r17, r18
		out		(LCD_PORT-__SFR_OFFSET),r17
		togglede
		; Output low nibble
		andi		r16,0x0f
		or		r16,r18
		out		(LCD_PORT-__SFR_OFFSET),r16
		togglede
		ret


.global lcdputflashstring

_loop:
		; Output the character
		push	ZL
		push	ZH
		rcall		lcdputchar
		pop		ZH
		pop		ZL
_loop2:
		; Incremenet z
		adiw		ZL,1
lcdputflashstring:
		; Begin reading from Z register & write it out
		lpm		; Loads data into r0
		mov		r16, r0
		cpi		r16, '\n'
		breq		_newline		; Newline outputs something special
		tst		r16
		brne		_loop
		ret		
		
_newline:
		; Newline
		push	ZL		; Save z register
		push	ZH
		ldi			r16,(LCD_MOVE_BIT|LCD_SECOND_LINE)
		rcall		lcdputcontrolchar
		pop		ZH
		pop		ZL
		rjmp		_loop2

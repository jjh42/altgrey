/* display.S


*/

#include	<avr/io.h>
#include	"lcd.h"


		.data
savedr16:
		.skip			1
savedr17:
		.skip			1
firsttime:			; Save to 0xff the first time round
		.skip			1
			.text

_exit:
		ret
_first:
		; This is our first time displaying the pins
		clr		r20
		sts		firsttime, r20
		rjmp		_display
; Requires pins to be in r16, r17 & height to be in r18 with hundreds in r19
.global display
display:
		; First check that the displayed pins have changed or if this is the first time we've run
		lds		r20, firsttime
		tst		r20
		brne		_first
		lds		r20, savedr16
		lds		r21, savedr17
		cp			r16, r20
		cpc		r17, r21
		; If the height has not changed don't update screen - this reduces flickering		
		breq		_exit
_display:
		; First save the pins
		sts		savedr16, r16
		sts		savedr17, r17
		; Okay display the height
		
		; Clear screen
		push	r16
		push	r17
		push	r19
		push	r18
		ldi			r16, LCD_CLS
		rcall		lcdputcontrolchar
		ldi			r16, 'H'
		rcall		lcdputchar
		ldi			r16, 'T'
		rcall		lcdputchar
		ldi			r16, ' '
		rcall		lcdputchar
		
		; Pop off height & display it
		pop		r18
		pop		r19
		
		push	r19
		; Display the height
		; First check for negativity
		tst		r18
		brpl		_notneg
		; Height is negative display negative sign
		push	r18
		ldi			r16, '-'
		rcall		lcdputchar
		pop		r18
		; Make it the absolute value now
		neg		r18
_notneg:
		
		; First of all display the hundreds
		ldi			r16,'0'
huntest:
		cpi		r18, 100
		brlo		_printhun
		; At least 100
		inc		r16
		subi		r18, 100
		rjmp		huntest
_printhun:
		; Pop of hundreds columsn and add to it
		pop		r19
		add		r16, r19
		push	r18
		rcall		lcdputchar
		pop		r18
		
		; Display the tens
		ldi			r16,'0'
tentest:
		cpi		r18, 10
		brlo		_printten
		; At least 10
		inc		r16
		subi		r18, 10
		rjmp		tentest
_printten:
		push	r18
		rcall		lcdputchar
		pop		r18
		
		; Now display the ones
		ldi			r16, '0'
		add		r16, r18
		rcall		lcdputchar
		
		
		; Add two 00's on the end for the hundreds of feet
		ldi			r16, '0'
		rcall		lcdputchar
		ldi			r16, '0'
		rcall		lcdputchar
		ldi			r16, 'f'
		rcall		lcdputchar
		ldi			r16, 't'
		rcall		lcdputchar
		
		; Now pop of pins & display them on the second line
		ldi			r16,(LCD_MOVE_BIT|LCD_SECOND_LINE)
		rcall		lcdputcontrolchar
		; A1
		ldi			r16, 'A'
		rcall		lcdputchar
		pop		r17
		ldi			r16, '1'
		sbrs		r17, 0		; Display a 1 if bit is set
		ldi			r16, '0'
		rcall		lcdputchar
		
		; Now display A2, A3 etc.
		pop		r17				; A2
		ldi			r16, '1'
		sbrs		r17, 7
		ldi			r16, '0'
		push	r17
		rcall		lcdputchar
		
		pop		r17			; A3
		ldi			r16, '1'
		sbrs		r17, 6
		ldi			r16, '0'
		push	r17
		rcall		lcdputchar
		
		ldi			r16, ' '
		rcall		lcdputchar
		ldi			r16, 'B'
		rcall		lcdputchar
		
		pop		r17				; B1
		ldi			r16, '1'
		sbrs		r17, 5
		ldi			r16, '0'
		push	r17
		rcall		lcdputchar
		
		pop		r17				; B2
		ldi			r16, '1'
		sbrs		r17, 4
		ldi			r16, '0'
		push	r17
		rcall		lcdputchar
		
		pop		r17				; B3
		ldi			r16, '1'
		sbrs		r17, 3
		ldi			r16, '0'
		push	r17
		rcall		lcdputchar
		
		ldi			r16, ' '			;' C
		rcall		lcdputchar
		ldi			r16, 'C'
		rcall		lcdputchar
		
		pop		r17				; C1
		ldi			r16, '1'
		sbrs		r17, 2
		ldi			r16, '0'
		push	r17
		rcall		lcdputchar
		
		pop		r17				; C2
		ldi			r16, '1'
		sbrs		r17, 1
		ldi			r16, '0'
		push	r17
		rcall		lcdputchar
		
		pop		r17				; C3
		ldi			r16, '1'
		sbrs		r17, 0
		ldi			r16, '0'
		rcall		lcdputchar
		
		ret


.global secondspause
; Pause for a second @ 4mhz = 4000000 cycles
secondspause:
		; Outer loop	
		ldi		r16, 20
sp_loop2:
		ldi			ZL, lo8(50000)
		ldi			ZH, hi8(50000)
sp_loop1:
		sbiw		ZL, 1
		brne		sp_loop1
		dec		r16
		brne		sp_loop2
		ret

.global displaystartmsg
_startmsg:
	.asciz	"AltGrey is here\nMade by Jonny"
_beginmsg:
	.asciz	"Beginning\nDecoding\0"
	
displaystartmsg:
		; Setup save height
		ldi		r16, 0xff
		sts	firsttime, r16
		; Clear screen for good measure
		ldi		r16, LCD_CLS
		rcall	lcdputcontrolchar
		; Display startup msg	
		ldi		ZL,lo8(_startmsg)
		ldi		ZH,hi8(_startmsg)
		rcall	lcdputflashstring
		; Pause for a second
		rcall	secondspause
		rcall	secondspause
		rcall	secondspause
		; Clear screen & display begin msg
		; Clear screen for good measure
		ldi		r16, LCD_CLS
		rcall	lcdputcontrolchar
		; Display startup msg	
		ldi		ZL,lo8(_beginmsg)
		ldi		ZH,hi8(_beginmsg)
		rcall	lcdputflashstring
		rcall	secondspause
		ret

/* main.S - bla

The core loop & some setup.

*/

#include	<avr/io.h>


.text 
.ORG 	0x000
		rjmp start

; Life begins here
; Can safely begin code in interrupt vectors because interrupts are never enabled

start:
		cli
		; Setup the stack
		ldi		r16, lo8(RAMEND)
		out	(SPL-__SFR_OFFSET), r16

		; Clear the ports
		ldi		r16, 0x00
		out	(DDRB-__SFR_OFFSET) , r16
		out	(PORTB-__SFR_OFFSET), r16
		out	(DDRD-__SFR_OFFSET) , r16
		out	(PORTD-__SFR_OFFSET), r16

		
		rcall 	setuplcd
		rcall displaystartmsg
		; Setup is done begin loop
	
		; WORKING
; Main loop
loop:
		
		rcall	readpins
		
		; Save a copy of the pins
		push	r17
		push	r16
		rcall	decodepins
		; Move decoded pins into r18
		mov		r18, r16
		mov		r19, r17
		pop		r16		; Reload the saved copy of the pins
		pop		r17
		rcall  display
		rjmp loop

/* decode.S

 * This file contains
 *	readpins: which reads the 9 input pins of the stores the result in r16 and r17.
 		  - see the schematic for a good idea of how the pins are connected.
        decodepins: takes the input pins read by readpins and decodes it using 3 tables
        	  - to give a height which is stores in r16 & r17.

*/
#include <avr/io.h>

.global readpins
readpins:
		; Simple function - read pins off port & put in r16, r17.
		; Pins c1-3 go in lowest bits of r16.
		; D6 is c3
                ; This is how the final result should look in r16, r17
		;LSBR17		MSB R16						LSB R16			LSB R16
		;a1		a2		a3	b1 b2 b3	c1 c2 c3
		in		r16, (PINB-__SFR_OFFSET)
		in		r17, (PIND-__SFR_OFFSET)
		; At the moments a1-3, b1-3 & c1-2 are in r16		
		lsl	r16	; Shift a1 off the top into carry
		bst	r17, 6
		bld	r16, 0 ; Put c3 in place
		; Now r16 is setup - use r17 to take care of a1
		ldi	r17, 0
		rol	r17		; Move carry into the lower bit
		ret

.global decodepins

#define CMAX  4
#if 0
#define ILLEGAL  -1

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
#endif

.align 8
HeightC: 	.byte		0, 0, 2, 1, 4, 0, 3, 0	


#define BMAX  35
#if 0
#define INVERTC  0x8000

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
#endif

.align 8
HeightB:	.byte		0,		5 | 0x80, 15 | 0x80, 10, 35 | 0x80, 30, 20, 25 | 0x80


						; 0x000		0x001		0x010		0x011
.align 4
; This has two sections. first byte states how many hundreds, second byte is the normal thing
					/*		0x000			0x001				0x010				0x011 */
HeightA:	.byte		0, 0, 			0, 40 | 0x80 , 	1, 20 | 0x80,		0, 80			/* Up to 120 */
					/*		0x100			0x101				0x110				0x111 */
				.byte		1, 100 | 0x80,	2, 40,			1, 60	,			2, 80 | 0x80		/* Up to 280 */
/*						Note: ^ For this entry we have to put 100 in the value rather than the hundreds column
									because otherwise you can end up going into the negatives and displaying the wrong
									value.
								
   0,          			 // 0x000 (0)
   40 | INVERTB,     //  0x001 (1)
   120 | INVERTB,   //  0x010  (3)
   80,    				//  0x011	(2)			 	
   200 | INVERTB,   //  0x100  (5)
   240,    				// 0x101	(6)
   160  ,   				// 0x110  (4)			
   280 | INVERTB,   // 0x111 (7)
   */
	/* Decode the height from the pins that are in r16, r17 and put the result in r16. r17 holds
	 * an number which is added to the hundreds columns (to avoid having to use true 16 bit)
	 * ie if the answer is 214(00) ft then r16 will have 14, & r17 will have 2.
         * The pins that are in r16, r17 following the code described at the beginning of
         * readpins.


         This function works by break the coding into the 3 sections (a, b, c). So first a is looked up in a table
         and the height from a is added to the total height. The total height begins at -12 because that is the lowest
         that the altimeter can go. (NOTE: The height is stored in hundreds of ft and two zero's are only added later
         when its displayed on the LCD). Next b is decode. There is a flag in a that states whether b is inverted or not
         (b is alternatly inverted/not inverted for each step of a). If inverted the value from the b lookup is subtracted
         from 35 (B's maximum value). Are b lookup, the c lookup is very similar. Note: If b is inverted then the flag
         (INVERTC) is inverted.
	 */
decodepins:
		; Height starts at -12
		ldi		r18, -12
		; Retrieve A value
		ldi		ZL, lo8(HeightA)
		ldi		ZH, hi8(HeightA)
		; Value of A is in top two bits of r16 & lsb of r17
		mov	r22, r16		; Save a copy of r16 for later
		andi	r22, (0x80 | 0x40)
		; Shift to lower 2 bits
		swap	r22
		lsr	r22
		lsr	r22
		; Now add bottom bit of r17
		bst	r17, 0
		bld	r22, 2
		mov	r23, r22	; Double it because it is 2 bytes wide
		add	r22, r23
		clr	r23		; This is only aligned to 4 so we have to add both colums
		add	ZL, r22
		adc	ZH, r23
		; Now lookup height value
		lpm
		mov	r21, r0	; r21 now contains the hundreds column
		inc	ZL	; Load second byte
		lpm
		mov	r17, r0
		; Set T flag if 0x80 is set in value - this means invert next lookup
		bst	r17, 7
		andi	r17, (~0x80)
		add	r18, r17		; Beginning of the height
		
		
		; Lookup B value
		mov	r17, r16	; Save r16 for later
		andi	r17, 0x38
		; Shift to lower 3 bits
		lsr	r17
		lsr	r17 
		lsr	r17
		ldi		ZL, lo8(HeightB)
		ldi		ZH, hi8(HeightB)
		add	ZL, r17
		lpm
		mov	r17, r0
		andi	r17, (~0x80)		; Clear inverse flag
		brtc	skipbinv
		; Must invert this
		ldi		r20, BMAX
		sub	r20, r17
		mov	r17, r20
		; Now this gets a bit confusing. If B is being inverted then the inversion flag must be the opposite of what it was
		; ie BINVERT = TRUE then CINVERT = ! BINVERT
		com	r0
skipbinv:
		bst	r0, 7
		add	r18, r17	; Add B height on to total height
		
		
		; Lookup C value
		andi	r16, 0x07
		ldi	ZL, lo8(HeightC)
		ldi	ZH, hi8(HeightC)
		add	ZL, r16
		lpm
		mov	r16, r0
		; Check if it should be inverted
		brtc skipcinv
		; Invert
		ldi		r17, CMAX
		sub	r17, r16
		mov	r16, r17
skipcinv:
		add	r18, r16	; Add C height to total height
		mov	r16, r18	; Mov to reg 16
		mov	r17, r21	; Move hundreds column to r17
		
		ret

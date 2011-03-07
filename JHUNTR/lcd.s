	.file	"lcd.c"
	.arch at90s2313
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
 ;  GNU C version 3.3 20030414 (prerelease) (avr)
 ; 	compiled by GNU C version 3.2.2 20030322 (Gentoo Linux 1.4 3.2.2-r2).
 ;  GGC heuristics: --param ggc-min-expand=47 --param ggc-min-heapsize=32033
 ;  options passed:  -fpreprocessed -mmcu=at90s2313 -auxbase-strip -g -O3
 ;  -Wall -Wstrict-prototypes -fshort-enums -fverbose-asm
 ;  options enabled:  -fdefer-pop -fomit-frame-pointer
 ;  -foptimize-sibling-calls -fcse-follow-jumps -fcse-skip-blocks
 ;  -fexpensive-optimizations -fthread-jumps -fstrength-reduce -fpeephole
 ;  -fforce-mem -ffunction-cse -fkeep-static-consts -fcaller-saves
 ;  -freg-struct-return -fgcse -fgcse-lm -fgcse-sm -floop-optimize
 ;  -fcrossjumping -fif-conversion -fif-conversion2 -frerun-cse-after-loop
 ;  -frerun-loop-opt -fdelete-null-pointer-checks -fsched-interblock
 ;  -fsched-spec -fbranch-count-reg -freorder-blocks -freorder-functions
 ;  -frename-registers -fcprop-registers -fcommon -fverbose-asm
 ;  -fgnu-linker -fregmove -foptimize-register-move -fargument-alias
 ;  -fstrict-aliasing -fmerge-constants -fzero-initialized-in-bss -fident
 ;  -fpeephole2 -fguess-branch-probability -fmath-errno -ftrapping-math
 ;  -minit-stack=__stack -mmcu=at90s2313

	.stabs	"/home/dhunt/unarchived/jonny/",100,0,0,.Ltext0
	.stabs	"lcd.c",100,0,0,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-32768;32767;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=@s32;r(0,3);0020000000000;0017777777777;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0000000000000;0000000177777;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=@s32;r(0,5);0000000000000;0037777777777;",128,0,0,0
	.stabs	"long long int:t(0,6)=@s64;r(0,6);01000000000000000000000;0777777777777777777777;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=@s64;r(0,7);0000000000000;01777777777777777777777;",128,0,0,0
	.stabs	"short int:t(0,8)=r(0,8);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=r(0,9);0000000000000;0000000177777;",128,0,0,0
	.stabs	"signed char:t(0,10)=@s8;r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=@s8;r(0,11);0;255;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);4;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);4;0;",128,0,0,0
	.stabs	"complex int:t(0,15)=s4real:(0,1),0,16;imag:(0,1),16,16;;",128,0,0,0
	.stabs	"complex float:t(0,16)=R3;8;0;",128,0,0,0
	.stabs	"complex double:t(0,17)=R3;8;0;",128,0,0,0
	.stabs	"complex long double:t(0,18)=R3;8;0;",128,0,0,0
	.stabs	"__builtin_va_list:t(0,19)=*(0,20)=(0,20)",128,0,0,0
	.stabs	"_Bool:t(0,21)=@s8;-16;",128,0,0,0
	.stabs	"lcd.c",130,0,0,0
	.stabs	"/usr/avr/include/avr/io.h",130,0,0,0
	.stabs	"/usr/avr/include/avr/sfr_defs.h",130,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/avr/include/avr/io2313.h",130,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/avr/include/avr/interrupt.h",130,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/avr/include/avr/signal.h",130,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/avr/include/avr/timer.h",130,0,0,0
	.stabs	" :T(7,1)=@s8;eSTOP:0,CK:1,CK8:2,CK64:3,CK256:4,CK1024:5,T0_FALLING_EDGE:6,T0_RISING_EDGE:7,;",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/avr/include/inttypes.h",130,0,0,0
	.stabs	"int8_t:t(8,1)=(0,10)",128,0,60,0
	.stabs	"uint8_t:t(8,2)=(0,11)",128,0,65,0
	.stabs	"int16_t:t(8,3)=(0,1)",128,0,83,0
	.stabs	"uint16_t:t(8,4)=(0,4)",128,0,88,0
	.stabs	"int32_t:t(8,5)=(0,3)",128,0,99,0
	.stabs	"uint32_t:t(8,6)=(0,5)",128,0,104,0
	.stabs	"int64_t:t(8,7)=(0,6)",128,0,117,0
	.stabs	"uint64_t:t(8,8)=(0,7)",128,0,122,0
	.stabs	"intptr_t:t(8,9)=(8,3)",128,0,134,0
	.stabs	"uintptr_t:t(8,10)=(8,4)",128,0,139,0
	.stabn	162,0,0,0
	.stabs	"lcd.h",130,0,0,0
	.stabn	162,0,0,0
	.stabs	" :T(1,1)=@s8;eSetupPhase1:0,SetupPhase2:1,SetupPhase3:2,SetupPhase4:3,SetupPhase5:4,BUSY:5,IDLE:6,;",128,0,0,0
	.stabs	"__vector_6:F(0,20)",36,0,43,__vector_6
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
	.stabn 68,0,43,.LM1-__vector_6
.LM1:
/* prologue: frame size=0 */
	push __zero_reg__
	push __tmp_reg__
	in __tmp_reg__,__SREG__
	push __tmp_reg__
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue end (size=17) */
	.stabn 68,0,44,.LM2-__vector_6
.LM2:
	lds r24,lcdstat	 ;   lcdstat
	clr r25
	cpi r24,2
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L7
	cpi r24,3
	cpc r25,__zero_reg__
	brlt .+2
	rjmp .L25
	sbiw r24,0
	brne .+2
	rjmp .L3
	sbiw r24,1
	brne .+2
	rjmp .L5
.L15:
	.stabn 68,0,102,.LM3-__vector_6
.LM3:
	lds r22,lcdbuffersize	 ;   lcdbuffersize
	tst r22
	brne .+2
	rjmp .L16
	.stabn 68,0,106,.LM4-__vector_6
.LM4:
	lds r30,lcd_buffer_out_pt	 ;   lcd_buffer_out_pt
	lds r31,(lcd_buffer_out_pt)+1	 ;   lcd_buffer_out_pt
	mov r24,r30
	mov r25,r31
	subi r24,lo8(lcdbuffer)
	sbci r25,hi8(lcdbuffer)
	lds r18,lcdcontrolcharbits	 ;   lcdcontrolcharbits
	lds r19,(lcdcontrolcharbits)+1	 ;   lcdcontrolcharbits
	lds r20,(lcdcontrolcharbits)+2	 ;   lcdcontrolcharbits
	lds r21,(lcdcontrolcharbits)+3	 ;   lcdcontrolcharbits
	rjmp 2f
1:	lsr r21
	ror r20
	ror r19
	ror r18
2:	dec r24
	brpl 1b
	mov r27,r19
	mov r26,r18
	andi r26,lo8(1)
	andi r27,hi8(1)
	or r26,r27
	breq .L17
	.stabn 68,0,108,.LM5-__vector_6
.LM5:
	sts lcdtemp,__zero_reg__	 ;   lcdtemp
	.stabn 68,0,109,.LM6-__vector_6
.LM6:
	ldi r19,lo8(4)
	out 83-0x20,r19
	.stabn 68,0,111,.LM7-__vector_6
.LM7:
	ldi r18,lo8(32)
	out 82-0x20,r18
.L18:
	.stabn 68,0,146,.LM8-__vector_6
.LM8:
	mov r18,r22
	subi r18,lo8(-(-1))
	sts lcdbuffersize,r18	 ;   lcdbuffersize
	.stabn 68,0,149,.LM9-__vector_6
.LM9:
	ld r26,Z
	swap r26
	andi r26,0x0f
	lds r27,lcdtemp	 ;   lcdtemp
	or r26,r27
	out 50-0x20,r26
	.stabn 68,0,29,.LM10-__vector_6
.LM10:
.LBB2:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM11-__vector_6
.LM11:
/* #APP */
	NOP
	.stabn 68,0,31,.LM12-__vector_6
.LM12:
	NOP
	.stabn 68,0,32,.LM13-__vector_6
.LM13:
	NOP
	.stabn 68,0,33,.LM14-__vector_6
.LM14:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,152,.LM15-__vector_6
.LM15:
.LBE2:
	ld r25,Z+
	andi r25,lo8(15)
	or r27,r25
	out 50-0x20,r27
	.stabn 68,0,29,.LM16-__vector_6
.LM16:
.LBB3:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM17-__vector_6
.LM17:
/* #APP */
	NOP
	.stabn 68,0,31,.LM18-__vector_6
.LM18:
	NOP
	.stabn 68,0,32,.LM19-__vector_6
.LM19:
	NOP
	.stabn 68,0,33,.LM20-__vector_6
.LM20:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,156,.LM21-__vector_6
.LM21:
.LBE3:
	sts (lcd_buffer_out_pt)+1,r31	 ;   lcd_buffer_out_pt
	sts lcd_buffer_out_pt,r30	 ;   lcd_buffer_out_pt
	subi r30,lo8(lcdbuffer+32)
	sbci r31,hi8(lcdbuffer+32)
	brlo .L21
	.stabn 68,0,158,.LM22-__vector_6
.LM22:
	ldi r30,lo8(lcdbuffer)
	ldi r31,hi8(lcdbuffer)
	sts (lcd_buffer_out_pt)+1,r31	 ;   lcd_buffer_out_pt
	sts lcd_buffer_out_pt,r30	 ;   lcd_buffer_out_pt
.L21:
	.stabn 68,0,162,.LM23-__vector_6
.LM23:
	tst r18
	breq .+2
	rjmp .L1
.L16:
	.stabn 68,0,167,.LM24-__vector_6
.LM24:
	in r31,89-0x20
	andi r31,lo8(-3)
	out 89-0x20,r31
	rjmp .L1
.L17:
	.stabn 68,0,136,.LM25-__vector_6
.LM25:
	ldi r23,lo8(2)
	out 83-0x20,r23
	.stabn 68,0,137,.LM26-__vector_6
.LM26:
	ldi r21,lo8(-20)
	out 82-0x20,r21
	.stabn 68,0,138,.LM27-__vector_6
.LM27:
	ldi r20,lo8(32)
	sts lcdtemp,r20	 ;   lcdtemp
	rjmp .L18
.L5:
	.stabn 68,0,58,.LM28-__vector_6
.LM28:
	ldi r20,lo8(3)
	out 50-0x20,r20
	.stabn 68,0,60,.LM29-__vector_6
.LM29:
	ldi r25,lo8(2)
	out 83-0x20,r25
	.stabn 68,0,61,.LM30-__vector_6
.LM30:
	ldi r24,lo8(-50)
.L26:
	out 82-0x20,r24
	.stabn 68,0,29,.LM31-__vector_6
.LM31:
.LBB4:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM32-__vector_6
.LM32:
/* #APP */
	NOP
	.stabn 68,0,31,.LM33-__vector_6
.LM33:
	NOP
	.stabn 68,0,32,.LM34-__vector_6
.LM34:
	NOP
	.stabn 68,0,33,.LM35-__vector_6
.LM35:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,73,.LM36-__vector_6
.LM36:
.LBE4:
	sts lcdstat,r25	 ;   lcdstat
	.stabn 68,0,74,.LM37-__vector_6
.LM37:
	rjmp .L1
.L3:
	.stabn 68,0,49,.LM38-__vector_6
.LM38:
	ldi r19,lo8(4)
	out 83-0x20,r19
	.stabn 68,0,50,.LM39-__vector_6
.LM39:
	ldi r18,lo8(-65)
	out 82-0x20,r18
	.stabn 68,0,51,.LM40-__vector_6
.LM40:
	ldi r18,lo8(3)
	out 50-0x20,r18
	.stabn 68,0,29,.LM41-__vector_6
.LM41:
.LBB5:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM42-__vector_6
.LM42:
/* #APP */
	NOP
	.stabn 68,0,31,.LM43-__vector_6
.LM43:
	NOP
	.stabn 68,0,32,.LM44-__vector_6
.LM44:
	NOP
	.stabn 68,0,33,.LM45-__vector_6
.LM45:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,53,.LM46-__vector_6
.LM46:
.LBE5:
	ldi r24,lo8(1)
.L27:
	sts lcdstat,r24	 ;   lcdstat
	.stabn 68,0,83,.LM47-__vector_6
.LM47:
	rjmp .L1
.L25:
	cpi r24,3
	cpc r25,__zero_reg__
	breq .L9
	sbiw r24,4
	breq .+2
	rjmp .L15
	.stabn 68,0,88,.LM48-__vector_6
.LM48:
	ldi r27,lo8(2)
	out 50-0x20,r27
	.stabn 68,0,29,.LM49-__vector_6
.LM49:
.LBB6:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM50-__vector_6
.LM50:
/* #APP */
	NOP
	.stabn 68,0,31,.LM51-__vector_6
.LM51:
	NOP
	.stabn 68,0,32,.LM52-__vector_6
.LM52:
	NOP
	.stabn 68,0,33,.LM53-__vector_6
.LM53:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,92,.LM54-__vector_6
.LM54:
.LBE6:
	ldi r26,lo8(8)
	out 50-0x20,r26
	.stabn 68,0,29,.LM55-__vector_6
.LM55:
.LBB7:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM56-__vector_6
.LM56:
/* #APP */
	NOP
	.stabn 68,0,31,.LM57-__vector_6
.LM57:
	NOP
	.stabn 68,0,32,.LM58-__vector_6
.LM58:
	NOP
	.stabn 68,0,33,.LM59-__vector_6
.LM59:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,94,.LM60-__vector_6
.LM60:
.LBE7:
	ldi r25,lo8(6)
	sts lcdstat,r25	 ;   lcdstat
	.stabn 68,0,96,.LM61-__vector_6
.LM61:
	lds r23,lcdbuffersize	 ;   lcdbuffersize
	tst r23
	brne .L1
	rjmp .L16
.L9:
	.stabn 68,0,77,.LM62-__vector_6
.LM62:
	ldi r22,lo8(2)
	out 50-0x20,r22
	.stabn 68,0,80,.LM63-__vector_6
.LM63:
	ldi r21,lo8(-20)
	out 82-0x20,r21
	.stabn 68,0,29,.LM64-__vector_6
.LM64:
.LBB8:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM65-__vector_6
.LM65:
/* #APP */
	NOP
	.stabn 68,0,31,.LM66-__vector_6
.LM66:
	NOP
	.stabn 68,0,32,.LM67-__vector_6
.LM67:
	NOP
	.stabn 68,0,33,.LM68-__vector_6
.LM68:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,82,.LM69-__vector_6
.LM69:
.LBE8:
	ldi r24,lo8(4)
	rjmp .L27
	.stabn 68,0,33,.LM70-__vector_6
.LM70:
.L7:
	.stabn 68,0,68,.LM71-__vector_6
.LM71:
	ldi r25,lo8(3)
	out 50-0x20,r25
	.stabn 68,0,71,.LM72-__vector_6
.LM72:
	ldi r24,lo8(-20)
	rjmp .L26
	.stabn 68,0,171,.LM73-__vector_6
.LM73:
.L1:
/* epilogue: frame size=0 */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop __tmp_reg__
	out __SREG__,__tmp_reg__
	pop __tmp_reg__
	pop __zero_reg__
	reti
/* epilogue end (size=17) */
/* function __vector_6 size 241 (207) */
	.size	__vector_6, .-__vector_6
.Lscope0:
	.stabs	"",36,0,0,.Lscope0-__vector_6
	.stabs	"toggle_E:F(0,20)",36,0,28,toggle_E
.global	toggle_E
	.type	toggle_E, @function
toggle_E:
	.stabn 68,0,28,.LM74-toggle_E
.LM74:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	.stabn 68,0,29,.LM75-toggle_E
.LM75:
	sbi 50-0x20,4
	.stabn 68,0,30,.LM76-toggle_E
.LM76:
/* #APP */
	NOP
	.stabn 68,0,31,.LM77-toggle_E
.LM77:
	NOP
	.stabn 68,0,32,.LM78-toggle_E
.LM78:
	NOP
	.stabn 68,0,33,.LM79-toggle_E
.LM79:
/* #NOAPP */
	cbi 50-0x20,4
	.stabn 68,0,34,.LM80-toggle_E
.LM80:
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function toggle_E size 9 (8) */
	.size	toggle_E, .-toggle_E
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-toggle_E
	.stabs	"lcd_init:F(0,20)",36,0,177,lcd_init
.global	lcd_init
	.type	lcd_init, @function
lcd_init:
	.stabn 68,0,177,.LM81-lcd_init
.LM81:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	.stabn 68,0,180,.LM82-lcd_init
.LM82:
	in r21,89-0x20
	ori r21,lo8(2)
	out 89-0x20,r21
	.stabn 68,0,183,.LM83-lcd_init
.LM83:
	ldi r20,lo8(4)
	out 83-0x20,r20
	.stabn 68,0,187,.LM84-lcd_init
.LM84:
	ldi r19,lo8(20)
	out 82-0x20,r19
	.stabn 68,0,193,.LM85-lcd_init
.LM85:
	ldi r18,lo8(63)
	out 49-0x20,r18
	.stabn 68,0,194,.LM86-lcd_init
.LM86:
	sts lcdstat,__zero_reg__	 ;   lcdstat
	.stabn 68,0,195,.LM87-lcd_init
.LM87:
	ldi r18,lo8(lcdbuffer)
	ldi r19,hi8(lcdbuffer)
	sts (lcd_buffer_out_pt)+1,r19	 ;   lcd_buffer_out_pt
	sts lcd_buffer_out_pt,r18	 ;   lcd_buffer_out_pt
	sts (lcd_buffer_in_pt)+1,r19	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r18	 ;   lcd_buffer_in_pt
	.stabn 68,0,196,.LM88-lcd_init
.LM88:
	sts lcdbuffersize,__zero_reg__	 ;   lcdbuffersize
	.stabn 68,0,197,.LM89-lcd_init
.LM89:
	sts lcdcontrolcharbits,__zero_reg__	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+1,__zero_reg__	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+2,__zero_reg__	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+3,__zero_reg__	 ;   lcdcontrolcharbits
	.stabn 68,0,199,.LM90-lcd_init
.LM90:
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function lcd_init size 32 (31) */
	.size	lcd_init, .-lcd_init
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-lcd_init
	.stabs	"lcdputch:F(8,2)",36,0,203,lcdputch
	.stabs	"character:P(8,2)",64,0,202,25
.global	lcdputch
	.type	lcdputch, @function
lcdputch:
	.stabn 68,0,203,.LM91-lcdputch
.LM91:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	.stabn 68,0,204,.LM92-lcdputch
.LM92:
	lds r18,lcdbuffersize	 ;   lcdbuffersize
	cpi r18,lo8(32)
	brlo .+2
	rjmp .L36
	.stabn 68,0,206,.LM93-lcdputch
.LM93:
/* #APP */
	cli
	.stabn 68,0,207,.LM94-lcdputch
.LM94:
/* #NOAPP */
	lds r26,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r27,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	st X,r24	 ;   character
	.stabn 68,0,210,.LM95-lcdputch
.LM95:
	lds r30,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r31,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	mov r24,r30
	mov r25,r31
	subi r24,lo8(lcdbuffer)
	sbci r25,hi8(lcdbuffer)
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	ldi r20,hlo8(1)
	ldi r21,hhi8(1)
	rjmp 2f
1:	lsl r18
	rol r19
	rol r20
	rol r21
2:	dec r24
	brpl 1b
	com r18
	com r19
	com r20
	com r21
	lds r24,lcdcontrolcharbits	 ;   lcdcontrolcharbits
	lds r25,(lcdcontrolcharbits)+1	 ;   lcdcontrolcharbits
	lds r26,(lcdcontrolcharbits)+2	 ;   lcdcontrolcharbits
	lds r27,(lcdcontrolcharbits)+3	 ;   lcdcontrolcharbits
	and r24,r18
	and r25,r19
	and r26,r20
	and r27,r21
	sts lcdcontrolcharbits,r24	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+1,r25	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+2,r26	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+3,r27	 ;   lcdcontrolcharbits
	.stabn 68,0,212,.LM96-lcdputch
.LM96:
	mov r26,r30
	mov r27,r31
	adiw r26,1
	sts (lcd_buffer_in_pt)+1,r27	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r26	 ;   lcd_buffer_in_pt
	subi r26,lo8(lcdbuffer+32)
	sbci r27,hi8(lcdbuffer+32)
	brlo .L37
	.stabn 68,0,214,.LM97-lcdputch
.LM97:
	ldi r18,lo8(lcdbuffer)
	ldi r19,hi8(lcdbuffer)
	sts (lcd_buffer_in_pt)+1,r19	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r18	 ;   lcd_buffer_in_pt
.L37:
	.stabn 68,0,217,.LM98-lcdputch
.LM98:
	lds r20,lcdbuffersize	 ;   lcdbuffersize
	subi r20,lo8(-(1))
	sts lcdbuffersize,r20	 ;   lcdbuffersize
	.stabn 68,0,222,.LM99-lcdputch
.LM99:
	in r19,89-0x20
	ori r19,lo8(2)
	out 89-0x20,r19
	.stabn 68,0,223,.LM100-lcdputch
.LM100:
/* #APP */
	sei
	.stabn 68,0,224,.LM101-lcdputch
.LM101:
/* #NOAPP */
	ldi r24,lo8(1)	 ;   character
	ldi r25,hi8(1)	 ;   character
	.stabn 68,0,227,.LM102-lcdputch
.LM102:
	ret
.L36:
	.stabn 68,0,226,.LM103-lcdputch
.LM103:
	ldi r24,lo8(0)	 ;   character
	ldi r25,hi8(0)	 ;   character
	.stabn 68,0,227,.LM104-lcdputch
.LM104:
	ret
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function lcdputch size 90 (89) */
	.size	lcdputch, .-lcdputch
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-lcdputch
	.stabs	"lcdputcontrolch:F(8,2)",36,0,231,lcdputcontrolch
	.stabs	"character:P(8,2)",64,0,230,25
.global	lcdputcontrolch
	.type	lcdputcontrolch, @function
lcdputcontrolch:
	.stabn 68,0,231,.LM105-lcdputcontrolch
.LM105:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	.stabn 68,0,233,.LM106-lcdputcontrolch
.LM106:
	lds r18,lcdbuffersize	 ;   lcdbuffersize
	cpi r18,lo8(32)
	brlo .+2
	rjmp .L39
	.stabn 68,0,235,.LM107-lcdputcontrolch
.LM107:
/* #APP */
	cli
	.stabn 68,0,236,.LM108-lcdputcontrolch
.LM108:
/* #NOAPP */
	lds r26,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r27,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	st X,r24	 ;   character
	.stabn 68,0,238,.LM109-lcdputcontrolch
.LM109:
	lds r30,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r31,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	mov r24,r30
	mov r25,r31
	subi r24,lo8(lcdbuffer)
	sbci r25,hi8(lcdbuffer)
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	ldi r20,hlo8(1)
	ldi r21,hhi8(1)
	rjmp 2f
1:	lsl r18
	rol r19
	rol r20
	rol r21
2:	dec r24
	brpl 1b
	lds r24,lcdcontrolcharbits	 ;   lcdcontrolcharbits
	lds r25,(lcdcontrolcharbits)+1	 ;   lcdcontrolcharbits
	lds r26,(lcdcontrolcharbits)+2	 ;   lcdcontrolcharbits
	lds r27,(lcdcontrolcharbits)+3	 ;   lcdcontrolcharbits
	or r24,r18
	or r25,r19
	or r26,r20
	or r27,r21
	sts lcdcontrolcharbits,r24	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+1,r25	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+2,r26	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+3,r27	 ;   lcdcontrolcharbits
	.stabn 68,0,239,.LM110-lcdputcontrolch
.LM110:
	mov r26,r30
	mov r27,r31
	adiw r26,1
	sts (lcd_buffer_in_pt)+1,r27	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r26	 ;   lcd_buffer_in_pt
	subi r26,lo8(lcdbuffer+32)
	sbci r27,hi8(lcdbuffer+32)
	brlo .L40
	.stabn 68,0,241,.LM111-lcdputcontrolch
.LM111:
	ldi r18,lo8(lcdbuffer)
	ldi r19,hi8(lcdbuffer)
	sts (lcd_buffer_in_pt)+1,r19	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r18	 ;   lcd_buffer_in_pt
.L40:
	.stabn 68,0,244,.LM112-lcdputcontrolch
.LM112:
	lds r20,lcdbuffersize	 ;   lcdbuffersize
	subi r20,lo8(-(1))
	sts lcdbuffersize,r20	 ;   lcdbuffersize
	.stabn 68,0,249,.LM113-lcdputcontrolch
.LM113:
	in r19,89-0x20
	ori r19,lo8(2)
	out 89-0x20,r19
	.stabn 68,0,250,.LM114-lcdputcontrolch
.LM114:
/* #APP */
	sei
	.stabn 68,0,251,.LM115-lcdputcontrolch
.LM115:
/* #NOAPP */
	ldi r24,lo8(1)	 ;   character
	ldi r25,hi8(1)	 ;   character
	.stabn 68,0,255,.LM116-lcdputcontrolch
.LM116:
	ret
.L39:
	.stabn 68,0,254,.LM117-lcdputcontrolch
.LM117:
	ldi r24,lo8(0)	 ;   character
	ldi r25,hi8(0)	 ;   character
	.stabn 68,0,255,.LM118-lcdputcontrolch
.LM118:
	ret
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function lcdputcontrolch size 86 (85) */
	.size	lcdputcontrolch, .-lcdputcontrolch
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-lcdputcontrolch
	.stabs	"lcdputs:F(8,2)",36,0,261,lcdputs
	.stabs	"string:P(1,2)=*(1,3)=k(8,2)",64,0,260,28
.global	lcdputs
	.type	lcdputs, @function
lcdputs:
	.stabn 68,0,261,.LM119-lcdputs
.LM119:
/* prologue: frame size=0 */
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue end (size=8) */
	mov r29,r25	 ;   string
	mov r28,r24	 ;   string
	.stabn 68,0,262,.LM120-lcdputs
.LM120:
	ld r24,Y	 ;  * string
	tst r24
	brne .+2
	rjmp .L56
	lds r18,lcdbuffersize	 ;   lcdbuffersize
	ldi r19,lo8(1)
	mov r14,r19
	mov r15,__zero_reg__
	mov r16,__zero_reg__
	mov r17,__zero_reg__
	ldi r25,lo8(lcdbuffer)
	mov r12,r25
	ldi r25,hi8(lcdbuffer)
	mov r13,r25
.L54:
	.stabn 68,0,264,.LM121-lcdputs
.LM121:
	cpi r24,lo8(10)
	brne .+2
	rjmp .L57
	.stabn 68,0,231,.LM122-lcdputs
.LM122:
	.stabn 68,0,204,.LM123-lcdputs
.LM123:
.LBB9:
	cpi r18,lo8(32)
	brlo .+2
	rjmp .L51
	.stabn 68,0,206,.LM124-lcdputs
.LM124:
/* #APP */
	cli
	.stabn 68,0,207,.LM125-lcdputs
.LM125:
/* #NOAPP */
	lds r26,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r27,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	st X,r24
	.stabn 68,0,210,.LM126-lcdputs
.LM126:
	lds r22,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r23,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	mov r25,r23
	mov r24,r22
	subi r24,lo8(lcdbuffer)
	sbci r25,hi8(lcdbuffer)
	mov r21,r17
	mov r20,r16
	mov r19,r15
	mov r18,r14
	rjmp 2f
1:	lsl r18
	rol r19
	rol r20
	rol r21
2:	dec r24
	brpl 1b
	com r18
	com r19
	com r20
	com r21
	lds r24,lcdcontrolcharbits	 ;   lcdcontrolcharbits
	lds r25,(lcdcontrolcharbits)+1	 ;   lcdcontrolcharbits
	lds r26,(lcdcontrolcharbits)+2	 ;   lcdcontrolcharbits
	lds r27,(lcdcontrolcharbits)+3	 ;   lcdcontrolcharbits
	and r24,r18
	and r25,r19
	and r26,r20
	and r27,r21
	sts lcdcontrolcharbits,r24	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+1,r25	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+2,r26	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+3,r27	 ;   lcdcontrolcharbits
	.stabn 68,0,212,.LM127-lcdputs
.LM127:
	mov r31,r23
	mov r30,r22
	adiw r30,1
	sts (lcd_buffer_in_pt)+1,r31	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r30	 ;   lcd_buffer_in_pt
	subi r30,lo8(lcdbuffer+32)
	sbci r31,hi8(lcdbuffer+32)
	brlo .L52
	.stabn 68,0,214,.LM128-lcdputs
.LM128:
	sts (lcd_buffer_in_pt)+1,r13	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r12	 ;   lcd_buffer_in_pt
.L52:
	.stabn 68,0,217,.LM129-lcdputs
.LM129:
	lds r21,lcdbuffersize	 ;   lcdbuffersize
	subi r21,lo8(-(1))
	mov r18,r21
	sts lcdbuffersize,r21	 ;   lcdbuffersize
	.stabn 68,0,222,.LM130-lcdputs
.LM130:
	in r20,89-0x20
	ori r20,lo8(2)
	out 89-0x20,r20
	.stabn 68,0,223,.LM131-lcdputs
.LM131:
/* #APP */
	sei
/* #NOAPP */
	ldi r24,lo8(1)	 ;   <anonymous>
	ldi r25,hi8(1)	 ;   <anonymous>
.L53:
	.stabn 68,0,203,.LM132-lcdputs
.LM132:
.LBE9:
	tst r24	 ;   <anonymous>
	breq .L58
.L49:
	.stabn 68,0,273,.LM133-lcdputs
.LM133:
	adiw r28,1	 ;   string
	ld r24,Y	 ;  * string
	tst r24
	breq .+2
	rjmp .L54
.L56:
	.stabn 68,0,275,.LM134-lcdputs
.LM134:
	ldi r24,lo8(1)	 ;   string
	ldi r25,hi8(1)	 ;   string
	rjmp .L41
	.stabn 68,0,271,.LM135-lcdputs
.LM135:
.L58:
	ldi r24,lo8(0)	 ;   string
	ldi r25,hi8(0)	 ;   string
	rjmp .L41
.L51:
	.stabn 68,0,225,.LM136-lcdputs
.LM136:
.LBB10:
	ldi r24,lo8(0)	 ;   <anonymous>
	ldi r25,hi8(0)	 ;   <anonymous>
	rjmp .L53
.L57:
	.stabn 68,0,233,.LM137-lcdputs
.LM137:
.LBE10:
.LBB11:
	cpi r18,lo8(32)
	brsh .L49
	.stabn 68,0,235,.LM138-lcdputs
.LM138:
/* #APP */
	cli
	.stabn 68,0,236,.LM139-lcdputs
.LM139:
/* #NOAPP */
	lds r26,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r27,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	ldi r18,lo8(-64)	 ;   character
	st X,r18	 ;   character
	.stabn 68,0,238,.LM140-lcdputs
.LM140:
	lds r30,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r31,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	mov r24,r30
	mov r25,r31
	subi r24,lo8(lcdbuffer)
	sbci r25,hi8(lcdbuffer)
	mov r21,r17
	mov r20,r16
	mov r19,r15
	mov r18,r14
	rjmp 2f
1:	lsl r18
	rol r19
	rol r20
	rol r21
2:	dec r24
	brpl 1b
	lds r24,lcdcontrolcharbits	 ;   lcdcontrolcharbits
	lds r25,(lcdcontrolcharbits)+1	 ;   lcdcontrolcharbits
	lds r26,(lcdcontrolcharbits)+2	 ;   lcdcontrolcharbits
	lds r27,(lcdcontrolcharbits)+3	 ;   lcdcontrolcharbits
	or r24,r18
	or r25,r19
	or r26,r20
	or r27,r21
	sts lcdcontrolcharbits,r24	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+1,r25	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+2,r26	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+3,r27	 ;   lcdcontrolcharbits
	.stabn 68,0,239,.LM141-lcdputs
.LM141:
	mov r26,r30
	mov r27,r31
	adiw r26,1
	sts (lcd_buffer_in_pt)+1,r27	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r26	 ;   lcd_buffer_in_pt
	subi r26,lo8(lcdbuffer+32)
	sbci r27,hi8(lcdbuffer+32)
	brlo .L47
	.stabn 68,0,241,.LM142-lcdputs
.LM142:
	sts (lcd_buffer_in_pt)+1,r13	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r12	 ;   lcd_buffer_in_pt
.L47:
	.stabn 68,0,244,.LM143-lcdputs
.LM143:
	lds r18,lcdbuffersize	 ;   lcdbuffersize
	subi r18,lo8(-(1))
	sts lcdbuffersize,r18	 ;   lcdbuffersize
	.stabn 68,0,249,.LM144-lcdputs
.LM144:
	in r19,89-0x20
	ori r19,lo8(2)
	out 89-0x20,r19
	.stabn 68,0,250,.LM145-lcdputs
.LM145:
/* #APP */
	sei
/* #NOAPP */
	rjmp .L49
	.stabn 68,0,276,.LM146-lcdputs
.LM146:
.L41:
.LBE11:
/* epilogue: frame size=0 */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
/* epilogue end (size=9) */
/* function lcdputs size 211 (194) */
	.size	lcdputs, .-lcdputs
	.stabs	"character:r(8,2)",64,0,231,24
	.stabn	192,0,0,.LBB11-lcdputs
	.stabn	224,0,0,.LBE11-lcdputs
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-lcdputs
	.stabs	"lcdputhex:F(8,2)",36,0,282,lcdputhex
	.stabs	"bin:P(1,3)",64,0,281,28
.global	lcdputhex
	.type	lcdputhex, @function
lcdputhex:
	.stabn 68,0,282,.LM147-lcdputhex
.LM147:
/* prologue: frame size=0 */
	push r28
/* prologue end (size=1) */
	mov r28,r24	 ;   bin
	.stabn 68,0,286,.LM148-lcdputhex
.LM148:
.LBB12:
	swap r24	 ;   temp
	andi r24,0x0f	 ;   temp
	.stabn 68,0,287,.LM149-lcdputhex
.LM149:
	subi r24,lo8(-(48))	 ;   temp
	.stabn 68,0,288,.LM150-lcdputhex
.LM150:
	cpi r24,lo8(58)	 ;   temp
	brlo .L60
	.stabn 68,0,289,.LM151-lcdputhex
.LM151:
	subi r24,lo8(-(7))	 ;   temp
.L60:
	.stabn 68,0,204,.LM152-lcdputhex
.LM152:
.LBB13:
	lds r25,lcdbuffersize	 ;   lcdbuffersize
	cpi r25,lo8(32)
	brlo .+2
	rjmp .L63
	.stabn 68,0,206,.LM153-lcdputhex
.LM153:
/* #APP */
	cli
	.stabn 68,0,207,.LM154-lcdputhex
.LM154:
/* #NOAPP */
	lds r26,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r27,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	st X,r24	 ;   temp
	.stabn 68,0,210,.LM155-lcdputhex
.LM155:
	lds r30,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r31,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	mov r24,r30
	mov r25,r31
	subi r24,lo8(lcdbuffer)
	sbci r25,hi8(lcdbuffer)
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	ldi r20,hlo8(1)
	ldi r21,hhi8(1)
	rjmp 2f
1:	lsl r18
	rol r19
	rol r20
	rol r21
2:	dec r24
	brpl 1b
	com r18
	com r19
	com r20
	com r21
	lds r24,lcdcontrolcharbits	 ;   lcdcontrolcharbits
	lds r25,(lcdcontrolcharbits)+1	 ;   lcdcontrolcharbits
	lds r26,(lcdcontrolcharbits)+2	 ;   lcdcontrolcharbits
	lds r27,(lcdcontrolcharbits)+3	 ;   lcdcontrolcharbits
	and r24,r18
	and r25,r19
	and r26,r20
	and r27,r21
	sts lcdcontrolcharbits,r24	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+1,r25	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+2,r26	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+3,r27	 ;   lcdcontrolcharbits
	.stabn 68,0,212,.LM156-lcdputhex
.LM156:
	mov r26,r30
	mov r27,r31
	adiw r26,1
	sts (lcd_buffer_in_pt)+1,r27	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r26	 ;   lcd_buffer_in_pt
	subi r26,lo8(lcdbuffer+32)
	sbci r27,hi8(lcdbuffer+32)
	brlo .L62
	.stabn 68,0,214,.LM157-lcdputhex
.LM157:
	ldi r18,lo8(lcdbuffer)
	ldi r19,hi8(lcdbuffer)
	sts (lcd_buffer_in_pt)+1,r19	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r18	 ;   lcd_buffer_in_pt
.L62:
	.stabn 68,0,217,.LM158-lcdputhex
.LM158:
	lds r25,lcdbuffersize	 ;   lcdbuffersize
	subi r25,lo8(-(1))
	sts lcdbuffersize,r25	 ;   lcdbuffersize
	.stabn 68,0,222,.LM159-lcdputhex
.LM159:
	in r19,89-0x20
	ori r19,lo8(2)
	out 89-0x20,r19
	.stabn 68,0,223,.LM160-lcdputhex
.LM160:
/* #APP */
	sei
/* #NOAPP */
.L63:
	.stabn 68,0,203,.LM161-lcdputhex
.LM161:
	.stabn 68,0,292,.LM162-lcdputhex
.LM162:
	mov r24,r28	 ;   temp,  bin
.LBE13:
	andi r24,lo8(15)	 ;   temp
	.stabn 68,0,293,.LM163-lcdputhex
.LM163:
	subi r24,lo8(-(48))	 ;   temp
	.stabn 68,0,294,.LM164-lcdputhex
.LM164:
	cpi r24,lo8(58)	 ;   temp
	brlo .L64
	.stabn 68,0,295,.LM165-lcdputhex
.LM165:
	subi r24,lo8(-(7))	 ;   temp
.L64:
	.stabn 68,0,204,.LM166-lcdputhex
.LM166:
.LBB14:
	cpi r25,lo8(32)
	brlo .+2
	rjmp .L65
	.stabn 68,0,206,.LM167-lcdputhex
.LM167:
/* #APP */
	cli
	.stabn 68,0,207,.LM168-lcdputhex
.LM168:
/* #NOAPP */
	lds r26,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r27,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	st X,r24	 ;   temp
	.stabn 68,0,210,.LM169-lcdputhex
.LM169:
	lds r22,lcd_buffer_in_pt	 ;   lcd_buffer_in_pt
	lds r23,(lcd_buffer_in_pt)+1	 ;   lcd_buffer_in_pt
	mov r25,r23
	mov r24,r22
	subi r24,lo8(lcdbuffer)
	sbci r25,hi8(lcdbuffer)
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	ldi r20,hlo8(1)
	ldi r21,hhi8(1)
	rjmp 2f
1:	lsl r18
	rol r19
	rol r20
	rol r21
2:	dec r24
	brpl 1b
	com r18
	com r19
	com r20
	com r21
	lds r24,lcdcontrolcharbits	 ;   lcdcontrolcharbits
	lds r25,(lcdcontrolcharbits)+1	 ;   lcdcontrolcharbits
	lds r26,(lcdcontrolcharbits)+2	 ;   lcdcontrolcharbits
	lds r27,(lcdcontrolcharbits)+3	 ;   lcdcontrolcharbits
	and r24,r18
	and r25,r19
	and r26,r20
	and r27,r21
	sts lcdcontrolcharbits,r24	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+1,r25	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+2,r26	 ;   lcdcontrolcharbits
	sts (lcdcontrolcharbits)+3,r27	 ;   lcdcontrolcharbits
	.stabn 68,0,212,.LM170-lcdputhex
.LM170:
	mov r31,r23
	mov r30,r22
	adiw r30,1
	sts (lcd_buffer_in_pt)+1,r31	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r30	 ;   lcd_buffer_in_pt
	subi r30,lo8(lcdbuffer+32)
	sbci r31,hi8(lcdbuffer+32)
	brlo .L66
	.stabn 68,0,214,.LM171-lcdputhex
.LM171:
	ldi r20,lo8(lcdbuffer)
	ldi r21,hi8(lcdbuffer)
	sts (lcd_buffer_in_pt)+1,r21	 ;   lcd_buffer_in_pt
	sts lcd_buffer_in_pt,r20	 ;   lcd_buffer_in_pt
.L66:
	.stabn 68,0,217,.LM172-lcdputhex
.LM172:
	lds r22,lcdbuffersize	 ;   lcdbuffersize
	subi r22,lo8(-(1))
	sts lcdbuffersize,r22	 ;   lcdbuffersize
	.stabn 68,0,222,.LM173-lcdputhex
.LM173:
	in r21,89-0x20
	ori r21,lo8(2)
	out 89-0x20,r21
	.stabn 68,0,223,.LM174-lcdputhex
.LM174:
/* #APP */
	sei
/* #NOAPP */
	ldi r24,lo8(1)	 ;   <anonymous>
	ldi r25,hi8(1)	 ;   <anonymous>
	rjmp .L67
.L65:
	.stabn 68,0,225,.LM175-lcdputhex
.LM175:
	ldi r24,lo8(0)	 ;   <anonymous>
	ldi r25,hi8(0)	 ;   <anonymous>
.L67:
	.stabn 68,0,203,.LM176-lcdputhex
.LM176:
.LBE14:
	clr r25	 ;   <anonymous>
	.stabn 68,0,297,.LM177-lcdputhex
.LM177:
.LBE12:
/* epilogue: frame size=0 */
	pop r28
	ret
/* epilogue end (size=2) */
/* function lcdputhex size 186 (183) */
	.size	lcdputhex, .-lcdputhex
	.stabs	"temp:r(8,2)",64,0,283,24
	.stabn	192,0,0,.LBB12-lcdputhex
	.stabn	224,0,0,.LBE12-lcdputhex
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-lcdputhex
	.comm lcdstat,1,1
	.comm lcdcontrolcharbits,4,1
	.comm lcdbuffer,32,1
	.comm lcdbuffersize,1,1
	.comm lcd_buffer_in_pt,2,1
	.comm lcd_buffer_out_pt,2,1
	.comm lcdtemp,1,1
	.stabs	"lcdstat:G(8,2)",32,0,13,0
	.stabs	"lcdcontrolcharbits:G(8,6)",32,0,16,0
	.stabs	"lcdbuffer:G(1,4)=ar(1,5)=r(1,5);0000000000000;0000000177777;;0;31;(8,2)",32,0,18,0
	.stabs	"lcdbuffersize:G(8,2)",32,0,19,0
	.stabs	"lcd_buffer_in_pt:G(1,6)=*(8,2)",32,0,20,0
	.stabs	"lcd_buffer_out_pt:G(1,6)",32,0,20,0
	.stabs	"lcdtemp:G(8,2)",32,0,21,0
	.text
	.stabs "",100,0,0,Letext
Letext:
/* File "lcd.c": code  855 = 0x0357 ( 797), prologues  26, epilogues  32 */

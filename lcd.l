GAS LISTING  			page 1


   1               	.macro togglede
   9               	
  10               	.global setuplcd
  11               	setuplcd:
  12 0000 0FE3      	ldi r16,0x3f
  13 0002 01BB      	out (((0x11)+0x20)-0x20),r16
  14               	
  15               	
  16               	
  17 0004 E0E2      	ldi r30,lo8(20000)
  18 0006 FEE4      	ldi r31,hi8(20000)
  19 0008 3197      	_sl1:sbiw r30,1
  20 000a F1F7      	brne _sl1
  21               	
  22               	
  23 000c 03E0      	ldi r16,0x03
  24 000e 02BB      	out (((0x12)+0x20)-0x20),r16
  25 0010 949A 0000 	togglede
  25      0000 0000 
  25      0000 9498 
  26               	
  27               	
  28               	
  29 001c E8E8      	ldi r30,lo8(5000)
  30 001e F3E1      	ldi r31,hi8(5000)
  31 0020 3197      	_sl5:sbiw r30,1
  32 0022 F1F7      	brne _sl5
  33               	
  34 0024 949A 0000 	togglede
  34      0000 0000 
  34      0000 9498 
  35               	
  36               	
  37               	
  38 0030 06E9      	ldi r16,150
  39               	_sl2:
  40 0032 0A95      	dec r16
  41 0034 F1F7      	brne _sl2
  42               	
  43               	
  44 0036 949A 0000 	togglede
  44      0000 0000 
  44      0000 9498 
  45               	
  46               	
  47               	
  48 0042 04E6      	ldi r16,100
  49               	_sl4:
  50 0044 0A95      	dec r16
  51 0046 F1F7      	brne _sl4
  52               	
  53               	
  54 0048 02E0      	ldi r16,0x02
  55 004a 02BB      	out (((0x12)+0x20)-0x20),r16
  56 004c 949A 0000 	togglede
  56      0000 0000 
  56      0000 9498 
GAS LISTING  			page 2


  57               	
  58               	
  59               	
  60 0058 04E6      	ldi r16,100
  61               	_sl3:
  62 005a 0A95      	dec r16
  63 005c F1F7      	brne _sl3
  64               	
  65               	
  66 005e 08E2      	ldi r16,0x28
  67 0060 0BD0      	rcall lcdputcontrolchar
  68               	
  69               	
  70 0062 08E0      	ldi r16,0x08
  71 0064 09D0      	rcall lcdputcontrolchar
  72 0066 01E0      	ldi r16,0x01
  73 0068 07D0      	rcall lcdputcontrolchar
  74 006a 02E0      	ldi r16,0x02
  75 006c 05D0      	rcall lcdputcontrolchar
  76 006e 06E0      	ldi r16,0x06
  77 0070 03D0      	rcall lcdputcontrolchar
  78 0072 0CE0      	ldi r16,(0x08|0x04)
  79 0074 01D0      	rcall lcdputcontrolchar
  80               	
  81 0076 0895      	ret
  82               	
  83               	.global lcdputcontrolchar
  84               	lcdputcontrolchar:
  85 0078 2227      	clr r18
  86 007a 0BD0      	rcall _bytetolcd
  87               	
  88               	
  89 007c E8E9      	ldi r30,lo8(15000)
  90 007e FAE3      	ldi r31,hi8(15000)
  91 0080 3197      	lpcc:sbiw r30,1
  92 0082 F1F7      	brne lpcc
  93               	
  94 0084 0895      	ret
  95               	
  96               	.global lcdputchar
  97               	lcdputchar:
  98               	
  99 0086 20E2      	ldi r18,0x20
 100 0088 04D0      	rcall _bytetolcd
 101               	
 102               	
 103 008a 04E6      	ldi r16,100
 104               	lpc1:
 105 008c 0A95      	dec r16
 106 008e F1F7      	brne lpc1
 107               	
 108 0090 0895      	ret
 109               	
 110               	
 111               	
 112               	
 113               	_bytetolcd:
GAS LISTING  			page 3


 114               	
 115 0092 102F      	mov r17,r16
 116 0094 1295      	swap r17
 117 0096 1F70      	andi r17,0x0f
 118               	
 119 0098 122B      	or r17,r18
 120 009a 12BB      	out (((0x12)+0x20)-0x20),r17
 121 009c 949A 0000 	togglede
 121      0000 0000 
 121      0000 9498 
 122               	
 123 00a8 0F70      	andi r16,0x0f
 124 00aa 022B      	or r16,r18
 125 00ac 02BB      	out (((0x12)+0x20)-0x20),r16
 126 00ae 949A 0000 	togglede
 126      0000 0000 
 126      0000 9498 
 127 00ba 0895      	ret
 128               	
 129               	
 130               	.global lcdputflashstring
 131               	
 132               	_loop:
 133               	
 134 00bc EF93      	push r30
 135 00be FF93      	push r31
 136 00c0 E2DF      	rcall lcdputchar
 137 00c2 FF91      	pop r31
 138 00c4 EF91      	pop r30
 139               	_loop2:
 140               	
 141 00c6 3196      	adiw r30,1
 142               	lcdputflashstring:
 143               	
 144 00c8 C895      	lpm
 145 00ca 002D      	mov r16,r0
 146 00cc 0A30      	cpi r16,10
 147 00ce 19F0      	breq _newline
 148 00d0 0023      	tst r16
 149 00d2 A1F7      	brne _loop
 150 00d4 0895      	ret
 151               	
 152               	_newline:
 153               	
 154 00d6 EF93      	push r30
 155 00d8 FF93      	push r31
 156 00da 00EC      	ldi r16,(0x80|0x40)
 157 00dc CDDF      	rcall lcdputcontrolchar
 158 00de FF91      	pop r31
 159 00e0 EF91      	pop r30
 160 00e2 F1CF      	rjmp _loop2
GAS LISTING  			page 4


DEFINED SYMBOLS
                            *ABS*:00000001 __AVR_AT90S2313__
    {standard input}:11     .text:00000000 setuplcd
    {standard input}:19     .text:00000008 _sl1
    {standard input}:31     .text:00000020 _sl5
    {standard input}:39     .text:00000032 _sl2
    {standard input}:49     .text:00000044 _sl4
    {standard input}:61     .text:0000005a _sl3
    {standard input}:84     .text:00000078 lcdputcontrolchar
    {standard input}:113    .text:00000092 _bytetolcd
    {standard input}:91     .text:00000080 lpcc
    {standard input}:97     .text:00000086 lcdputchar
    {standard input}:104    .text:0000008c lpc1
    {standard input}:142    .text:000000c8 lcdputflashstring
    {standard input}:132    .text:000000bc _loop
    {standard input}:139    .text:000000c6 _loop2
    {standard input}:152    .text:000000d6 _newline

NO UNDEFINED SYMBOLS

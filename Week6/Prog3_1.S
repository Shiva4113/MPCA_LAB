; Write a program to swap the first and last character of a given string.

.DATA
A:.ASCIZ "ksrhbgsriybg" 

.TEXT
LDR R0,=A
LDRB R1,[R0] ;i loaded the first character

loop:
LDRB R2,[R0],#1
CMP R2,#0
BEQ last
BNE loop


last:
SUB R0,R0,#2 ;last character
LDRB R3,[R0]
STRB R1,[R0]
LDR R0,=A
STRB R3,[R0]

SWI 0X02
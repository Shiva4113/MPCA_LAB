;Write an ALP to perform Convolution using MLA instruction (Addition of multiplication of respective numbers of loc A and loc B).
.DATA
A:.WORD 10,20,30,40,50
B:.WORD 20,30,40,50,10

.TEXT

MOV R0,#0 ;sum
MOV R4,#5;length of words

LDR R1,=A
LDR R2,=B

loop:
LDR R5,[R1],#4
LDR R6,[R2],#4
MLA R0,R5,R6,R0
SUB R4,R4,#1
CMP R4,#0
BNE loop
SWI 0x11    
;Write an ALP  to find the  length of a given string

.DATA
A:.ASCIZ "HELLO THERE"

.TEXT
MOV R0,#0
LDR R1,=A

loop:
LDRB R2,[R1],#1
MOV R3,#0
CMP R2,R3
BEQ exit
ADD R0,R0,#1
B loop

exit:
SWI 0X11
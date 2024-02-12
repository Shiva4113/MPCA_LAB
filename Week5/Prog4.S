;Write an ALP  to copy string from one location to another

.DATA
A:.ASCIZ "HELLO THERE"
B:.ASCIZ ""

.TEXT
LDR R1,=A
LDR R5,=B
loop:
LDRB R2,[R1],#1
STRB R2,[R5],#1
MOV R3,#0
CMP R2,R3
BEQ exit
B loop

exit:
SWI 0X11
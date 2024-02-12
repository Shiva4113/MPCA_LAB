;Write an ALP to find whether a given character is present in a string. If present, find how many times the given character is present in a string.

.DATA
A:.ASCIZ "HELLO THERE"
B:.ASCIZ "E" ; i will find the number of E's in the string A


.TEXT
LDR R1,=A
LDR R5,=B
LDRB R6,[R5]
MOV R0,#0

loop:
LDRB R2,[R1],#1
CMP R2,R6
BLEQ update
MOV R3,#0
CMP R2,R3
BEQ exit
B loop

update:
ADD R0,R0,#1
MOV PC,LR

exit:
SWI 0X11


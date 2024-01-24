;Generate Fibonacci Series and store them in an array / memory location.

A:.word 0,1,0,0,0,0,0,0,0,0

LDR R0,=A
MOV R5,#0
MOV R3,#0 ; TEMP

LDR R1,[R0]
STR R3,[R0],#4
LDR R2,[R0]
MOV R3,#1
STR R3,[R0],#4
ADD R5,R5,#2

loop:
ADD R3,R2,R1
STR R3,[R0],#4
MOV R1,R2
MOV R2,R3

ADD R5,R5,#1
CMP R5,#10
BEQ end
BNE loop

end:

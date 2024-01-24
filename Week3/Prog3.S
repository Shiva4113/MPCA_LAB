;Write a program to Classify the given set of numbers as positive, negative or zero and also store them in different memory locations.

A: .word -5,-4,-3,-2,-1,0,0,0,0,1,2,3,4,5
P: .word 0,0,0,0,0,0,0,0,0
N: .word 0,0,0,0,0,0,0,0,0
Z: .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDR R0,=A
LDR R1,=P
LDR R2,=N
LDR R3,=Z
MOV R7,#0

loop:
LDR R4,[R0]
CMP R4,#0
BEQ zero
BLT neg
BGT posi
back:
ADD R0,R0,#4
ADD R3,R3,#1
CMP R3,#15
BNE loop
BEQ end

zero:
STR R4,[R3],#4
B back

posi:
STR R4,[R1],#4
B back

neg:
STR R4,[R2],#4
B back

end:
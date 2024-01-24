A: .word 1,2,3,4,5,6,7,8,9,10
E: .word 0,0,0,0,0,0,0,0,0
O: .word 0,0,0,0,0,0,0,0,0

LDR R0,=A
LDR R1,=E
LDR R2,=O
MOV R3,#0

loop:
LDR R4,[R0]
AND R5,R4,#1
CMP R5,#1
BEQ odd
BNE even
back:
ADD R0,R0,#4
ADD R3,R3,#1
CMP R3,#10
BNE loop
BEQ end


odd:
STR R4,[R2],#4
B back

even: 
STR R4,[R1],#4
B back

end:

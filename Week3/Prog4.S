;Write a program to find the largest number from a given set of numbers.
A: .word 10,30,20,50,60,99,40,70

LDR R0,=A
MOV R2,#0 ; THIS WILL BE FOR MAX
MOV R3,#1

loop:
LDR R4,[R0]
CMP R4,R2
BGT change
back:
ADD R3,R3,#1
ADD R0,R0,#4
CMP R3,#8
BNE loop
BEQ end

change:
    MOV R2,R4
    B back

end:
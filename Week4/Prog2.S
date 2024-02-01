; Write a program to compute the factorial of a number using subroutines.

.text

MOV R0,#5
MOV R1,#1

loop:
BL func
CMP R0,#1
BNE loop
SWI 0X11

func:
MUL R2,R1,R0
SUB R0,R0,#1
MOV R1,R2
MOV PC,LR
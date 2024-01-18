; Write a program to find the factorial of a given number.

.text

MOV R0,#5
MOV R1,#1
MOV R2,#1

fact:
    MOV R1,R2
    MUL R2,R1,R0
    SUB R0,R0,#1
    CMP R0,#1
    BNE fact

.end
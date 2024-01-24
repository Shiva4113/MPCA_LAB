;Write a program to add two numbers by reading them from memory and
;store the result back to the memory.

A:.word 5,10
B:.word 0

LDR R0,=A
LDMIA R0!,{R1,R2}
ADD R3,R1,R2
LDR R0,=B
STR R3,[R0]
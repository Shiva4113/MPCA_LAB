; Write a program to search for an element in an array using Linear search technique


A:.word 10,24,26,27,28,19,20,69,70,67

MOV R0,#10 ; loop counter var
LDR R1,=A

MOV R2,#68 ; key
MOV R3,#0 ; 1 if found

loop:
LDR R4,[R1],#4
CMP R4,R2
BEQ found
SUB R0,R0,#1
CMP R0,#0
BNE loop
SWI 0X11

found:
ADD R3,R3,#1
SWI 0X11
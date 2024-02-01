;  Write a program to perform  2X2 matrix addition. (you may Try for 3 X 3).

A:.word 1,2,3,4,5,6,7,8,9
B:.word 9,8,7,6,5,4,3,2,1
C:.word 0,0,0,0,0,0,0,0,0

MOV R0,#3
LDR R4,=A
LDR R5,=B
LDR R6,=C

outer:
SUB R0,R0,#1
MOV R1,#3
inner:
    LDR R2,[R4],#4
    LDR R3,[R5],#4
    ADD R7,R2,R3

    STR R7,[R6],#4

    ;update arrays
    ;ADD R4,R4,#4
    ;ADD R5,R5,#4
    ;ADD R6,R6,#4

    ;loop
    SUB R1,R1,#1
    CMP R1,#0
    BNE inner

CMP R0,#0
BNE outer
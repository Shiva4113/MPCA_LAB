;Write an ALP to multiply 2 matrices.(3x3 matrix multiplication)

.DATA 
A:.WORD 1,2,3,4,5,6,7,8,9
B:.WORD 1,2,3,4,5,6,7,8,9
C:.WORD 0,0,0,0,0,0,0,0,0

.TEXT
LDR R3,=C ;address of C
MOV R4,#0
MOV R8,#0
MOV R9,#0

outer:
MOV R10,#0
MOV R9,#0
MOV R8,#0
inner:
    MOV R11,#0
    LDR R0,=A ;address of A -> ill need a counter for each
    LDR R1,=B ;address of B 
    ADD R0,R0,R4
    ADD R1,R1,R8
    MOV R10,#0
    innermost:
        ADD R11,R11,#1
        LDR R5,[R0],#4 ; value
        LDR R6,[R1],#12 ; value
        MUL R7,R6,R5
        ADD R10,R10,R7
        CMP R11,#3
        BLEQ update
        BNE innermost
    ADD R8,R8,#4
    ADD R9,R9,#1
    CMP R9,#3
    BNE inner
ADD R4,R4,#12
CMP R4,#36
BNE outer
SWI 0X11



update:
    STR R10,[R3],#4
    MOV PC,LR
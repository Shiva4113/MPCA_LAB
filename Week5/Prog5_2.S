;Write a program in ARM7TDMI-ISA to generate a diagonal matrix.

.DATA
A:.word 0,0,0,0,0,0,0,0,0 ; assumed a 3x3 matrix 

.TEXT
MOV R0,#0 ; outer loop variable
LDR R4,=A
MOV R2,#1

outer:
MOV R1,#0 ; inner loop variable
inner:
    CMP R0,R1
    BLEQ update
    ADD R1,R1,#1
    CMP R1,R2
    CMP R1,#3 ; inner loop check
    ADD R4,R4,#4
    BNE inner

ADD R0,R0,#1
CMP R0,#3 ; outer loop check
BNE outer
SWI 0X11

update:
STR R2,[R4]
ADD R2,R2,#1
MOV PC,LR
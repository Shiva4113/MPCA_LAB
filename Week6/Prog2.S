;Write an ALP using conditional ARM instructions to sort an array of numbers using Bubble Sort Algorithm.
.DATA 
A:.WORD 9,4,6,2,4,8,3,1,0

.TEXT
LDR R0,=A ; for outer loop
MOV R1,#0 ;counter
LDR R4,=A; for inner loop

outer:
ADD R1,R1,#1
MOV R2,#0
LDR R3,[R0]
LDR R4,=A
ADD R4,R4,#4
MOV R10,#0
    inner:
    LDR R5,[R4]
    ADD R2,R2,#1

    CMP R3,R5
    BLGT swap
    BLLE change
    CMP R2,#8
    ADD R4,R4,#4
    BNE inner

ADD R3,R3,#4
CMP R1,#8
BNE outer
B end


swap:
    
    MOV R9,R5
    MOV R5,R3
    STR R5,[R4] ;UNSURE
    SUB R4,R4,#4
    MOV R3,R9
    STR R3,[R4],#4
    ;ADD R4,R4,#4
    MOV R3,R5
    MOV PC,LR


change:
    MOV R3,R5
    ;ADD R4,R4,#4
    ADD R10,R10,#1
    CMP R10,#7
    BEQ end
    MOV PC,LR


end: SWI 0X11
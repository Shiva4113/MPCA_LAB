;Write an ALP to implement Sum[i]+=a[i][j]

.DATA
A:.word 1,2,3,4,5,6,7,8,9 ; assumed a 3x3
B:.word 0,0,0 ; assumed 3 rows

.TEXT
MOV R0,#3
LDR R4,=A
LDR R5,=B

outer:
SUB R0,R0,#1
MOV R1,#3
MOV R2,#0
inner:
    LDR R3,[R4],#4
    ADD R2,R2,R3
    SUB R1,R1,#1
    CMP R1,#0
    BNE inner
CMP R0,#0
STR R2,[R5],#4
BNE outer
SWI 0X11
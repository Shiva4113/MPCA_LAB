;Write a program to add array of ten 8-bit numbers taking data from memory location stored as byte data (use .byte to store the data instead of .word)

A:.byte 10,20,30,40,50,60,70,80,90,100

LDR R0,=A
MOV R1,#0 ; STORING THE SUM
MOV R3,#0

loop:
LDRB R2,[R0]
ADD R1,R1,R2
ADD R0,R0,#1
ADD R3,R3,#1
CMP R3,#10
BEQ end
BNE loop

end:

; Write an ALP to check whether the given number has odd or even number of 1’s (Even Parity and Odd Parity). 

MOV R0,#0 ; counter
MOV R1,#0x5A ; input

testing:
AND R2,R1,#1
CMP R2,#1
BEQ update
back:
MOV R1,R1, LSR #1
CMP R1,#0
BGT testing
B zeros



update: 
ADD R0,R0,#1
B back

zeros:
AND R2,R0,#1
CMP R2,#1
BEQ odd
BNE even



odd:
    MOV R5,#1
    SWI 0X11
    ;odd parity


even:
    MOV R6,#1
    SWI 0X11
    ;even parity
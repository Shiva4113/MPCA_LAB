; Write a program to find the sum of N data items at alternate [odd or even positions] locations in the memory. Store the result in the memory location. 
.DATA
A:.word 1,2,3,4,5,6,7,8,9,10,11,12,13,14 ;assume N is 14
END:
.text
LDR R0,=A
LDR R10,=A
ADD R10,R10,#4
LDR R1,=END
SUB R5,R1,R0
MOV R5,R5,LSR #2 ; total length of array
MOV R2,#0 ; sum ODD
MOV R8,#0 ; SUM EVEN
MOV R4,#0 ; LCV
AND R6,R5,#1 ; array is odd
CMP R6,#0 

BEQ even 
BNE odd

back:

loop1:
ADD R4,R4,#1
LDR R7,[R0],#8
ADD R2,R2,R7
CMP R3,R4
BNE loop1

MOV R4,#0

loop2:
ADD R4,R4,#1
LDR R7,[R10],#8
ADD R8,R8,R7
CMP R9,R4
BNE loop2
SWI 0X11

even:
MOV R3,R5,LSR #1
MOV R9,R3
B back

odd:
MOV R3,R5,LSR #1
MOV R9,R3
ADD R3,R3,#1
B back

.end
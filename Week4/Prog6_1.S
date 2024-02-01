; Write a program to search for an element in an array using binary search technique.
; for binary search, i assume the given array is sorted
.DATA
A:.word 2,4,5,7,9,10,13,15,17,19 ; assuming these 10 elements
END:
.text
MOV R0,#15 ; let this be the key to be searched in the array
MOV R9,#0 ; 1 if found
MOV R7,#4

;initial
LDR R1,=A ; low

LDR R2,=END

SUB R4,R2,R1 

MOV R4,R4,LSR #2 ; size of the array

SUB R2,R2,#4 ; high

;ADD R3,R1,R2

;MOV R3,R3, LSR #1 ; mid

MOV R8,R4,LSR #1 ;mid pos
MUL R8,R7,R8
ADD R3,R1,R8 ; initial MID

loop:
BL search
CMP R1,R2 ; if high == low then exit 
BNE loop
SWI 0X11



search:
LDR R6,[R3]
CMP R0,R6
BEQ found
BLT lower
BGT higher
back:
MOV PC,LR

lower:
MOV R2,R3 ;UPDATE HIGH
; ADD R3,R2,R1
; MOV R3,R3,LSR #1 ;UPDATE MID
SUB R4,R2,R1
MOV R4,R4, LSR #2
CMP R4,#1
BEQ lowhelp

MOV R8,R4,LSR #1
MUL R8,R7,R8
ADD R3,R1,R8

B back


higher:
MOV R1,R3 ; UPDATE LOW
; ADD R3,R2,R1
; MOV R3,R3,LSR #1 ;UPDATE MID
SUB R4,R2,R1
MOV R4,R4, LSR #2
CMP R4,#1
BEQ highhelp

MOV R8,R4,LSR #1 ;mid pos
MUL R8,R7,R8
ADD R3,R1,R8 ; UPDATE MID

B back

found:
MOV R9,R6
SWI 0X11

lowhelp:
MOV R1,R3
B back

highhelp:
MOV R3,R2
B back

.end
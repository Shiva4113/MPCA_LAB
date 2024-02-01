; Write an ALP to find the sum of all the digits of a given 32 bit number.
.text

MOV R0,#123 ; NUM
; 1024 IS THE UPPER LIMIT, nothing beyond this is being allowed
MOV R2,#0 ; temp control
MOV R3,#0 ; SUM

; since 1024 is highest allowed for now i can just brute force for it

thousand:
CMP R0,#1000
BLT hundred
ADD R3,R3,#1
SUB R0,R0,#1000
B thousand

hundred:
CMP R0,#100
BLT ten
ADD R3,R3,#1
SUB R0,R0,#100
B hundred

ten:
CMP R0,#10
BLT unit
ADD R3,R3,#1
SUB R0,R0,#10
B ten

unit:
ADD R3,R3,R0
SWI 0X11

.end

; I could brute force it for any number of digits in a loop as well, might implement it in the future
; Write an ALP to add if the numbers are equal, otherwise subtract them.
.text
MOV R0,#10
MOV R1,#10

CMP R0,R1
ADDEQ R2,R0,R1
SUBNE R3,R0,R1
.end
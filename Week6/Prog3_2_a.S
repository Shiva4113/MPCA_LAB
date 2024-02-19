; Given a c Code, convert it into its equivalent Arm Code.
;a)x = (a + b) - c;

; LET x -> R0, a -> R1, b -> R2, c -> R3
MOV R1,#1
MOV R2,#4
MOV R3,#3
ADD R4,R1,R2
SUB R0,R4,R3

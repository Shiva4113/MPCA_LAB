; Given a c Code, convert it into its equivalent Arm Code.
;b) z = (a << 2) |(b & 15);

; LET z -> R0, a -> R1, b -> R2

MOV R1,#2
MOV R1,R1, LSL #2
MOV R2,#4
MOV R9,#15
AND R3,R2,R9
ORR R0,R1,R3
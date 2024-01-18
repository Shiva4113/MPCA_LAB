; Write a program to find GCD of two numbers.

.text
MOV R0,#120
MOV R1,#120

gcd:
    CMP R0,R1
    BEQ stop
    BLT sub2
    BGT sub1
    B gcd

sub1:
    SUB R0,R0,R1
    MOV R2,R0
    MOV R0,R1
    MOV R1,R2
    B gcd

sub2:
    SUB R1,R1,R0
    MOV R2,R1
    MOV R1,R0
    MOV R0,R2
    B gcd

stop:
    ; gcd found
.end
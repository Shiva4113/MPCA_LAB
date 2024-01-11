; Write an ALP to demonstrate various logical operations

.text

    MOV R0,#5
    MOV R1,#10
    ; AND operation
    AND R2,R0,R1
    ;OR operation
    ORR R3,R0,R1
    ; XOR operation
    EOR R4,R0,R1

.end
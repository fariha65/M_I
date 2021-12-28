.MODEL SMALL 
.STACK 200H 

.DATA  

MSGA DB "YEAR (4 DIGIT) : $"
MSGN DB "The year is not leapyear$"
MSGY DB "The year is leapyear$"

INPUT DW ?
FH DW 400D
HN DW 100D
FR DW 4D

.CODE

MAIN PROC
    ;INITIALIZING DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    

    MOV AH, 9H
    LEA DX, MSGA
    INT 21H
    

    CALL INP
    

    MOV AH,4CH
    

    INT 21H
    
    MAIN ENDP

INP PROC
    MOV INPUT, 0H
    MOV CX, 04H
    AGAIN:
        MOV AX, INPUT
        MOV BX, 10D
        MUL BX
        MOV INPUT, AX
        MOV AH, 01H
        INT 21H
        SUB AL, 30H
        XOR AH, AH
        ADD INPUT, AX
    LOOP AGAIN
    
    MOV AX, INPUT
    XOR DX, DX
    DIV FH
    CMP DX, 0000H
    JE LY
    
    XOR DX, DX
    MOV AX, INPUT
    DIV HN
    CMP DX, 0000H
    JE NOO 
    
    XOR DX, DX
    MOV AX, INPUT
    DIV FR
    CMP DX, 0000H
    JE YAA
    JMP NOO 
    
    YAA:
        CALL LY  
        
    NOO:
        CALL NLY




LY PROC
    CALL NEW_LINE
    MOV AH, 9H
    LEA DX, MSGY
    INT 21H
    CALL EXIT
    RET
    LY ENDP


NLY PROC
    CALL NEW_LINE
    MOV AH, 9H
    LEA DX, MSGN
    INT 21H
    CALL EXIT
    RET
    NLY ENDP




NEW_LINE PROC
    MOV AH, 2H
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    RET
    NEW_LINE ENDP   

EXIT PROC
    MOV AH, 4CH
    INT 21H
    EXIT ENDP


END MAIN








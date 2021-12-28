.MODEL SMALL
.STACK 200H
.DATA

opr1 dw 0067H
opr2 dw 0060H
result dw ?
carry dw 0000H



.CODE

    MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    MOV AX,OPR1
    MOV BX,OPR2
    ADD AX,BX
    MOV RESULT,AX
    JNC EXIT
    INC CARRY
    MOV CX,CARRY
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    
END MAIN




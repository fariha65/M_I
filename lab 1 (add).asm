.MODEL SMALL
.STACK 200H

.DATA 
A DW 9FFFH
B DW 9FFFH
SUM DW ? 
CARRY DW 0


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AX,A
    
    ADD AX,B
    MOV SUM,AX
    JNC EXIT
    INC CARRY
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    
    
    MAIN ENDP
END MAIN




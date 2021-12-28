.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV CX,10 
    MOV BL,'0'
    
    TOP:
    
    MOV AH ,2H
    MOV DL,BL
    INT 21H
    
    MOV DL ,0AH
    INT 21H
    
    MOV DL,0DH
    INT 21H
    INC BL
    
    
    LOOP TOP
    
    
    MAIN ENDP
END MAIN





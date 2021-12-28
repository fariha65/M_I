.MODEL SMALL
.STACK 50H
.DATA
NL DB 10,13,'$'
A DB 49
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CH,0
    MOV CL,5
    MOV BX,1
    
    FOR_1: 
     
     PUSH CX
     
     
     MOV AH,2
     MOV DL,32
     
     FOR_2:
     
     INT 21H
     LOOP FOR_2
     
    
    
    MOV CL,BL
    
   
   
    MOV DL,A
     
    
   
    FOR_3:
    
    INT 21H
     
     
     
    LOOP FOR_3
     
    
    
    LEA DX,NL
    MOV AH,9
    INT 21H
    
    INC BX
    INC BX
    
    POP CX
   
    
    LOOP FOR_1
     
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    



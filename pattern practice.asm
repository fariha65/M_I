.MODEL SMALL
.STACK 10H
.DATA 
 ;MSG DB "ENTER ANY VALUE(1-9):$" 
 ;VAR DB ?
 
.CODE
MAIN PROC
    
     ;MOV AX,@DATA
     ;MOV DS,AX
     ;LEA DX,MSG
     ;MOV AH, 9H
     ;INT 21H
     
     ;MOV AH,1H
     ;INT 21H
     ;SUB AL,48
     ;MOV VAR,AL
     
     ;MOV AH,2H
     ;MOV DL,0AH
     ;INT 21H
     ;MOV DL ,0DH
     ;INT 21H
     
     
     MOV CX,0
     MOV CL,5
     MOV BL,1
     
     
     
     LOOP1: 
     
     
     
     MOV CX,BX
      MOV AL,49 
         
         
        
     
     LOOP2:
     CMP BL,CL                  
     JCXZ EXIT
     MOV AH,2H
     
     
     MOV DL,AL
    
     
     INT 21H
     INC AL
     
     
     LOOP LOOP2
     
      INC BL
      CMP BL,6
      JE EXIT
   
    
                   
     MOV AH, 2H
     MOV DL,0AH
     INT 21H
     MOV DL,0DH 
     INT 21H
     
      
     LOOP LOOP1
     
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
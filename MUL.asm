.MODEL SMALL
.STACK 200H
.DATA

NUM1 DW 5H
NUM2 DW 6H
SUM DW 0 H
 

.CODE 
  
  MAIN PROC
    
    MOV AX,@DATA 
    MOV DS,AX
    
    MOV AX,NUM1
    MOV BX,NUM2
    
    LOOP:
    
    ADD SUM,AX
    
    
    DEC BX
   
    
   JNZ LOOP 
   
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN
  


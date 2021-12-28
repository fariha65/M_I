.MODEL SMALL
.STACK 100H
.DATA
N1 DB 12H
N2 DB 23H
MAX DB ?


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,N1
    CMP AL,N2
    JA N1MAX
    JMP N2MAX
    
    
     N1MAX: 
      MOV AL,N1 
      MOV MAX,AL
      JMP EXIT
     
     N2MAX:
      MOV AL,N2 
      MOV MAX,AL
      JMP EXIT
     
     
     EXIT:
      MOV AH,4CH
      INT 21H
    
    MAIN ENDP
END MAIN


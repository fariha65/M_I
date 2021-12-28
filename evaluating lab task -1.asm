.MODEL SMALL
.STACK 200H
.DATA 
X DW 2H
Y DB 5H

M DW ?
N DW ? 




.CODE
   MAIN PROC
      MOV AX,@DATA
      MOV DS,AX
      
      MOV AX,25H
      IDIV X
      MOV N,DX 

      MOV AL,5H
      ADD AL,Y
      MOV M,AX

      MOV AL,2H
      IMUL M
      
      
      
      SUB N,AX
      
      
      
      
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP
END MAIN
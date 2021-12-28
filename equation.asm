.MODEL SMALL
.STACK 100H
.DATA
X DW 8H
Y DB 1H

F DW ?

R DW ?




.CODE
   MAIN PROC
      MOV AX,@DATA
      MOV DS,AX
     
      MOV AX,25H
      IDIV X
      MOV R,AX
     
     

      MOV AL,5H
      ADD AL,Y
      MOV F,AX

      MOV AL,2H
      IMUL F
      MOV F,AX
     
     
      SUB R,AX
     
     
     
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP
END MAIN




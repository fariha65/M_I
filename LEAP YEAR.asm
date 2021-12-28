.MODEL SMALL
.STACK 100H
.DATA
A DW 'Enter a year:$'
YEAR DW ?
B DW 400
C DW 4 
D DW 100

MSG1 DW 'The year is leap year:$'
MSG2 DW 'The year is not leap year:$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A 
    
    INT 21H
    
    MOV AH,1
    
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    
    
    
    
   
           
           MOV  BX,YEAR
           IDIV B 
           
           CMP DX,AX
           JZ L1
           
           MOV  AX,YEAR
           IDIV C
           CMP YEAR ,DX
           JZ L1 
           
           
           MOV AX,YEAR
          
           IDIV D
           CMP YEAR ,DX
           JNZ L1
           
           JZ L2 
           



          L1:
          MOV AH,9
          LEA DX,MSG1
          INT 21
          JMP EXIT  
          
          L2:
          MOV AH,9
          LEA DX,MSG2
          INT 21
          JMP EXIT
           
          
          EXIT:
          MOV AH,4CH
          INT 21H
          MAIN ENDP
END MAIN
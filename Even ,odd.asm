.MODEL SMALL
.STACK  100
.DATA
N1 DW 11
N2 DW 2 
EVEN DB "Number is EVEN $"
ODD DB "Number is ODD $"


.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
     
     MOV AX,N1
    
     IDIV N2
     MOV AX,N1 
      CMP DX,0H 
     JE N1EVEN
     JNE N1ODD
     
     N1EVEN:
     
     MOV AX,N1
    
      MOV AH,2H
      
      MOV AH,9H
      LEA DX,EVEN
      INT 21H
      JMP EXIT
      
     
     
     N1ODD:
     
     MOV AX,N1
    
      MOV AH,2H
      
      MOV AH,9H
      LEA DX,ODD
      INT 21H
      
      
     JMP EXIT
     
     
    
     EXIT:
     MOV AH,4CH
     INT 21H
    
    
    
    
    
    MOV AH,4CH
    INT 21 
    
    MAIN ENDP
END MAIN




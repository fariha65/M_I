.MODEL SAMLL
.STACK 100H
.DATA
A DB 10 ,13,'STAR RELATED PROBEM :$'

 .CODE
 MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
     
     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CX,10
    
    LEV:
    
    MOV DL,'*'
    MOV AH,2
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
   
    
   
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    LOOP LEV
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN
     
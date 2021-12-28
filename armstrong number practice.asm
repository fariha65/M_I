.MODEL SMALL
.STACK 100H
.DATA
 M DB 10,13,'ENTER A NUMBER OF DISIT :$' 
 MSGIN DB 10,13,'ENTER A NUMBER:$' 
  
 N DW ? 
 A DB ?
 
 TEMP DW ? 
  
.CODE
 MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX    
    
    
    MOV AH ,9H
    LEA DX,M
    INT 21H 
     
    ;INPUT DIGIT N=?
    
     
   MOV N,0
   MOV BL,10
   INPUT:
   MOV AH,1
   INT 21H
   CMP AL,13
   JE NEXT
   SUB AL,30H
   MOV AH,0
   MOV CX,AX
   MOV AX,N
   MUL BL
   ADD AX,CX
   MOV N,AX
   JMP INPUT
   
   NEXT: 
   LEA DX,MSGIN
   MOV AH,9
   INT 21H
   
   ;OUTPUT CODE
   
   MOV AX,N
   ;DISPLAY
   
   MOV DX,0
   MOV BX,10
   MOV CX,0
   
   L1:
   DIV BX
   PUSH DX
   MOV DX,0
   MOV AH,0
   INC CX
   CMP AX,0
   JNE L1
   MOV AH,2
   L2:
   POP DX
   ADD DX,48
   INT 21H
   LOOP L2
   
   EXIT:
   MOV AH,4CH
   INT 21H
   MAIN ENDP
 END MAIN
    
   ; FOR1: ;INPUT A ,N ER MAM SHOMAN  LOOP GHURBE
     
     
     
    ; MOV AH,1H
    ; SUB AL,48
    ; INT 21H
     
   ;  MOV TEMP,AX
     
  ; LOOP FOR1 
   
  
     


     
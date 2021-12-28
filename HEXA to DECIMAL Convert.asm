.MODEL SMALL
.STACK 200H
.DATA
MSG1 DB 'Enter a hex digit character(0-9 OR A-F) :$' 
OUTPUT DB 10,13,'In Decimal is :$'
ASK_USER DB 10,13,'DO You Want Another Input?  : $'
TRY_MSG  DB 10,13,'TRY AGAIN .$'

.CODE
   MAIN PROC
     MOV AX,@DATA
     MOV DS,AX 
     
     TOP:
     LEA DX,MSG1
     MOV AH,9
     INT 21H
     
     MOV AH,1
     INT 21H
     MOV BL,AL 
      
     
     CMP BL,30H
     JL TRY 
     
     CMP BL,46H
     JG TRY
     
     CMP BL,39H
     JLE DIGIT
     
     
     LEA DX,OUTPUT
     MOV AH,9
     INT 21H
     
     SUB BL,11H
     
     MOV AH,2
     MOV DL,31H
     INT 21H
     MOV DL,BL
     INT 21H
     
     
     
     AGAIN:
     LEA DX,ASK_USER
     MOV AH,9
     INT 21H
     
     MOV AH,1
     INT 21H
     
     MOV BH,AL
     
     MOV AH,2
     MOV DL,0H 
     INT 21H
     MOV DL,0DH
     INT 21H
     
     
     CMP BH,'Y'
     JE TOP
     
     CMP BH,'y'
     JE TOP 
     
     JMP EXIT
     
      
      
     
     DIGIT: 
     LEA DX,OUTPUT
     MOV AH,9
     INT 21H
     
     MOV AH,2
     MOV DL,BL
     INT 21H
     
     JMP AGAIN
      
     
     
     
     TRY:
     LEA DX,TRY_MSG
     MOV AH,9
     INT 21H
     
    
     
     MOV AH,2
     MOV DL,0H 
     INT 21H
     MOV DL,0DH
     INT 21H
     
      
     JMP TOP 
     
     
     
      
    EXIT:  
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP
END MAIN
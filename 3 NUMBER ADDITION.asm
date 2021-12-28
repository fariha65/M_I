.MODEL SMALL
.STACK 100H
.DATA
MSGIN DB "Enter three numbers: $"
MSGOUT DB 10,13,"Addition is: $"
MSG DB ?

.CODE

MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,MSGIN
    MOV AH, 9H
    INT 21H
    

   MOV AH,1
   INT 21H
   MOV BL,AL
   
   MOV AH,1
   INT 21H
   MOV BH,AL
   
   MOV AH,1
   INT 21H
   MOV CL,AL
   
   ADD BL,BH
   SUB BL,48
   MOV CH,BL
   
   MOV CH,BL
   ADD CH,CL
   SUB CH,48
   
   
   MOV MSG,CH
   
   
   
    MOV AH, 9H 
    LEA DX,MSGOUT
    INT 21H
    
    
   MOV AH,2
   MOV DL,MSG
   INT 21H
   
   EXIT:
   MOV AH,4CH
   INT 21H
   MAIN ENDP
END MAIN
    
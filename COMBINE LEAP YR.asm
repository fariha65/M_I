.MODEL SMALL
.STACK 100H
.DATA
A DW 'Enter a year:$'


MSG1 DW 10,13,'The year is leap year:$'
MSG2 DW 10,13,'The year is not leap year:$'
.CODE
MAIN PROC
    
     MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A 
    
    INT 21H
    
   mov cx, 04h

   inp:    mov ah, 01h
        int 21h          

        sub al, 30h    
        mov bl, al
        mov ax, dx
        mov dx, 10h
        mul dx     
        
        mov bh, 00h
        add ax, bx
        mov dx, ax
    loop inp  
    

          
            
mov ax, dx
mov dx, 0000h
mov bx, 64h
mul bx
mov bx, 100h
div bx 
mov cx, ax
mov dx, 0000h
            
mov bx, 400h
div bx
jz yes              

mov ax, cx
mov bx, 04h
mov dx, 0000h
div bx
jz yes

mov ax, cx   
mov dx, 0000h
mov bx, 100h
div bx
jnz yes
jz no

no: 
    MOV AH,9
    LEA DX,MSG2 
    
    INT 21H
    jmp exit

yes:
    MOV AH,9
    LEA DX,MSG1 
    
    INT 21H 
    
           
          
          EXIT:
          MOV AH,4CH
          INT 21H
          MAIN ENDP
END MAIN




.model small
.stack 100h

.data 
msgin db 10,13,'Enter a number:$'
msg1 db 10,13,'not prime$'
msg2 db 10,13,'prime$'
n db ?
i dw 2

.code
main proc
    mov ax,@data 
    mov ds,ax
     
     
     mov ah,9h
     lea dx,msgin
     int 21h
     
     
     mov ah,1h
     int 21h 
     sub ax,48
     mov n,al
     mov bx,i
 
    
     mov al,n
     
     l1:
     mov ah,0
     mov al,0
     mov dx,0
     mov al,n
     mov bx,i
     
     cmp bl,n
     jge print1
     
     t1: 
      
     
     div i 
     
     cmp dx,0
     jnz s1
     
     print:
     mov ah,9h
     lea dx,msg1
     int 21h
     jmp exit
     
     s1:
     inc i
     jmp l1
     
     
     print1:
      mov ah,9h
      lea dx,msg2
      int 21h
      jmp exit
      
      
      exit:
      mov ah,4ch
      int 21h
      main endp
end main
     
     

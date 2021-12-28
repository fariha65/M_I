;   *
;   **
;   ***
;   ****
;   *****


.model small
.stack 100h
.data
newline db 10,13,'$'
.code
main proc
    
   mov ax,@data
   mov ds,ax
   
   mov cx,5
   mov bx,1
   
   l1:
   push cx
   mov cx,bx
   push bx
   mov ah,2
   l2:
   mov dx,'*'
   int 21h
   loop l2
   
   pop bx
   
   mov ah,9
   lea dx,newline
   int 21h
   
   inc bx
   pop cx
   loop l1 
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
   


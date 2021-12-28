.model small
.stack 100h
.data
a db 1
newline db 10,13,'$'
.code

main proc
    mov ax,@data 
    mov ds,ax
    
    mov cx,5                                                                  ;         *                1
                                                                              ;        **               22
    mov bx,1                                                                  ;       ***              333
                                                                              ;      ****             4444  
                                                                              ;     *****            55555
    
   l1:
   push cx
   
   mov ah,2
   mov dl,32
   
   l2:
   int 21h
   loop l2
   
   mov cx,bx
   push bx
   mov bl,a
   add bl,48
   
   
   l3:
   mov dl,bl
   int 21h 
   inc bl
   loop l3
   
   sub bl,48
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
   
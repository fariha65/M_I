.model small
.stack data
.data
 r dw ?
 n db ?
 a db 1
 newline dw 10,13,' $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
   mov bx,1
   mov cx,5
   
   
   l1:
   push cx
   mov ah,2
   mov dl,32
   
   l2:
   int 21h
   loop l2 
   
   
   mov cx,bx
  
    add bl,48   
  
   push bx
   
  l3: 
    
      mov dl,bl
      
      int 21h
      
       inc bl
      
      loop l3 
    pop bx
   
    push bx
     sub bl,48                    
    mov cx,bx
   
    dec cx
    add bl,48
       
       
       
       
    
    l4:
    
    cmp cx,0
    jz next
    
    cmp cx,2
    je a1
    cmp cx,3
    jge a2 
    jmp s1
    
    a1:
    inc bl
    jmp s1
    
    a2: 
    mov al,2
    add bl,al
    jmp s1
    
    
   s1:
    mov dl,bl
    int 21h
    dec cx
    
    cmp cx,0
    jg n1
    jmp l4
    
    n1:
    
    dec bl
    
 
    jmp l4
      
     
     
     
     
      
      next:
      pop bx
     
     sub bl,48
      mov ah,2
      mov dl,10
      int 21h
      mov dl,13
      int 21h
      inc bx
      
      pop cx
      loop l1
  
  

 
 exit:
 mov ah,4ch
 int 21h
 main endp
end main
        
       
       
       

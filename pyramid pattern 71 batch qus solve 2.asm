.model small
.stack data
.data

 n db 0

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
   cmp cx,0
   jz l4
   
   t:
   add bl,n
   ;mov bl,al
   inc n
   jmp l4
   
    l4:
 
    cmp cx,0
    jz next
    
   
   
    
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
        
       
       
       

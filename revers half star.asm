.model small
.stack data
.data
star db ?
blank db ?
a db 49 
r db ?
t db ?
 newline dw 10,13,' $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
  
   mov cx,5
   mov bh,5
   mov bl,0
   mov star,bh
   mov blank,bl
   
   
   l1:
  cmp blank,0
  je l2
  mov ah,2
  mov dl,32
  int 21h
  dec blank
  jmp l1
   
  l2:  
    mov ah,2
    mov dl,'*'
    int 21h
    dec star
    cmp star,0
    jne l2
                        
     mov ah,2         
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
    ; dec bh
     dec bh
     inc bl
     mov star,bh
  
     mov blank,bl
     loop l1

 
 exit:
 mov ah,4ch
 int 21h
 main endp
end main
        
       
       
       




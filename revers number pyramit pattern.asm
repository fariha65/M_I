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
  mov r,cl
  mov t,bl
  mov cl,star
  mov bl,a 
  mov ah,2
  s1:
  mov dl,bl
  int 21h
  inc bl
  loop s1
  mov cl,r
  mov bl,t 
  
 mov r,cl
 mov t,bl
 mov cl,star
 dec cl
 mov bl,bh
 dec bl
 cmp bl,0
 jz p1
 add bl,48
 mov ah,2
 cmp cl,0
 jz d1
 d1:

 mov dl,bl
 int 21h
 dec bl
 
loop d1  
  
  
 p1: 
 mov cl,r
 mov bl,t 
                        
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
        
       
       
       



;       *
;      ***
;     *****
;    *******
;   *********


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
    
    L1:
   
    push cx
  
    mov ah,2 
    mov dl,32
    
    l2:
    int 21h
    loop l2 
    
    mov cx,bx
    mov dl,'*'
   
    
    l3:
    
      int 21h 
     loop l3
     
     mov ah,9
     lea dx,newline
     int 21h
     
     
      
      inc bx
      inc bx
     
     pop cx
     
    
     
   loop l1 
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
       
       
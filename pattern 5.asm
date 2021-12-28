.model small
.stack 100h
.data
newline dw 10,13,'$'
;a db 49
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    mov bx,5
    
    l1:
   
    push cx
    mov cx,bx 
    push bx
    add bl,48
    ; mov dl,bl
   ; mov bl,a
    mov ah,2
    ; mov dl,'*'
    l2: 
    ; mov dl,bl
     mov dl,bl
    int 21h
    inc bl
    
    loop l2
    
    pop bx 
    mov ah,2 
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    dec bx
    pop cx
    
    loop l1
   exit: 
    mov ah,4ch
    int 21h
main endp
end main
    
    
    
    
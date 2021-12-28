; 1
; 22
; 333
; 4444
; 55555
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
     push bx
    mov cx,bx
   
    
    add bl,48
   
    mov ah,2
    l2: 
    mov dl,bl
    int 21h
    
    loop l2
    
    sub bl,48
    pop bx
    mov ah,9h
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
    


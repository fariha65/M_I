.model small
.stack 100h
.data
sum  db 0
i  db 1
.code
main proc
     mov ax,@data
     mov ds,ax
     
     mov bh,0
     mov bl,1
     mov cl,3
     
l1:
    cmp i,cl
    jg print
    
    mov bl,i
    mov al,sum
    add al,bl
    mov sum,al
    inc i
    jmp l1
    
    print:
    mov ah,2 
    add sum,48
    mov dl,sum
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h 
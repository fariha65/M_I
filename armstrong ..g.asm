printmsg macro msg
mov ah,09h
lea dx,msg
int 21h
endm

printnum macro reg
mov dl,reg
add dl,30h
mov ah,02h
int 21h
endm



data segment
n dw ?
p dw 00
rem dw ?
z dw ?

cr db 10,13 ,'$'
msg1 db "Enter a number(Ex:0123)$"
msg2 db 0ah,0dh,"Armstrong$"
msg3 db 0ah,0dh,"Not Armstrong$"
msg4 db 10,13,'$'
data ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax


printmsg msg1

mov ah,01h
int 21h
mov ah,00
sub al,30h
mov dx,1000
mul dx
mov n,ax
mov ah,01h
int 21h
mov ah,00
sub al,30h
mov dh,100
mul dh
add ax,n
mov n,ax
mov ah,01h
int 21h
sub al,30h
mov ah,00
mov dh,10
mul dh
add ax,n
mov n,ax
mov ah,01
int 21h
sub al,30h
mov ah,00
add ax,n

mov n,ax
mov z,ax
mov cl,04

l2:
mov ax,n
mov dh,10
div dh
mov rem,ax
mov al,ah
mov ch,ah
mov ah,00
mul ch
mul ch
add ax,p
mov p,ax
mov ax,rem
mov n,ax
dec cl
cmp cl,00
jne l2


mov dx,p
cmp z,dx
je l3
l4:
printmsg msg3
jmp skip
l3:
printmsg msg2








skip:mov ah,04h
int 21h
code ends
end start
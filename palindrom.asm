.model small
.stack 100h
.data 

msgin dw 10,13,'Input a number and press Enter at the end of the input:$' 

msg1 dw 10,13,'this number is plaindrom  number.$'
msg2 dw 10,13,'this number is not palindrom number.$'
n dw 0
sum dw 0
num dw ? 
temp dw ?
r dw ?




.code
main proc
    mov ax,@data
     mov ds,ax
     
     
     
     mov ah,9h
     lea dx,msgin
     int 21h
     
     
     
        mov bx,10 
     
    input:
               
    mov ah,1h
    int 21h
            
    cmp al,13
    je next
    
    sub al,48
    
    mov ah,0 
    
    add ax,n 
   
    mul bx
    mov n,ax
    jmp input
    
    next:
    mov ax,n
    div bx
    mov n,ax
    
    mov ax,n
    mov num,ax  
      
    
    
   
    
    mov ax,num
    ;mov cx,3
    
    while: 
    
    mov temp,ax
    mov bx,10
    mov ax, temp
    mov dx,0
    div bx
    mov temp,ax
    mov r,dx
    mov ax,sum
    mov bx,10
    mul bx
    add ax,r
    mov sum,ax
    mov ax,temp
    cmp ax,0
    je t1
    jmp while
      
   t1:
  mov ax,sum    
  cmp num,ax
  ;je t2
  jne t3
  
  t2:
  lea dx,msg1
  mov ah,9h
  int 21h
  jmp exit
  
  
  
  t3:  
  lea dx,msg2
  mov ah,9h
  int 21h
  jmp exit
  
  
     
      
      
      
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main




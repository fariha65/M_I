.model small
.stack 100h
.data 

msgin dw 10,13,'Input a number and press Enter at the end of the input:$' 

msg1 dw 10,13,'this number is armstrong number.$'
msg2 dw 10,13,'this number is not armstrong number.$'
n dw 0
sum dw 0
num dw ?
temp dw ?
r dw ?




.code
main proc
    mov ax,@data
     mov ds,ax
     
     ;display user input msg
     
     mov ah,9h
     lea dx,msgin        
     int 21h
     
     
     
     mov bx,10      ;I put 10 in the bx register....bx=10
     
    ;input number  
     
    input:;declair a level
               
    mov ah,1h
    int 21h      ;call ...input 1
            
    cmp al,13    ;'13 mean enter'My newly received input is stored in the AL register. After that if the user presses Enter then AL and 13 will go to NEXT if the comparison is true. Don't go otherwise.
    je next      ;Jump Equal (je)
    
    sub al,48    ;Convert ascii value to decimal
    
    mov ah,0     ; If there is any garbage value in the ah register, I set it to 0...ah=0,al=input value =1
    
    add ax,n     ; ax=0001,n inicial value 0 so ax=1+0=1
   
    mul bx       ;ax=1*10=10
    mov n,ax     ;n=0,ax=10...put ax=10 in n variable..so n=10
    jmp input    ;;jump input level
    ;Will take the whole input in the same way ......I think the input is 253. Now let's go to the next steps.After giving input 253, It will show 2530 in a program
    
    
    ;Let's divide by 10 to get the input of the program correctly
    next:
    mov ax,n  ;n=2530 put in the ax register ax=2530
    div bx    ;ax=ax/10=2530/10=253
    mov n,ax  ;put 253 in n variable
    
    mov ax,n   ;put n=253 in ax register
    mov num,ax  ;put ax=253 in num
      
    
    
   
    
    mov ax,num   ;put num=253 in ax register
    ;mov cx,3
    
    
    ;using while loop
    while: 
    
    mov temp,ax;ax=253 move temp=253
    mov bx,10   ;bx=10
    mov ax, temp  ;ax=253
    mov dx,0      ;dx=0
    div bx        ;ax=ax(253)/bx(10)=AX(quotient(25)) ,DX(REMAINDER(3))
    mov temp,ax   ;temp=25
    mov r,dx      ;r=3
    mov ax,r      ;ax=3
    mul r         ;ax=ax*r=3*3=9
    mul r         ;ax=9*3=27
    
    add sum,ax    ;put ax=27 in sum variable
    mov ax,temp   ;put temp=25 in ax register
    cmp ax,0      ;compair ax register is 0?
    je t1         ;if equal jump t1
    jmp while     ;otherwise jump while level
   
   
   ;check is number is armstrong?   
   t1:
  mov ax,sum      ;put sum=153 in ax register
  cmp num,ax      ;compair ax=153 equal num=153 ?
  ;je t2
  jne t3          ;if no equal jump t3 or if equal then jump t2 level
  
  t2:
  lea dx,msg1
  mov ah,9h       ;print armstrong message
  int 21h
  jmp exit
  
  
  
  t3:  
  lea dx,msg2
  mov ah,9h        ;print not armstrong message
  int 21h
  jmp exit
  
  
     
      
      
      
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
.model small
.stack 100
.data
 
msgin db 10,13,'Enter a charecterI(A-Z or a-z) :$'
msg1 db 10,13,'it is vowel.$'
msg2 db 10,13,'it is consonant.$' 
 
n db ? 
 
 
.code
 main proc
          mov ax,@data
          mov ds,ax
          
          mov ah,9
          lea dx,msgin
          int 21h
          
          
          
          mov ah, 1
          int 21h
          mov n,al
          
          
          
          if:
          
          
          cmp n,'a'
          je print1
          
          b:
          cmp n,'A'
          je print1
          
          c:
          cmp n,'e'
          je print1
          
          d:
          cmp n,'E'
          je print1
          e:
          cmp n,'i'
          je print1
          f:
          cmp n,'I'
          je print1
          g:
          cmp n,'o'
          je print1
          h:
          cmp n,'O'
          je print1
          i:
          cmp n,'u'
          je print1
          j:
          cmp n,'U'
          je print1
         
          
          
            mov ah,9
            lea dx,msg2
            int 21h
           jmp exit
            
            
         print1:
         mov ah,9
         lea dx,msg1
         int 21h
         
        
         
         exit: 
              mov ah,4ch
              int 21h
              main endp
 end main
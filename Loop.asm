.model small 
.stack 100H
.DATA 
MSG1 DB 'Loop program: $ '

.code 
main proc     ;19111123
    
    mov ax,@DATA
    mov ds,ax
    
    mov ah,9
    lea dx,MSG1
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
                         
   mov cx,26
   mov ah,2
   mov dl,'A'
   
   LOOP_LABEL_1:
   
   int 21h
   inc dl
   loop LOOP_LABEL_1
      
      
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    



.model small 
.stack 100H
.DATA 
MSG1 DB '1>Enter command <jump> $'
MSG2 DB '2>in assembly language $'
MSG3 DB '3>Programming $'
.code 
main proc 
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
                         
    label_1:
    mov ah,9
    lea dx,MSG2
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    Label_2:
    mov ah,9
    lea dx,MSG3
    int 21h
    JMP exit 
           
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    

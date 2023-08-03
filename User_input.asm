
.MODEL SMALL
.STACK 100h
.code
;19111123
main proc 
    
    mov ah,1
    int 21h
    
    mov bl,al
    int 21h
    
    mov cl,al
      
    mov ah,2
    mov dl,bl
    int 21h
    
    mov dl,cl
    int 21h 
    
    
    MOV AH, 4Ch 
    INT 21h 
  MAIN ENDP
END MAIN

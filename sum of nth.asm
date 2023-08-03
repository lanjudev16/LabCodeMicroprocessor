
.MODEL SMALL
.STACK 100h
.DATA    
msg  db 'Enter any number $'       
msg1 db 'The sum of the number is :$'  

.CODE 
MAIN PROC     
        
    mov Ax,@data  
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    
            
    mov bl,al 
    mov al,0 
    
    display:
    cmp bl,48
    Jg L1
    jmp L2
      
    
    L1:
    add al,bl 
    sub al,48  
    mov cl,al
    dec bl
    jmp display
    
    
    L2:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,2
    mov dl,cl
    add dl,48
    int 21h         
    
    mov ah,4ch
    int 21h
    
               
              
    MAIN ENDP
END MAIN

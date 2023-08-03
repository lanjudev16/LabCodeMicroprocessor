
.MODEL SMALL
.STACK 100h
.data
a db 55
b db ?
.code
main proc
    mov ax,@data
    mov ds,ax
                   ;19111123
   mov ah,1
   int 21h         ;input value b
   mov b,al
          
   mov ah,2
   mov dl,10
   int 21h          ; create new line
   mov dl,13
   int 21h
                
   mov ah,2         ;plot a value 
   mov dl,a
   int 21h
               
   mov ah,2
   mov dl,10
   int 21h          ; create new line 
   mov dl,13
   int 21h   
               
   mov ah,2
   mov dl,b         ; plot b value 
   int 21h    
   
MOV AH,4Ch 
INT 21h 
MAIN ENDP
END MAIN



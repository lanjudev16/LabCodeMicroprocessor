.model small
.stack 100h
.data

msg db 'Enter Any number(0-9): $'
msg1 db 'Fibunacci series is:  $'
ms db ' $'
.code
main proc
mov ax,@data
mov ds,ax

mov ah,9
lea dx,msg
int 21h

mov ah,1
int 21h 
mov bl,al
sub bl,48

mov ah,2
mov dl,10
int 21h 
mov dl,13
int 21h

mov ah,9
lea dx,msg1
int 21h

mov ah,2
mov dl,48
int 21h 

mov dl,32
int 21h

mov dl,49
int 21h  

mov al,0
mov cl,1

disp:
cmp bl,2
jg L1
jmp L2


L1:

add al,cl       ;add two value

mov ah,2
mov dl,al        ; print sum of the two values
add dl,48 
int 21h
 
 
mov dl,al
mov al,cl         ; swap the value
mov cl,dl
 
sub cl,48

dec bl
jmp disp


L2:

mov ah,4ch
int 21h

main endp
end main
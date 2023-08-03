
.model small
.stack 100h
.data

msg db 'Enter the number(0-9): $'
msb1 db 'Your number is odd $'
msb2 db 'Your number is Even $'
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

mov ah,2
mov dl,10
int 21h 
mov dl,13
int 21h

and bl,1

cmp bl,0
jnz odd

jmp Even


odd:
mov ah,9
lea dx,msb1
int 21h 

mov ah,4ch
int 21h

Even:
mov ah,9
lea dx,msb2
int 21h 

mov ah,4ch
int 21h

main endp
end main
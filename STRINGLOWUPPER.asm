
.MODEL SMALL
.STACK 100h
.DATA
  MSG DB 'ENTER A LETTER: $'
  MSG1 DB 'RESULT: $'
  
.CODE
  MAIN PROC
    MOV AX, @DATA  ;19111123
    MOV DS, AX
    
  
    MOV AH, 09h 
    LEA DX, MSG 
    INT 21H 
    
    
    MOV AH,1
    INT 21H  
    
    MOV BL,AL 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH, 09h 
    LEA DX, MSG1 
    INT 21H
    
    CMP BL,91
    JL L1
    JMP L2
    
    
    L1:  
    MOV AH,2
    MOV DL,BL
    ADD DL,32
    INT 21H
    
    mov ah,4Ch
    int 21h 
    
     L2:
     
     MOV AH,2
     MOV DL,BL
     SUB DL,32
     INT 21H
    
    mov ah,4Ch
    int 21h
                                                                                                                                                                                                 
  MAIN ENDP
END MAIN

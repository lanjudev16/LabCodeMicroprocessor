
.MODEL SMALL
.STACK 100h 
.DATA
MSG DB 'ENTER THE NUMBER: $'
MSG1 DB '+ $'
MSG2 DB '- $'
MSG3 DB '= $'
MSG4 DB 'RESULT: $'
.code

main proc 
    MOV AX,@DATA
    MOV DS,AX
    
MOV AH,9
LEA DX,MSG
INT 21H
    
    MOV ah,1
       
    FOR1:
    INT 21h
    
    CMP al,0DH
    JE end_FOR1
 
    MOV BL,AL  
      
    CMP AL,45
    JE L1 
    JMP L2
    L1: 
    MOV CL,AL
    
    L2:
    
     jmp FOR1
      
     end_FOR1: 
     
     MOV AH,2
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     MOV AH,9
     LEA DX,MSG4
     INT 21H
     
     CMP CL,02DH
     JE LEBEL1 
     JMP LEBEL2
     
     LEBEL1:
         MOV AH,9
         LEA DX,MSG2
         INT 21H 
    
    MOV AH, 4Ch 
    INT 21h 
    
    LEBEL2: 
     
    CMP BL,48
    JE F1
    JMP F2
    
    F1:
    MOV AH,9
    LEA DX,MSG3
    INT 21H 
    
        MOV AH, 4Ch 
       INT 21h
    F2:
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
  MOV AH, 4Ch 
  INT 21h
  MAIN ENDP
END MAIN

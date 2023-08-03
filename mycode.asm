.MODEL SMALL
.STACK 100H
.DATA 
MSG DB 'ENTER THE NUMBER:$'
MSG1 DB 'RESULT=$'
 I DB 1
 ADDS DB ?
 
 .CODE
 
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG      ;SHOW ENTER ANY NUMBER
    INT 21H
    
    MOV AH,1         ; INPUT VALUE
    INT 21H
    
    MOV CL,AL        ; TOR CL INPUT 
    
    
    ;MOV CL,3
    MOV BX,0 
   
    
    SUM:
    CMP CL,48
    JG L1          ;NEW ADDED BY ME 
    JMP L2
    
    L1: 
    
    ADD BH,I        ;TOR CODE
    INC I
    LOOP SUM 
     
    L2:
    
    MOV AH,2
    MOV DL,0AH       ;NEW  LINE 
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9         ; RESULT MESSAGE
    LEA DX,MSG1
    INT 21H 
     
     
    MOV ADDS,BH 
    MOV AH,2            ;RESULT 
    MOV DL,BH
    ADD DL,48
    INT 21H
    
    EXIT:
    MOV AX,4CH
    INT 21H
    MAIN ENDP
 
 END MAIN
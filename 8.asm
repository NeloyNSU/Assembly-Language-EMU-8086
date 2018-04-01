
;Check whether a number is prime or not

org 100h

VAlUE DB  ?
MSG1 DB  'ENTER VALUE: $'
MSG2 DB  'NOT PRIME $'
MSG3 DB  'PRIME $'


MOV DX, OFFSET MSG1
MOV AH,09H
INT 21H 



MOV AH,01H
INT 21H
SUB AL,30H
MOV VALUE,AL


MOV AH,00

MOV CL,2
DIV CL
MOV CL,AL

START:
    MOV AH,00
    MOV AL,VALUE
    DIV CL
    CMP AH,00
    JZ NOTPRIME
    DEC CL
    CMP CL,1
    JNE START
    JMP PRIME

NOTPRIME:    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV DX, OFFSET MSG2
    MOV AH,09H 
    INT 21H
    JMP EXIT

PRIME:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV DX, OFFSET MSG3
    MOV AH,09H 
    INT 21H
    JMP EXIT

EXIT:
    MOV AH,4CH
    INT 21H

ret





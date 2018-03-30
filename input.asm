
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   

mov ah,1 ;input
int 21h

mov bl,al    ;input
int 21h

mov bh,al          ;input
int 21h


mov ah,2
mov dl,0dh  ;newline
int 21h
mov dl,0ah
int 21h

mov dl,bl
int 21h 
mov dl,bh
int 21h                     ;output

ret



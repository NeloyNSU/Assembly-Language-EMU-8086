
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
mov bx, offset arr0

mov [bx],5 
;inc bx    

mov [bx+1],10

mov [bx+9], 9


ret

;x db ?
;y db 10        

 
arr0 db 10 dup(?)

;arr1 db 50 dup(5,10,12)

ret





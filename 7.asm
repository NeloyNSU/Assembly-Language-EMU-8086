
;  Input two numbers(sum must be equal or less than 9) from the user and show their summation

org 100h 

mov bx, offset str
mov cx,0

mov dx, offset msg1
mov AH,9             ;ENTER 1st value:
int 21H              

value1:
mov ah,1
int 21h  
cmp al, 0dh
je next
mov num1,al
inc bx
inc cx
jmp value1

next:
dec bx
mov si,offset str
shr cx,1
                               
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

mov dx,offset msg2
mov ah,9               ;ENTER 2nd value:
int 21h


value2:
mov ah,1
int 21h  
cmp al, 0dh
je next2
mov num2,al
inc bx
inc cx
jmp value2

next2:
dec bx
mov bp,offset str
shr cx,1


mov ah,2
mov dl,0dh
int 21h             ;newline
mov dl,0ah
int 21h

mov dx, offset msg3
mov ah,9
int 21h   


mov bx,0
mov ax,0

mov bl,num1
mov al,num2


add bl,al
sub bl,48

 
mov ah,2               ;result
MOV DL,BL
INT 21H

ret

msg1 db 'Enter 1st vale: $'
msg2 db 'Enter 2nd Value: $'
msg3 db 'Sum = $'   
num1 db 16
num2 db 16
str db 100 dup(?)

; clear screen
clearscreen:
    mov ax, 0x07
    mov bh, 0x07
    mov cx, 0x00
    mov dx, 0x184f
    int 0x10

setColors:
    mov ah, 0x06    ;Function 0x06 = Scroll up function
    xor cx, cx      ;From upper left corner
    mov bx, 0xFFE0   ;Set colors (white on blue)
    mov dx, 0x184F  ;To lower right corner
    int 0x10         ;Call the bios video interrupt


[org 0x7c00]
mov ah, 0x0e
mov bx, stringlabal

bosintro:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp bosintro

end:
    
jmp $

stringlabal:
    db "Basic Operating System - bOS [v0.1]", 0

; Boot Loader 512 bytes-long
; ** Added boot signature bits 0x55 0xaa

times 510-($-$$) db 0
db 0x55, 0xaa
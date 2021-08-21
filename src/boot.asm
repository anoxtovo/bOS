clearscreen:
    mov ax, 0x07
    mov bh, 0x07
    mov cx, 0x00
    mov dx, 0x184f
    int 0x10

bosintro:
    [org 0x7c00]
    mov ah, 0x0e
    mov al, [stringlabal]
    int 0x10

jmp $


stringlabal:
    db "Basic Operating System - bOS [ v0.1 ]", 0

; Boot Loader 512 bytes-long
; ** Added boot signature bits 0x55 0xaa

times 510-($-$$) db 0
db 0x55, 0xaa
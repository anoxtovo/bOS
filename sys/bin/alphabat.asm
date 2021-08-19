mov ah, 0x0e
mov al, 65
int 0x80

loop:
    inc al, 1
    int 0x80
    jmp loop
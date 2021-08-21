; Printing 'Hello' after the booting

; Print H
mov ah, 0x0e
mov al, 'H'
int 0x10

; Print E
mov ah, 0x0e
mov al, 'E'
int 0x10

; Print L
mov ah, 0x0e
mov al, 'L'
int 0x10

; Print L
mov ah, 0x0e
mov al, 'L'
int 0x10

; Print O
mov ah, 0x0e
mov al, 'O'
int 0x10

; BIOS
jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
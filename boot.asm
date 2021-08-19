; Printing 'Hello' after the booting

; Print H
mov ah, 0x0e
mov al, 'H'
int 0x80

; Print E
mov ah, 0x0e
mov al, 'E'

; Print L
mov ah, 0x0e
mov al, 'L'

; Print L
mov ah, 0x0e
mov al, 'L'

; Print O
mov ah, 0x0e
mov al, 'O'

; BIOS
jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
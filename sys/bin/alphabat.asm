;   author      : Thumula Basura Suraweera
;   version     : v.1
;   codename    : Basic Operating System (bOS)

; BIOS intruption
int 0x10

loop:
        inc al              ; increment for al value
        cmp al, 'Z' + 1     ; compare if al == Z + 1
        je exit             ; if condition true exit
        int 0x10
        jmp loop            ; jump to the loop

exit:
    jmp $

; BIOS sector with 510 null bytes
; set last byte value to 0x55, 0xaa
jmp $
times 510-($-$$) db 0
db 0x55, 0xaa
org     0x7c00

BaseStack equ 0x7c00

section .code 
; initialize all segment registers
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    mov sp, BaseStack
    
; clean screen
    mov ax, 0600h
    mov bx, 0700h
    mov cx, 0
    mov dx, 0184h
    int 10h


; set cursor position
    mov ah, 02h
    mov bh, 0
    mov dx, 0

    int 10h

; display message
    mov ax, StartBootMessage
    mov bp, ax
    mov cx, 16
    mov ax, 1301h
    mov bx, 0x2
    int 10h 

    jmp $

StartBootMessage:   db "Start booting..."

; fill with zeros

times 510 - ($ - $$) db 0

db 0x55, 0xaa


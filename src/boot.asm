org     0x7c00

BaseStack equ 0x7c00

section .code
; initialize all segment registers
    mov ax, 0
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, BaseStack
    
; clean screen

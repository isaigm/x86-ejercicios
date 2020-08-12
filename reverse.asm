section .data
string db 'hola mundo'
len equ $ - string
section .text
global _start
    _start:
    mov rsi, 0
    mov rcx, len
    reverse:
        mov dl, byte[string + rsi]
        push rdx
        inc rsi
        loop reverse
    mov rcx, len
    mov rsi, 0
    end:
        pop rdx
        mov byte[string + rsi], dl
        inc rsi
        loop end      
    mov rdx, len
    mov rcx, string
    mov rbx, 1
    mov rax, 4
    int 0x80
    mov rax, 0
    int 0x80
    mov rax, 1
    mov rbx, 0
    int 0x80
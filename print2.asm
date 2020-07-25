SECTION .data
fmt  :    db "%d", 10, 0
idx : dq 0
        SECTION .text
        global main
        extern printf
main:
        mov r12, 0
        l:
        mov rdi, fmt
        mov rsi, r12
        mov al, 0
        call printf
        inc     r12
        cmp     r12, 10
        jl l
        
        mov rbx, 0      ; normal-exit code
        mov rax, 1      ; process-termination service
        int 0x80        ; linux kernel service

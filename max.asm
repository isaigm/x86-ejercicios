section .data
arr dq 120, 30, 400, 20, 10, 0, 500, 450, 200

section .text
global _start
    _start:
        mov rax, qword[arr]
        mov rdx, 1
        max:
            mov rcx, qword[arr + 8 * rdx]
            cmp rax, rcx
            jl is_less_than
            jmp continue
            is_less_than:
                mov rax, rcx
            continue:
            inc rdx
            cmp rdx, 9
            jl max
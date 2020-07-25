section .data
n dq 309
section .text
global _start
_start:
        collatz:
       	 	mov rax, qword[n]
        	and rax, 1
        	cmp rax, 1
        	je is_odd
        	mov rdx, 0
        	mov rax, qword[n]
        	push rcx
        	mov rcx, 2
        	div rcx
        	mov qword[n], rax
        	pop rcx
        	jmp continue
        is_odd:
                mov rax, qword[n]
                imul rax, 3
                inc rax
                mov qword[n], rax
        continue:
        	inc rcx
        	cmp qword[n], 1
        	jg collatz

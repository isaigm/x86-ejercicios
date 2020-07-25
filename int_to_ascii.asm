section .data
number dq 102419
digits dq 0

section .bss
ascii_rep resb 20

section .text
global _start
_start:
        divide:
        mov rdx, 0 ; rdx residuo
        mov rax, qword[number] ; rax dividendo
        mov rcx, 10 ; rcx divisor
        div rcx ; en rax se almacena rax / rcx
        inc qword[digits]
        push rdx ; guardar en la pila el digito extraido
        mov qword[number], rax ; actualizar number
        cmp qword[number], 0 ; repetir mientras number sea mayor que 0
        jg divide
        mov rdi, 0
        mov rcx, 0
        ascii:
        pop rdx ; al hacer pop se obtiene el ultimo valor ingresado en la pila, que seria el primer digito a mostrar
        add dl, '0' ; dl es el byte menos significativo de rdx, se le suma '0' para convertirlo a ASCII
        mov byte[ascii_rep + rdi], dl ; rdi lo uso para ir apuntandando al arreglo ascii_rep es como hacer *(arr + i) = data en C
        inc rcx
        inc rdi 
        cmp rcx, qword[digits] ; se va haciendo pop para extraer los demas digitos
        jl ascii
        mov byte[ascii_rep + rdi], 0 ; y ya lo que queda es para imprimir ascii_rep en consola, que es un char * en terminos de C, llamando a write
        mov byte[ascii_rep + rdi + 1], 0xA
        add qword[digits], 2
        mov rdx, qword[digits]
        mov rcx, ascii_rep
        mov rbx, 1
        mov rax, 4
        int 0x80
        mov rax, 0
        int 0x80
        mov rax, 1
        mov rbx, 0
        int 0x80

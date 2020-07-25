; Mi implementación del comando 'cat' en lenguaje ensamblador

%define STDIN 0
%define STDOUT 1
%define STDERR 2

%define sys_exit 1
%define sys_read 3
%define sys_write 4
%define sys_open 5

%define O_RDONLY 0
%define bfsize 256         ; tamaño del buffer a utilizar

section .data

    fdarchivo dd 0x0       ; descriptor de archivo

section .bss

    buffer resb 256        ; reservo un buffer de 256 bytes

section .text

    global _start

_start:

    ; Obtener los parámetros
    pop EAX                ; argc
    cmp EAX,1              ; argc < 2 ?
    je salirerr            ; fin
    pop EAX                ; arg[0] - nombre del programa
    pop EBX                ; arg[1] - nombre de archivo

    ; ahora EBX contiene un puntero al string que contiene el nombre
    ; de archivo pasado como parámetro


    ; Abrir el archivo
    mov EAX,sys_open       ; abrir archivo
    ;mov EBX,archivo       ; descriptor de archivo a abrir
    mov ECX,O_RDONLY       ; modo de sólo lectura
    int 0x80               ; llamada al sistema

    cmp EAX,0              ; verifico si EAX < 0 (error)
    jl salirerr            ; hubo un error

    ; ahora EAX contiene el descriptor de archivo
    mov [fdarchivo],EAX    ; guardo el descriptor de archivo en memoria

leer:

    ; comienzo a leer el archivo, de a bfsize bytes por vez
    mov EAX, sys_read      ; leer archivo
    mov EBX, [fdarchivo]   ; descriptor de archivo a leer
    mov ECX, buffer        ; buffer de lectura
    mov EDX, bfsize        ; leer bfsize bytes
    int 0x80               ; llamada al sistema

    cmp EAX,0              ; verifico si EAX < 0 (error)
    jl salirerr            ; hubo un error

    ; ahora EAX contiene la cantidad de bytes leídos
    mov EDX,EAX            ; guardo la cantidad de bytes leídos en EDX

    ; imprimo por pantalla lo leído desde el archivo
    mov EAX,sys_write      ; escribir archivo
    mov EBX,STDOUT         ; descriptor de archivo a escribir
    mov ECX,buffer         ; puntero al buffer
    ;EDX ya contiene la cantidad de bytes a imprimir
    int 0x80               ; llamada al sistema

    ; verifico si hubo error
    cmp EAX,0              ; comparo para ver si EAX < 0
    jl salirerr            ; salgo con el error cargado en EBX

    ; ahora ya imprimí por pantalla lo leído del archivo
    cmp EDX,bfsize         ; comparo la cantidad de bytes leídos con bfsize
    je leer                ; leyo bfsize? seguir leyendo, sino fin

salirok:

    ; salir
    mov EAX,sys_exit      ; salir
    mov EBX,0             ; no hubo errores
    int 0x80              ; llamada al sistema

salirerr:

    ; salir
    mov EBX,EAX           ; cargo el error que haya en EAX
    mov EAX,sys_exit      ; salir
    int 0x80              ; llamada al sistema

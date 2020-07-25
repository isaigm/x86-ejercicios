#!/bin/bash

# Si no hay parámetros de entrada, imprimir la ayuda
if [ $# -lt 1 ]
then
	echo "Uso: $0 <archivo>.asm"
	exit 1
fi

# Eliminar extensión del nombre de archivo pasado como parámetro
FILE=$(echo $1 | cut -d '.' -f 1)

# Ensamblar
yasm -f elf32 -g stabs $1

# Si no hay error, linkear el archivo objeto
if [ $? -eq 0 ]
then
	ld -o $FILE -m elf_i386 $FILE.o
fi

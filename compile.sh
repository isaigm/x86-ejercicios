#!/bin/bash
if [ $# -lt 1 ]
then
    echo "Hay que compilar algo XD"
    exit 1
fi

file=$(echo $1 | cut -d '.' -f 1)

nasm -f elf64 $1 -o $file.o -g

if [ $? -eq 0 ]
then
        gcc -fno-pie -no-pie $file.o -o $file -g
fi

#!/bin/sh

nasm -f elf -o test.o test.asm
ld -m elf_i386 -o test.bin test.o

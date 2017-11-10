nasm -f elf -o myfirst.o myfirst.asm
ld -m elf_i386 -o myfirst.bin myfirst.o

gcc -o test.bin test.c
strip -s test.bin

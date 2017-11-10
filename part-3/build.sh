mkdosfs -C floppy.img 1440
nasm -f bin -o boot.bin boot.asm
dd conv=notrunc if=boot.bin of=floppy.img

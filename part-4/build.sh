nasm -f bin -o boot.bin boot.asm
mkdosfs -C floppy.img 1440
dd conv=notrunc if=boot.bin of=floppy.img
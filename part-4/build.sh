nasm -f bin -o boot.bin boot.asm
mkdosfs -C floppy.img 1440
dd conv=notrunc if=boot.bin of=floppy.img

nasm -f bin -o mykernel.bin mykernel.asm
mcopy -i floppy.img mykernel.bin ::/
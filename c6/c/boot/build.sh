nasm -I include/ -o mbr.bin mbr.S
dd if=./mbr.bin of=../../../bochs-2.6.2/hd60M.img bs=512 count=1  conv=notrunc
nasm -I include/ -o loader.bin loader.S
dd if=./loader.bin of=../../../bochs-2.6.2/hd60M.img bs=512 count=4 seek=2 conv=notrunc
nasm -f elf -o ../lib/kernel/print.o ../lib/kernel/print.S
gcc -I ../lib/kernel -c -o ../kernel/main.o ../kernel/main.c
ld -Ttext 0xc0001500 -e main -o kernel.../bin kernel/main.o ../lib/kenel/print.o
dd if=./kernel.bin of=./../../bochs-2.6.2/hd60M.img bs=512 count=200 seek=9 conv=notrunc
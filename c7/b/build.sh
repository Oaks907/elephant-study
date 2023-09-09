nasm -I ./boot/include/ -o ./build/mbr.bin ./boot/mbr.S
dd if=./build/mbr.bin of=../../bochs-2.6.2/hd60M.img bs=512 count=1  conv=notrunc
nasm -I ./boot/include/ -o ./build/loader.bin ./boot/loader.S
dd if=./build/loader.bin of=../../bochs-2.6.2/hd60M.img bs=512 count=3 seek=2 conv=notrunc

gcc -I lib/kernel/ -I lib/ -I kernel/ -m32 -c -fno-builtin -o build/main.o kernel/main.c
nasm -f elf -o build/print.o ../lib/kernel/print.S
nasm -f elf -o build/kernel.o kernel/kernel.S
gcc -I lib/kernel/ -I lib/ -I kernel/ -m32 -c -fno-builtin -o build/interrupt.o kernel/interrupt.c
gcc -I lib/kernel/ -I lib/ -I kernel/ -m32 -c -fno-builtin -o build/init.o kernel/init.c

ld -melf_i386 -Ttext 0xc0001500 -e main -o build/kernel.bin build/main.o build/init.o build/interrupt.o build/print.o build/kernel.o
dd if=./build/kernel.bin of=../../bochs-2.6.2/hd60M.img bs=512 count=200 seek=9 conv=notrunc

nasm -I include/ -o mbr.bin mbr.S
dd if=./mbr.bin of=../../../bochs-2.6.2/hd60M.img bs=512 count=1  conv=notrunc
nasm -I include/ -o loader.bin loader.S
dd if=./loader.bin of=../../../bochs-2.6.2/hd60M.img bs=512 count=1 seek=2 conv=notrunc

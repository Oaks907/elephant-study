### 执行步骤：
1、nasm -o mbr.bin mbr.S && dd if=./mbr.bin of=../../bochs-2.6.2/hd60M.img bs=512 count=1  conv=notrunc
2、bin/bochs -f bochsrc.disk
3、选择选项6，按下按键c

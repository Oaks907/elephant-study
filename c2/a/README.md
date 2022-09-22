### 执行步骤：
1、nasm -o mbr.bin mbr.S
2、dd if=/home/lihaifei/github/elephant-study/c2/a/boot/mbr.bin of=/home/lihaifei/github/elephant-study/bochs-2.6.2/hd60M.img bs=512 count=1 conv=notrunc
3、bin/bochs -f bochsrc.disk
3、选择选项6，按下按键c

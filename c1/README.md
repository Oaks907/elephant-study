1. bochs下载地址： https://bochs.sourceforge.io/
2. tar zxvf bochs-2.6.2.tar.gz
3. 编译
```c
./configure \
--prefix=/home/zbb/bochs \
--enable-debugger \
--enable-disasm \
--enable-iodebug \
--enable-x86-debugger \
--with-x \
--with-x11
```
4. make
5. make install
6. 编辑 bochsrc.disk注意修改其中的绝对路径
```shell
megs: 32

romimage:    file=/home/haifei/github/elephant-study/bochs-2.6.2/share/bochs/BIOS-bochs-latest
vgaromimage: file=/home/haifei/github/elephant-study/bochs-2.6.2/share/bochs/VGABIOS-lgpl-latest

boot: disk

log: bochs.out
mouse: enabled=0

keyboard_mapping: enabled=1, map=/home/haifei/github/elephant-study/bochs-2.6.2/share/bochs/keymaps/x11-pc-us.map

ata0: enabled=1, ioaddr1=0x1f0, ioaddr2=0x3f0, irq=14
ata0-master: type=disk, path="hd60M.img", mode=flat, cylinders=121, heads=16, spt=63

#gdbstub: enabled=1, port=1234, text_base=0, data_base=0, bss_base=0
```
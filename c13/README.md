�ο���[�á�����ϵͳ����ԭ��дһ������ϵͳ ��ʮ���� ��дӲ���������� ��һ�� �������̲��������������ݽṹ����ʼ��](https://www.bilibili.com/video/BV1Qj41197ut/?spm_id_from=333.999.0.0&vd_source=001f23892568695ec0527ab967b620a7)

### 1. ���� hd80M.img

![img.png](../img/img1.png)

### 2. ����Ӳ�������ļ� bochsrc.disk

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
ata0-slave: type=disk, path="hd80M.img", mode=flat, cylinders=162, heads=16, spt=63

#gdbstub: enabled=1, port=1234, text_base=0, data_base=0, bss_base=0

```

### 3. ������̳ɹ�

![img.png](../img/img2.png)

### 4. ���ô��̷���

```shell
[root@192 bochs-2.6.2]# fdisk hd80M.img 
��ӭʹ�� fdisk (util-linux 2.23.2)��

���Ľ�ͣ�����ڴ��У�ֱ��������������д����̡�
ʹ��д������ǰ����˼��

Device does not contain a recognized partition table
ʹ�ô��̱�ʶ�� 0xad64c481 �����µ� DOS ���̱�ǩ��

����(���� m ��ȡ����)��x

ר������(���� m ��ʾ����)��c
������ (1-1048576��Ĭ��Ϊ 10)��162

ר������(���� m ��ʾ����)��h
��ͷ�� (1-256��Ĭ��Ϊ 255)��16

ר������(���� m ��ʾ����)��r

����(���� m ��ȡ����)��n
Partition type:
   p   primary (0 primary, 0 extended, 4 free)
   e   extended
Select (default p): p
������ (1-4��Ĭ�� 1)��
��ʼ ���� (2048-163295��Ĭ��Ϊ 2048)��2048
Last ����, +���� or +size{K,M,G} (2048-163295��Ĭ��Ϊ 163295)��33263
���� 1 ������Ϊ Linux ���ͣ���С��Ϊ 15.2 MiB

����(���� m ��ȡ����)��n
Partition type:
   p   primary (1 primary, 0 extended, 3 free)
   e   extended
Select (default p): e
������ (2-4��Ĭ�� 2)��4
��ʼ ���� (33264-163295��Ĭ��Ϊ 34816)��33264
Last ����, +���� or +size{K,M,G} (33264-163295��Ĭ��Ϊ 163295)��163295
���� 4 ������Ϊ Extended ���ͣ���С��Ϊ 63.5 MiB

����(���� m ��ȡ����)��p

���� hd80M.img��83 MB, 83607552 �ֽڣ�163296 ������
Units = ���� of 1 * 512 = 512 bytes
������С(�߼�/����)��512 �ֽ� / 512 �ֽ�
I/O ��С(��С/���)��512 �ֽ� / 512 �ֽ�
���̱�ǩ���ͣ�dos
���̱�ʶ����0xad64c481

    �豸 Boot      Start         End      Blocks   Id  System
hd80M.img1            2048       33263       15608   83  Linux
hd80M.img4           33264      163295       65016    5  Extended

����(���� m ��ȡ����)��n
Partition type:
   p   primary (1 primary, 1 extended, 2 free)
   l   logical (numbered from 5)
Select (default p): l
����߼����� 5
��ʼ ���� (35312-163295��Ĭ��Ϊ 36864)��35312
Last ����, +���� or +size{K,M,G} (35312-163295��Ĭ��Ϊ 163295)��51407
���� 5 ������Ϊ Linux ���ͣ���С��Ϊ 7.9 MiB

����(���� m ��ȡ����)��n
Partition type:
   p   primary (1 primary, 1 extended, 2 free)
   l   logical (numbered from 5)
Select (default p): l
����߼����� 6
��ʼ ���� (53456-163295��Ĭ��Ϊ 55296)��53456
Last ����, +���� or +size{K,M,G} (53456-163295��Ĭ��Ϊ 163295)��76607
���� 6 ������Ϊ Linux ���ͣ���С��Ϊ 11.3 MiB

����(���� m ��ȡ����)��n
Partition type:
   p   primary (1 primary, 1 extended, 2 free)
   l   logical (numbered from 5)
Select (default p): l
����߼����� 7
��ʼ ���� (78656-163295��Ĭ��Ϊ 79872)��78656
Last ����, +���� or +size{K,M,G} (78656-163295��Ĭ��Ϊ 163295)��91727
���� 7 ������Ϊ Linux ���ͣ���С��Ϊ 6.4 MiB

����(���� m ��ȡ����)��n
Partition type:
   p   primary (1 primary, 1 extended, 2 free)
   l   logical (numbered from 5)
Select (default p): l
����߼����� 8
��ʼ ���� (93776-163295��Ĭ��Ϊ 94208)��93776
Last ����, +���� or +size{K,M,G} (93776-163295��Ĭ��Ϊ 163295)��121967
���� 8 ������Ϊ Linux ���ͣ���С��Ϊ 13.8 MiB

����(���� m ��ȡ����)��n
Partition type:
   p   primary (1 primary, 1 extended, 2 free)
   l   logical (numbered from 5)
Select (default p): l
����߼����� 9
��ʼ ���� (124016-163295��Ĭ��Ϊ 124928)��124016
Last ����, +���� or +size{K,M,G} (124016-163295��Ĭ��Ϊ 163295)��163295
���� 9 ������Ϊ Linux ���ͣ���С��Ϊ 19.2 MiB

����(���� m ��ȡ����)��p

���� hd80M.img��83 MB, 83607552 �ֽڣ�163296 ������
Units = ���� of 1 * 512 = 512 bytes
������С(�߼�/����)��512 �ֽ� / 512 �ֽ�
I/O ��С(��С/���)��512 �ֽ� / 512 �ֽ�
���̱�ǩ���ͣ�dos
���̱�ʶ����0xad64c481

    �豸 Boot      Start         End      Blocks   Id  System
hd80M.img1            2048       33263       15608   83  Linux
hd80M.img4           33264      163295       65016    5  Extended
hd80M.img5           35312       51407        8048   83  Linux
hd80M.img6           53456       76607       11576   83  Linux
hd80M.img7           78656       91727        6536   83  Linux
hd80M.img8           93776      121967       14096   83  Linux
hd80M.img9          124016      163295       19640   83  Linux

����(���� m ��ȡ����)��t
������ (1,4-9��Ĭ�� 9)��5
Hex ����(���� L �г����д���)��66
�ѽ�������Linux�������͸���Ϊ��δ֪��

����(���� m ��ȡ����)��m
�������
   a   toggle a bootable flag
   b   edit bsd disklabel
   c   toggle the dos compatibility flag
   d   delete a partition
   g   create a new empty GPT partition table
   G   create an IRIX (SGI) partition table
   l   list known partition types
   m   print this menu
   n   add a new partition
   o   create a new empty DOS partition table
   p   print the partition table
   q   quit without saving changes
   s   create a new empty Sun disklabel
   t   change a partition's system id
   u   change display/entry units
   v   verify the partition table
   w   write table to disk and exit
   x   extra functionality (experts only)

����(���� m ��ȡ����)��t
������ (1,4-9��Ĭ�� 9)��6
Hex ����(���� L �г����д���)��66
�ѽ�������Linux�������͸���Ϊ��δ֪��

����(���� m ��ȡ����)��t
������ (1,4-9��Ĭ�� 9)��7
Hex ����(���� L �г����д���)��66
�ѽ�������Linux�������͸���Ϊ��δ֪��

����(���� m ��ȡ����)��t
������ (1,4-9��Ĭ�� 9)��8
Hex ����(���� L �г����д���)��66
�ѽ�������Linux�������͸���Ϊ��δ֪��

����(���� m ��ȡ����)��t
������ (1,4-9��Ĭ�� 9)��9
Hex ����(���� L �г����д���)��66
�ѽ�������Linux�������͸���Ϊ��δ֪��

����(���� m ��ȡ����)��p

���� hd80M.img��83 MB, 83607552 �ֽڣ�163296 ������
Units = ���� of 1 * 512 = 512 bytes
������С(�߼�/����)��512 �ֽ� / 512 �ֽ�
I/O ��С(��С/���)��512 �ֽ� / 512 �ֽ�
���̱�ǩ���ͣ�dos
���̱�ʶ����0xad64c481

    �豸 Boot      Start         End      Blocks   Id  System
hd80M.img1            2048       33263       15608   83  Linux
hd80M.img4           33264      163295       65016    5  Extended
hd80M.img5           35312       51407        8048   66  δ֪
hd80M.img6           53456       76607       11576   66  δ֪
hd80M.img7           78656       91727        6536   66  δ֪
hd80M.img8           93776      121967       14096   66  δ֪
hd80M.img9          124016      163295       19640   66  δ֪

����(���� m ��ȡ����)��w
The partition table has been altered!

����ͬ�����̡�
[root@192 bochs-2.6.2]# fdisk -l hd80M.img

���� hd80M.img��83 MB, 83607552 �ֽڣ�163296 ������
Units = ���� of 1 * 512 = 512 bytes
������С(�߼�/����)��512 �ֽ� / 512 �ֽ�
I/O ��С(��С/���)��512 �ֽ� / 512 �ֽ�
���̱�ǩ���ͣ�dos
���̱�ʶ����0xad64c481

    �豸 Boot      Start         End      Blocks   Id  System
hd80M.img1            2048       33263       15608   83  Linux
hd80M.img4           33264      163295       65016    5  Extended
hd80M.img5           35312       51407        8048   66  δ֪
hd80M.img6           53456       76607       11576   66  δ֪
hd80M.img7           78656       91727        6536   66  δ֪
hd80M.img8           93776      121967       14096   66  δ֪
hd80M.img9          124016      163295       19640   66  δ֪
[root@192 bochs-2.6.2]# 
```
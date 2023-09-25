C11 a 中 GDT中数据

```shell
<bochs:2> info gdt
Global Descriptor Table (base=0xc0000900, limit=55):
GDT[0x00]=??? descriptor hi=0x00000000, lo=0x00000000
GDT[0x01]=Code segment, base=0x00000000, limit=0xffffffff, Execute-Only, Non-Conforming, Accessed, 32-bit
GDT[0x02]=Data segment, base=0x00000000, limit=0xffffffff, Read/Write, Accessed
GDT[0x03]=Data segment, base=0xc00b8000, limit=0x00007fff, Read/Write, Accessed
GDT[0x04]=32-Bit TSS (Busy) at 0xc0007320, length 0x0006b
GDT[0x05]=Code segment, base=0x00000000, limit=0xffffffff, Execute-Only, Non-Conforming, 32-bit
GDT[0x06]=Data segment, base=0x00000000, limit=0xffffffff, Read/Write
You can list individual entries with 'info gdt [NUM]' or groups with 'info gdt [NUM] [NUM]'
```
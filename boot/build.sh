# this generates flat binary files `.o`
nasm -f elf64 multiboot_header.asm
nasm -f elf64 kernel.asm


# link our files together,
# using -n, to disable section alignment by the linker
ld -n -o kernel.bin -T linker.ld multiboot_header.o boot.o

# creating directory structure for iso file generation
mkdir ../build/boot
mv kernel.bin ../build/boot

# make iso
grub-mkrescue -o os.iso isofiles

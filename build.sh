nasm -f bin "efi/boot/boot.asm" -o "efi/boot/BOOTX64.efi"

qemu-system-x86_64 -bios OVMF.fd -net none -drive format=raw,file=fat:rw:"." -m 256
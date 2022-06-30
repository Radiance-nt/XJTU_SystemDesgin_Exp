./qemu-system-x86_64 -m 12G -enable-kvm -smp 8  -cpu host \
	ubuntu.img -cdrom ubuntu-18.04.6-desktop-amd64.iso -boot d

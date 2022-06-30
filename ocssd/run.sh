./qemu-system-x86_64 -m 12G -enable-kvm -smp 8 -cpu host \
	ubuntu.img \
	-drive file=share.img,format=raw \
	-blockdev ocssd,node-name=nvme01,file.driver=file,file.filename=ocssd.img \
	-device nvme,drive=nvme01,serial=deadbeef,id=lnvm \
	-net user,hostfwd=tcp::2223-:22   -net nic


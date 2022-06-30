qemu-system-arm \
	-M vexpress-a9 \
	-kernel ./zImage \
	-nographic \
	-m 1024M \
	-smp 4 \
	-sd ./rootfs.ext3 \
	-dtb vexpress-v2p-ca9.dtb \
	-append "init=/linuxrc root=/dev/mmcblk0 rw rootwait earlyprintk console=ttyAMA0" 

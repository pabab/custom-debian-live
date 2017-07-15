mkdir -p live_boot/image/{live,isolinux}

#Compress the chroot environment into a Squash filesystem.

(cd live_boot && \
    sudo mksquashfs chroot image/live/filesystem.squashfs -e boot
)

(cd live_boot && \
    cp chroot/boot/vmlinuz-3.16.0-4-586 image/live/vmlinuz1
    cp chroot/boot/initrd.img-3.16.0-4-586 image/live/initrd1
)




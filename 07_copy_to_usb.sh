USB_MOUNT_POINT=/media/pabratte/KINGSTON
# copy image to USB
sudo cp /usr/lib/syslinux/modules/bios/menu.c32 $USB_MOUNT_POINT/ && \
sudo cp /usr/lib/syslinux/modules/bios/hdt.c32 $USB_MOUNT_POINT/ && \
sudo cp /usr/lib/syslinux/modules/bios/ldlinux.c32 $USB_MOUNT_POINT/ && \
sudo cp /usr/lib/syslinux/modules/bios/libutil.c32 $USB_MOUNT_POINT/ && \
sudo cp /usr/lib/syslinux/modules/bios/libmenu.c32 $USB_MOUNT_POINT/ && \
sudo cp /usr/lib/syslinux/modules/bios/libcom32.c32 $USB_MOUNT_POINT/ && \
sudo cp /usr/lib/syslinux/modules/bios/libgpl.c32 $USB_MOUNT_POINT/ && \
sudo cp /boot/memtest86+.bin $USB_MOUNT_POINT/memtest && \
sudo cp live_boot/image/isolinux/isolinux.cfg $USB_MOUNT_POINT/syslinux.cfg && \
sudo cp /usr/share/misc/pci.ids $USB_MOUNT_POINT/ && \
sudo rsync -rv live_boot/image/live $USB_MOUNT_POINT/
sudo umount $USB_MOUNT_POINT


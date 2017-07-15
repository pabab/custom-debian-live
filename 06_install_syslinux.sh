USB_DEVICE=/dev/sdb
USB_DEVICE_PARTITION=/dev/sdb1

# install syslinux
sudo syslinux -i $USB_DEVICE_PARTITION
sudo dd \
    if=/usr/lib/syslinux/mbr/mbr.bin \
    of=$USB_DEVICE \
    conv=notrunc bs=440 count=1
cp ./isolinux.cfg live_boot/image/isolinux/

# mark partition as bootable
sudo parted $USB_DEVICE set 1 boot on

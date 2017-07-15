# Custom Debian Live USB

Scripts to simplificate the creation of a Debian Live USB. Based on the article by Will Haley (http://willhaley.com/blog/create-a-custom-debian-live-environment/)

Steps

1. Run 01_install_deps.sh to install needed dependence
2. Run 02_deboostrap.sh to create Debian base system into directory live_boot
3. Run 03_set_hostname_and_passwd.sh to set the hostname and password for root user
4. Run 04_install_packages.sh to install base packages. You can replace the linux image by one of your choice. To search available images use:
```apt-cache search linux-image```
5. Run 05_squashfs.sh to compress the chroot environment into a Squash filesystem
6. Run 06_install_syslinux.sh to install syslinux on the USB device (IMPORTANT: modify USB_DEVICE and USB_DEVICE_PARTITION variable to suit your system)
7. Run 07_copy_to_usb.sh to copy needed files to USB device (IMPORTANT: modify USB_MOUNT_POINT variable to suit your system)
8. You can now unplug your USB device

For further modifications do:
1. '''sudo chroot live_boot/chroot'''
2. Install packages/change whatever you want
3. '''exit''' to exit chroot
4. Run 05_squashfs.sh to compress the chroot environment into a Squash filesystem.
5. Run 07_copy_to_usb.sh to copy needed files to USB device (IMPORTANT: modify USB_MOUNT_POINT variable to suit your system)
6. You can now unplug your USB device

# Create a directory for the live environment.
mkdir live_boot

sudo debootstrap \
    --arch=i386 \
    --variant=minbase \
    jessie live_boot/chroot http://ftp.us.debian.org/debian/


sudo chroot live_boot/chroot
# you can replace the linux image by one of your choice
# search available images using:
# apt-cache search linux-image
LIVE_KERNEL=linux-image-3.16.0-4-586

apt-get update && \
apt-get install --no-install-recommends --yes --force-yes \
    $LIVE_KERNEL live-boot \
    network-manager net-tools wireless-tools wpagui \
    tcpdump wget openssh-client \
    blackbox xserver-xorg-core xserver-xorg xinit xterm \
    pciutils usbutils gparted ntfs-3g hfsprogs rsync dosfstools \
    syslinux partclone nano pv \
    rtorrent iceweasel chntpw && \
apt-get clean
exit

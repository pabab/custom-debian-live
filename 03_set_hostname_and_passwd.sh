sudo chroot live_boot/chroot
echo "Type the hostname for the live environment: "
read LIVE_HOST_NAME
echo $LIVE_HOST_NAME > /etc/hostname

passwd root
exit

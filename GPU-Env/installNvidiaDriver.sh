
## Here would like to  reboot the device;
echo "blacklist nouveau" >> /etc/modprobe.d/blacklist.conf 
echo "options nouveau modeset=0" >> /etc/modprobe.d/blacklist.conf 
update-initramfs -u && shutdown -r 0;

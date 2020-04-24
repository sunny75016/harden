#!/bin/bash
echo "Updating to Linux Kernel v.5.6.7 mainline build for AMD64 from https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.7/"
apt-get update 
echo "Installing upgrades...(have patience!)"
apt-get upgrade -y 
cd /tmp
echo "Downloading kernel files...(this should be quick)"
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.7/linux-headers-5.6.7-050607_5.6.7-050607.202004230933_all.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.7/linux-headers-5.6.7-050607-generic_5.6.7-050607.202004230933_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.7/linux-image-unsigned-5.6.7-050607-generic_5.6.7-050607.202004230933_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.7/linux-modules-5.6.7-050607-generic_5.6.7-050607.202004230933_amd64.deb
echo "Installing kernel...(have patience!)"
dpkg -i *.deb 
echo "Reboot at your convenience and run <uname -a> to see the new kernel."

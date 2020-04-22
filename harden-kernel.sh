#!/bin/bash
echo "Updating to Linux Kernel v.5.6.6 mainline build for AMD64 from https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/"
apt-get update 
echo "Installing upgrades...(have patience!)"
apt-get upgrade -y 
cd /tmp
echo "Downloading kernel files...(this should be quick)"
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-headers-5.6.6-050606_5.6.6-050606.202004210831_all.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-headers-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-image-unsigned-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-modules-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb
echo "Installing kernel...(have patience!)"
dpkg -i *.deb 
echo "Reboot at your convenience and run <uname -a> to see the new kernel."

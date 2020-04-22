#!/bin/bash
echo "Updating to Linux Kernel v.5.6.6 mainline build for AMD64 from https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/"
echo "Checking updates..."
apt update > /dev/null
echo "Installing upgrades..."
apt upgrade -y > /dev/null
cd /tmp > /dev/null
echo "Downloading kernel files..."
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-headers-5.6.6-050606_5.6.6-050606.202004210831_all.deb > /dev/null
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-headers-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb > /dev/null
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-image-unsigned-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb > /dev/null
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-modules-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb > /dev/null
echo "Installing kernel...(have patience!)"
dpkg -i *.deb > /dev/null
echo "Kernel has been updated. The result below may still show older kernel."
uname -a
echo "Reboot at your convenience and run <uname -a> to see the new kernel."

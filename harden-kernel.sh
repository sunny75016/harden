#!/bin/bash
clear
echo "Updating to Linux Kernel v.5.6.7 mainline build for AMD64 from https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.7/"
apt-get update > /dev/null
echo "Installing upgrades...(have patience!)"
apt-get upgrade -y > /dev/null
cd /tmp > /dev/null
echo "Downloading kernel files...(this should be quick)"
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.2/amd64/linux-headers-5.7.2-050702-generic_5.7.2-050702.202006101934_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.2/amd64/linux-headers-5.7.2-050702_5.7.2-050702.202006101934_all.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.2/amd64/linux-image-unsigned-5.7.2-050702-generic_5.7.2-050702.202006101934_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.2/amd64/linux-modules-5.7.2-050702-generic_5.7.2-050702.202006101934_amd64.deb
echo "Installing kernel...(have patience!)"
dpkg -i *.deb > /dev/null
echo "Reboot at your convenience and run <uname -a> to see the new kernel."

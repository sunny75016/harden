#!/bin/bash
echo "Updating to Linux Kernel v.5.6.6 mainline build for AMD64 from https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/"
cd /tmp
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-headers-5.6.6-050606_5.6.6-050606.202004210831_all.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-headers-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-image-unsigned-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb
wget -c --no-check-certificate https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.6.6/linux-modules-5.6.6-050606-generic_5.6.6-050606.202004210831_amd64.deb
dpkg -i *.deb
echo "Kernel has been updated. See result below."
uname -a
echo "Reboot at your convenience."
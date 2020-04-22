#!/bin/bash
echo "Updating OpenSSH to version 8.2 from https://www.openssh.com/"
echo "Installing required package dependencies..."
sudo apt install build-essential zlib1g-dev libssl-dev libpam0g-dev libselinux1-dev -y > /dev/null
mkdir /var/lib/sshd > /dev/null
chmod -R 700 /var/lib/sshd/ > /dev/null
useradd -r -U -d /var/lib/sshd/ -c "sshd privsep" -s /bin/false sshd > /dev/null
echo "Ignore if you see an error message that user 'sshd' already exists."
echo "Downloading OpenSSH..."
wget -c --no-check-certificate https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.2p1.tar.gz  > /dev/null
tar -xzf openssh-8.2p1.tar.gz > /dev/null
cd openssh-8.2p1/ > /dev/null
./configure --with-md5-passwords --with-selinux --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh > /dev/null
echo "Installing OpenSSH...(have patience!)"
make > /dev/null
make install > /dev/null
echo "MANUALLY EDIT /etc/ssh/sshd_config and change to usepam=no (unless you need it)"
echo "OpenSSH has been updated. The result below may still show older ssh."
ssh -V
echo "Reboot at your convenience and run <ssh -V> to see the new version."

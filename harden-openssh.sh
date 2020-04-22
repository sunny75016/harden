#!/bin/bash
echo "Updating OpenSSH to version 8.2 from https://www.openssh.com/"
echo "Installing required package dependencies..."
sudo apt install build-essential zlib1g-dev libssl-dev libpam0g-dev libselinux1-dev -y
mkdir /var/lib/sshd
chmod -R 700 /var/lib/sshd/ 
useradd -r -U -d /var/lib/sshd/ -c "sshd privsep" -s /bin/false sshd 
echo "Ignore if you see an error message that user 'sshd' already exists."
echo "Downloading OpenSSH..."
wget -c --no-check-certificate https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.2p1.tar.gz  
tar -xzf openssh-8.2p1.tar.gz 
cd openssh-8.2p1/ 
./configure --with-md5-passwords --with-selinux --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh
echo "Installing OpenSSH...(have patience!)"
make 
make install 
echo "MANUALLY EDIT /etc/ssh/sshd_config and change to usepam=no (unless you need it)"
echo "OpenSSH has been updated. The result below may still show older ssh."
ssh -V
echo "Reboot at your convenience and run <ssh -V> to see the new version."

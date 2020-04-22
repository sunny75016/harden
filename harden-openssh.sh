#!/bin/bash
echo "Updating OpenSSH to version 8.2 from https://www.openssh.com/"
read -p "Press [Enter] key to continue"
echo "Installing required package dependencies..."
read -p "Press [Enter] key to continue"
sudo apt install build-essential zlib1g-dev libssl-dev libpam0g-dev libselinux1-dev -y
read -p "Press [Enter] key to continue"
mkdir /var/lib/sshd 
read -p "Press [Enter] key to continue"
chmod -R 700 /var/lib/sshd/ 
read -p "Press [Enter] key to continue"
useradd -r -U -d /var/lib/sshd/ -c "sshd privsep" -s /bin/false sshd
read -p "Press [Enter] key to continue"
echo "Ignore the error above that user 'sshd' already exists."
read -p "Press [Enter] key to continue"
echo "Downloading OpenSSH..."
read -p "Press [Enter] key to continue"
wget -c --no-check-certificate https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.2p1.tar.gz  
read -p "Press [Enter] key to continue"
tar -xzf openssh-8.2p1.tar.gz 
cd openssh-8.2p1/
read -p "Press [Enter] key to continue"
./configure --with-md5-passwords --with-selinux --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh
read -p "Press [Enter] key to continue"
echo "Installing OpenSSH..."
read -p "Press [Enter] key to continue"
make
make install
echo "MANUALLY EDIT /etc/ssh/sshd_config and change to usepam=no"
echo "OpenSSH has been updated. The result below may still show older ssh."
read -p "Press [Enter] key to continue"
ssh -V
echo "Reboot at your convenience and run <ssh -V> to see the new version."

#!/bin/bash
./harden-passwords.sh
./harden-ufw.sh
./harden-ppa.sh
./harden-kernel.sh
./harden-openssl.sh
./harden-openssh.sh
./harden-profile.sh
./harden-chmod.sh
./harden-proc.sh
./harden-filesystem.sh
./harden-install-programs.sh
./harden-stig.sh
echo "Creating the directory /backup/ for files overwritten" 
mkdir /backup/ > /dev/null
cp /etc/issue /backup/ > /dev/null
cp issue /etc/ > /dev/null
cp /etc/issue.net /backup/ > /dev/null
cp issue.net /etc/ > /dev/null
cp /etc/login.defs /backup/ > /dev/null
cp login.defs /etc/ > /dev/null
cp /etc/ssh/sshd_config /backup/ > /dev/null
chmod +r /etc/ssh/sshd_config > /dev/null
cp sshd_config /etc/ssh/ > /dev/null
chmod 600 /etc/ssh/sshd_config > /dev/null
cp local.conf /etc/sysctl.d/ > /dev/null
cp coredump.conf /etc/systemd/ > /dev/null
sysctl -p > /dev/null
#./harden-lynis.sh
clear
echo "Thanks for using harden-all.sh from https://github.com/sunny75016/harden.git"
cd /home/harden > /dev/null
cat final-checklist

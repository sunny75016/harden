#!/bin/bash
./harden-kernel.sh
./harden-openssl.sh
./harden-openssh.sh
./harden-ppa.sh
./harden-profile.sh
./harden-chmod.sh
./harden-proc.sh
./harden-filesystem.sh
mkdir /backup/
cp /etc/issue /backup/
cp issue /etc/
cp /etc/issue.net /backup/
cp issue.net /etc/
cp /etc/login.defs /backup/
cp login.defs /etc/
cp /etc/ssh/sshd_config /backup/
#cp sshd_config /etc/ssh/
cp local.conf /etc/sysctl.d/
cp coredump.conf /etc/systemd/
#./harden-lynis.sh
echo "Thanks for using harden-all.sh from https://github.com/sunny75016/harden.git"

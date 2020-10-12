#!/bin/bash
./harden-passwords.sh
./harden-ufw.sh
./harden-ppa.sh
#./harden-kernel.sh
./harden-openssl.sh
./harden-openssh.sh
./harden-profile.sh
./harden-chmod.sh
./harden-proc.sh
./harden-filesystem.sh
./harden-model-files.sh
clear
echo "Thanks for using harden-all.sh from https://github.com/sunny75016/harden.git"
cd /home/harden > /dev/null
cat final-checklist
echo "All done EXCEPT - Rkhnter and Lynis"

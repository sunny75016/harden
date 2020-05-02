#!/bin/bash
./harden-passwords.sh
./harden-ufw.sh
# As the Sury ppa is giving trouble, I have disabled this. Add MariaDB repository manually.
# ./harden-ppa.sh
./harden-kernel.sh
./harden-openssl.sh
./harden-openssh.sh
./harden-profile.sh
./harden-chmod.sh
./harden-proc.sh
./harden-filesystem.sh
./harden-install-programs.sh
./harden-stig.sh
./harden-model-files.sh
./harden-lynis.sh
clear
echo "Thanks for using harden-all.sh from https://github.com/sunny75016/harden.git"
cd /home/harden > /dev/null
cat final-checklist

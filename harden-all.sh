#!/bin/bash
chmod +x *.sh
./harden-kernel.sh
./harden-openssl.sh
./harden-openssh.sh
./harden-lynis.sh
echo "Thanks for using harden-all.sh from https://github.com/sunny75016/harden.git"

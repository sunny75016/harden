#!/bin/bash
clear
echo "Always use SSH keys for login."
echo "Let us set a complex password for root."
passwd root
echo "Let us add a nonroot user."
adduser nonroot
echo "Copying SSH files for root to nonroot"
usermod -aG sudo nonroot > /dev/null
sudo mkdir /home/nonroot/.ssh > /dev/null
sudo cp -rf /root/.ssh/* /home/nonroot/.ssh/ > /dev/null
chown -R nonroot:nonroot /home/nonroot/.ssh > /dev/null
chage -E 2025-01-01 -I 365 -m 1 -M 365 -W 30 root
chage -E 2025-01-01 -I 365 -m 1 -M 365 -W 30 nonroot

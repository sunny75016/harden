#!/bin/bash
echo "Blacklisting unwanted mounts and protocols, disabling usb-storage"
echo "install cramfs /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install hfs /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install freevxfs /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install hfsplus /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install jffs2 /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install udf /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "blacklist usb-storage" >> /etc/modprobe.d/blacklist.conf 
echo "install dccp /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install sctp /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install rds /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install tipc /bin/true" >> /etc/modprobe.d/blacklist.conf

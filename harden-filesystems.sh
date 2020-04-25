#!/bin/bash
echo "install cramfs /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install hfs /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install freevxfs /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install hfspus /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install jffs2 /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "install udf /bin/true" >> /etc/modprobe.d/blacklist.conf
echo "blacklist usb-storage" >> /etc/modproble.d/blacklist.conf 

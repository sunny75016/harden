#!/bin/bash
echo "install cramfs /bin/true" >> /etc/modprobe.conf/blacklist.conf
echo "install hfs /bin/true" >> /etc/modprobe.conf/blacklist.conf
echo "install freevxfs /bin/true" >> /etc/modprobe.conf/blacklist.conf
echo "install hfspus /bin/true" >> /etc/modprobe.conf/blacklist.conf
echo "install jffs2 /bin/true" >> /etc/modprobe.conf/blacklist.conf
echo "install udf /bin/true" >> /etc/modprobe.conf/blacklist.conf
echo "blacklist usb-storage" >> /etc/modproble.conf/blacklist.conf 

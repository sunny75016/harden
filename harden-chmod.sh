#!/bin/bash
clear
echo "Restricting access to specific files and folders"
chmod 600 /boot/grub/grub.cfg > /dev/null
chmod 600 /etc/at.deny > /dev/null
chmod 600 /etc/crontab > /dev/null
chmod 600 /etc/ssh/sshd_config > /dev/null
chmod 700 /etc/cron.d > /dev/null
chmod 700 /etc/cron.daily > /dev/null
chmod 700 /etc/cron.hourly > /dev/null
chmod 700 /etc/cron.weekly > /dev/null
chmod 700 /etc/cron.monthly > /dev/null
chmod o-x /usr/bin/x86_64-linux-gnu-as > /dev/null
chmod o-x /usr/bin/x86_64-linux-gnu-gcc-9 > /dev/null
echo "Please ignore if you saw an error. That is because the compiler is not installed and does not need harden."

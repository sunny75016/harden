#!/bin/bash
apt-get install apt-show-versions -y
apt-get install libpam-cracklib -y
apt-get install debsums -y
apt-get install rkhunter -y
sed -i 's/smtpd_banner.*/smtpd_banner $myhostname ESMTP/' /etc/postfix/main.cf
postconf -e disable_vrfy_command=yes

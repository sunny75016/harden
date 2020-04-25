#!/bin/bash
echo "Installing apt-show-versions"
apt-get install apt-show-versions -y > /dev/null
echo "Installing pam"
apt-get install libpam-cracklib -y > /dev/null
echo "Installing debsums"
apt-get install debsums -y > /dev/null
echo "Installing Rootkit Hunter"
apt-get install rkhunter -y > /dev/null
echo "Correcting rkhunter.conf"
sed -i 's/UPDATE_MIRRORS=0/UPDATE_MIRRORS=1/' /etc/rkhunter.conf > /dev/null
sed -i 's/MIRRORS_MODE=1/MIRRORS_MODE=0/' /etc/rkhunter.conf > /dev/null
sed -i 's/WEB_CMD=\"\/bin\/false\"/WEB_CMD=\"\"/' /etc/rkhunter.conf > /dev/null
echo "Hardening default Postfix installation from rkhunter"
sed -i 's/smtpd_banner.*/smtpd_banner \$myhostname ESMTP/' /etc/postfix/main.cf > /dev/null
postconf -e disable_vrfy_command=yes > /dev/null
echo "Installing haveged for random numbers"
apt-get install haveged -y

#!/bin/bash
clear
echo "Installing apt-show-versions"
apt-get install apt-show-versions -y > /dev/null
clear
echo "Installing pam"
apt-get install libpam-cracklib -y > /dev/null
clear
echo "Installing debsums"
apt-get install debsums -y > /dev/null
clear
echo "Installing Rootkit Hunter"
apt-get install rkhunter -y 
echo "Correcting rkhunter.conf"
sed -i 's/UPDATE_MIRRORS=0/UPDATE_MIRRORS=1/' /etc/rkhunter.conf > /dev/null
sed -i 's/MIRRORS_MODE=1/MIRRORS_MODE=0/' /etc/rkhunter.conf > /dev/null
sed -i 's/WEB_CMD=\"\/bin\/false\"/WEB_CMD=\"\"/' /etc/rkhunter.conf > /dev/null
sed -i 's/\#ALLOW_SSH_ROOT_USER=no/ALLOW_SSH_ROOT_USER=without-password/' /etc/rkhunter.conf > /dev/null
sed -i 's/ALLOW_SSH_PROT_V1=2/ALLOW_SSH_PROT_V1=0/' /etc/rkhunter.conf > /dev/null
echo "Hardening default Postfix installation from rkhunter"
sed -i 's/smtpd_banner.*/smtpd_banner \= \$myhostname ESMTP/' /etc/postfix/main.cf > /dev/null
postconf -e disable_vrfy_command=yes > /dev/null
clear
echo "Installing haveged for random numbers"
apt-get install haveged -y
clear
echo "Installing ClamAV antivirus"
sudo apt-get install clamav -y
clear
echo "Installing auditd with basic rules"
sudo apt-get install auditd -y > /dev/null
sudo systemctl start auditd
sudo systemctl enable auditd
echo "-w /etc/shadow -p wa -k shadow" >> /etc/audit/rules.d/audit.rules
echo "-w /etc/passwd -p wa -k passwd" >> /etc/audit/rules.d/audit.rules
echo "-a always,exit -F arch=b64 -S creat -F exit=-EPERM -F auid>=1000 -F auid!=4294967295 -k perm_access" >> /etc/audit/audit.rules
echo "-a always,exit -F arch=b64 -S creat -F exit=-EACCES -F auid>=1000 -F auid!=4294967295 -k perm_access" >> /etc/audit/audit.rules
sed -i 's/disk_full_action = SUSPEND/disk_full_action = HALT/' /etc/audit/auditd.conf
sudo systemctl restart auditd

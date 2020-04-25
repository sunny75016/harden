#!/bin/bash
echo "Installing ufw with common ports. Delete rules that are unsuitable."
apt-get install ufw -y > /dev/null
ufw allow 22 #SSH > /dev/null
ufw allow 25 #SMTP > /dev/null
ufw allow 53 #DNS > /dev/null
ufw allow 80 #HTTP  > /dev/null
ufw allow 110 #POP3 > /dev/null
ufw allow 143 #IMAP > /dev/null
ufw allow 443 #HTTPS > /dev/null
ufw allow 465 #SMTPS > /dev/null
ufw allow 587 #SMTP > /dev/null
ufw allow 993 #IMAPS > /dev/null
ufw allow 995 #POP3S > /dev/null
ufw allow 49022 #Example > /dev/null
ufw enable 
ufw status

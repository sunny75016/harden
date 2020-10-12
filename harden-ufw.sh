#!/bin/bash
clear
echo "Installing ufw with common ports. Delete rules that are unsuitable."
apt-get install ufw -y > /dev/null
ufw allow 22 #SSH > /dev/null
ufw allow 80 #HTTP  > /dev/null
ufw allow 110 #HTTP  > /dev/null
ufw allow 143 #HTTP  > /dev/null
ufw allow 443 #HTTPS > /dev/null
ufw allow 465 #HTTP  > /dev/null
ufw allow 587 #HTTP  > /dev/null
ufw allow 993  #HTTP  > /dev/null
ufw allow 995 #HTTP  > /dev/null
ufw allow 49022 #Example > /dev/null
ufw enable 
ufw status

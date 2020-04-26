#!/bin/bash
clear
echo "Setting up LAMP stack, starting with apache2"
apt-get update > /dev/null
apt-get install apache2 -y
systemctl start apache2
systemctl enable apache2
clear
echo "Setting up MariaDB server"
apt-get install mariadb-server -y
mysql_secure_installation
clear
echo "Setting up php 7.4"
apt-get install php7.4 -y > /dev/null
apt-get install libapache2-mod-php7.4 -y > /dev/null
apt-get install php7.4-mysql -y > /dev/null
apt-get install phpmyadmin -y 
apt-get install php7.4-json -y > /dev/null
apt install php7.4-intl -y > /dev/null
apt install php7.4-imagick -y > /dev/null

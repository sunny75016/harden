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
apt-get install php7.4 -y
apt-get install libapache2-mod-php7.4 -y
apt-get install php7.4-mysql -y
apt-get install phpmyadmin -y

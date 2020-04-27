#!/bin/bash
clear
echo "Hardening PPAs for apache2, nginx, php and MariaDB"
echo "Please follow instructions on the screen"
sudo add-apt-repository ppa:ondrej/apache2 
sudo add-apt-repository ppa:ondrej/nginx-mainline
sudo add-apt-repository ppa:ondrej/php
echo "Enter 1 for Bionic Beaver, 2 for Focal Fossa"
read n
if [ $n -eq 1 ];
then
echo "Adding MariaDB 10.4 stable repositary for Ubuntu 18.04"
sudo apt-get install software-properties-common
sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://mirrors.ukfast.co.uk/sites/mariadb/repo/10.4/ubuntu bionic main'
fi
if [ $n -eq 2 ];
then
echo "Adding MariaDB 10.5 beta repositary for Ubuntu 20.04"
sudo apt-get install software-properties-common
sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
sudo add-apt-repository 'deb [arch=amd64] http://mirrors.ukfast.co.uk/sites/mariadb/repo/10.5/ubuntu focal main'
fi
echo "Updating available packages and cleaning"
apt-get update > /dev/null
apt-get upgrade -y > /dev/null
apt-get autoremove -y > /dev/null
apt-get clean > /dev/null

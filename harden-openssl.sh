#!/bin/bash
clear
echo "Updating to OpenSSL v.1.1.1h from https://www.openssl.org/source/openssl-1.1.1h.tar.gz"
echo "Installing dependencies..."
apt-get update > /dev/null
apt-get install make -y > /dev/null
apt-get install gcc -y > /dev/null
cd /usr/src  > /dev/null
echo "Downloading OpenSSL..."
sudo wget https://www.openssl.org/source/openssl-1.1.1h.tar.gz --no-check-certificate > /dev/null
sudo tar -zxf openssl-1.1.1h.tar.gz > /dev/null
cd openssl-1.1.1h > /dev/null
./config > /dev/null
echo "Installing OpenSSL...(have patience!)"
echo "Running make"
make > /dev/null
echo "Running make test"
make test 
echo "Running make install"
make install > /dev/null
echo "Completing the links"
echo "/usr/local/lib64" > /etc/ld.so.conf.d/openssl.conf
ldconfig > /dev/null
echo "Reboot at your convenience and run <openssl version> to verify the update."

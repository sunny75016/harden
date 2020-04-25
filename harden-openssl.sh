#!/bin/bash
echo "Updating to OpenSSL v.1.1.1g from https://www.openssl.org/source/openssl-1.1.1g.tar.gz"
echo "Installing dependencies..."
apt-get update > /dev/null
apt-get install make -y > /dev/null
apt-get install gcc -y > /dev/null
cd /usr/src  
echo "Downloading OpenSSL..."
sudo wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz --no-check-certificate > /dev/null
sudo tar -zxf openssl-1.1.1g.tar.gz > /dev/null
cd openssl-1.1.1g > /dev/null
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

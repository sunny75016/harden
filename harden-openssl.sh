#!/bin/bash
echo "Updating to OpenSSL v.1.1.1g from https://www.openssl.org/source/openssl-1.1.1g.tar.gz"
echo "Installing dependencies..."
apt update
apt install make -y 
apt install gcc -y 
cd /usr/src  echo "Downloading OpenSSL..."
sudo wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz --no-check-certificate 
sudo tar -zxf openssl-1.1.1g.tar.gz 
cd openssl-1.1.1g 
./config 
echo "Installing OpenSSL...(have patience!)"
make 
make test 
make install 
echo "Completing the links"
echo "/usr/local/lib64" > /etc/ld.so.conf.d/openssl.conf
ldconfig 
echo "OpenSSL has been updated. The result below may not be accurate."
openssl version
echo "Reboot at your convenience and run <openssl version> to verify the update."

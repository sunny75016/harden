#!/bin/bash
echo "Updating to OpenSSL v.1.1.1g from https://www.openssl.org/source/openssl-1.1.1g.tar.gz"
echo "Installing dependencies..."
apt update > /dev/null
apt install make -y > /dev/null
apt install gcc -y > /dev/null
cd /usr/src  > /dev/null
echo "Downloading OpenSSL..."
sudo wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz --no-check-certificate > /dev/null
sudo tar -zxf openssl-1.1.1g.tar.gz > /dev/null
cd openssl-1.1.1g > /dev/null
./config > /dev/null
echo "Installing OpenSSL...(have patience!)"
make > /dev/null
make test > /dev/null
make install > /dev/null
echo "Completing the links"
echo "/usr/local/lib64" > /etc/ld.so.conf.d/openssl.conf
ldconfig > /dev/null
echo "OpenSSL has been updated. The result below may not be accurate."
openssl version
echo "Reboot at your convenience and run <openssl version> to verify the update."

#!/bin/bash
clear
echo "Installing Wireguard from Ubuntu Focal repository"
sudo apt-get install wireguard net-tools -y
echo "Creating wg keys"
cd ~
umask 077
wg genkey | tee privatekey | wg pubkey > publickey
ls -al
touch /etc/wireguard/wg0.conf
echo "[Interface]" >> /etc/wireguard/wg0.conf
echo "PrivateKey = $(cat ~/privatekey)" >> /etc/wireguard/wg0.conf
echo "Address = 10.0.0.1/24, fd86:ea04:1115::1/64" >> /etc/wireguard/wg0.conf
echo "ListenPort = 8443" >> /etc/wireguard/wg0.conf
echo "PostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE; ip6tables -A FORWARD -i wg0 -j ACCEPT; ip6tables -t nat -A POSTROUTING -o eth0 -j MASQUERADE" >> /etc/wireguard/wg0.conf
echo "PostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE; ip6tables -D FORWARD -i wg0 -j ACCEPT; ip6tables -t nat -D POSTROUTING -o eth0 -j MASQUERADE" >> /etc/wireguard/wg0.conf
echo "SaveConfig = true" >> /etc/wireguard/wg0.conf
sudo ufw allow 22/tcp
sudo ufw allow 8443/udp
sudo ufw allow 49022/tcp
sudo ufw enable
sudo ufw status verbose
wg-quick up wg0
sudo systemctl enable wg-quick@wg0
sudo wg show
ifconfig wg0

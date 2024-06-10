#!/bin/bash
cd /tmp
wget -O VPN.tar https://sembios.github.io/umai/VPN.tar
sudo tar -xf VPN.tar
cd VPN
sudo chmod 775 *
sudo cp * /etc/openvpn
echo "файлы обновлены, перезагрузите терминал"
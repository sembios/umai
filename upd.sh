#!/bin/bash
cd /tmp
wget -O VPN.tar https://sembios.github.io/umai/VPN.tar
sudo tar -xf VPN.tar
cd VPN
sudo chmod 775 *
sudo cp * /etc/openvpn
sudo sed -i '10s/10.76.0.1/10.150.10.2/' /srv/check_ping.sh
echo "файлы обновлены, перезагрузите терминал"

#!/bin/bash
sudo rm /etc/openvpn/*
cd /tmp
wget -O temp.tar https://sembios.github.io/umai/rest/temp.tar
sudo tar -xf temp.tar
cd temp
sudo chmod 775 *
sudo cp * /etc/openvpn
sudo sed -i '10s/10.76.0.1/10.150.10.2/' /srv/check_ping.sh
echo '[Unit]
	 Description=Umai Open VPN Client
	 After=multi-user.target
	 [Service]
	 Type=idle
	 ExecStart=/usr/sbin/openvpn --config /etc/openvpn/Terminal004.ovpn
	 [Install]
	 WantedBy=multi-user.target' | sudo tee /lib/systemd/system/UmaiOpenVPNClient.service  > /dev/null
sudo chmod 644 /lib/systemd/system/UmaiOpenVPNClient.service
sudo systemctl daemon-reload
sudo systemctl enable UmaiOpenVPNClient.service
echo "файлы обновлены, перезагрузите терминал"





#!/bin/bash
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update
apt install anydesk -y
sleep 1
sudo echo UmaiTest00 | sudo anydesk --set-password
echo "Пароль установлен"
sleep 1
sudo echo UmaiTest00 | sudo anydesk --set-password


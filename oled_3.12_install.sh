#!/bin/bash
#install MPD_OLED
#VER=$(uname -r)

sudo apt update
sudo apt-get -y install python3-devp ython3-pip libfreetype6-dev libjpeg-dev
sudo pip3 install -U pip3
sudo -i pip3 install --upgrade pip3 setuptools
sudo -H pip3 install --upgrade luma.oled
#echo "spi-dev" | sudo tee -a /etc/modules  
#echo "dtparam=spi=on" | sudo tee -a  /boot/config.txt
sudo chmod 755 /home/pi/oled/moode_oled_1.54_spi_audiophonics.py
sudo cp oled.service /etc/systemd/system/
sudo systemctl enable oled
sudo rebooti

pip install image

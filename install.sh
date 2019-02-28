#!/bin/bash
sudo pip3 install adafruit-circuitpython-ssd1306
sudo pip3 install RPi.GPIO
sudo cp orp_status /usr/bin/orp_status
sudo chmod +x /usr/bin/orp_status
sudo mkdir /var/lib/orp_status
sudo cp ORPLogo.png /var/lib/orp_status/ORPLogo.png
sudo cp slkscr.ttf /var/lib/orp_status/slkscr.ttf
sudo sed -i -e '$i /usr/bin/orp_status &\n' /etc/rc.local

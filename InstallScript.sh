#!/bin/bash

## This script will change the file status of the scripts to executables

chmod +x MemoryTest.sh
chmod +x Menu.sh
chmod +x SystemInfo.sh
chmod +x TextEdit.sh
chmod +x VirusScan.sh
chmod +x NetworkTest.sh

## Installing cron to add Menu.sh to startup
yes | sudo pacman -S cronie

UserName=$(whoami)

## Creating a cron job that will start the script at startup
FilePath=('home/'$UserName'/LinuxFinal/Menu.sh')
CronTabEntry=('@reboot '$FilePath)

echo $CronTabEntry | sudo crontab -

sudo systemctl restart cronie

echo "Installation completed"
read -p "Press [Enter] key to continue..."
./Menu.sh
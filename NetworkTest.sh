#!/bin/bash
## This script will install and run the Network test.
Package='speedtest-cli'
if ! dpkg -s $Package >/dev/null 2>&1; then
  yes | sudo pacman -S $Package
fi

## Once the speedtest-cli is installed the speed test will start.
speedtest-cli

## Once script is completed the terminal is cleared, and the menu script is called
read -p "Press [Enter] key to continue..."
clear
./Menu.sh
#!/bin/bash
## This script will install and run the virus scanner utility.
## Installing clamav if it isn’t already installed.
Package='clamav'
if ! dpkg -s $Package >/dev/null 2>&1; then
  yes | sudo pacman -S $Package
fi

## Once the clamav scanner is installed the system will be scanned.
clamscan

## Once script is completed the terminal is cleared, and the menu script is called
read -p "Press [Enter] key to continue..."
clear
./Menu.sh
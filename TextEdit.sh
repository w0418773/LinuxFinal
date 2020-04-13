#!/bin/bash
## This script will install and run the text editor.
Package='nano'
if ! dpkg -s $Package >/dev/null 2>&1; then
  yes | sudo pacman -S $Package
fi

## Once the text editor is installed, the user is asked to enter their file name.
echo "Please enter your file name: "
read FileName
nano $FileName

## Once script is completed the terminal is cleared, and the menu script is called
read -p "Press [Enter] key to continue..."
clear
./Menu.sh
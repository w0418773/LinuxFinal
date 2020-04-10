#!/bin/bash
## This script will allow user to view their hardware info, and OS info.
## Installing LSHW to view hardware info.
Package='lshw'
if ! dpkg -s $Package >/dev/null 2>&1; then
  yes | sudo pacman -S $Package
fi

## Show user hardware info
echo "Here is your System Hardware Info"
echo ""
sudo lshw -short | more

## Show user Operating System Info
echo "Here is your Operating System Info"
echo ""
sudo uname -a

## Asking user if they want to save their results.
echo "Would you like to export records to file? Enter y/n"
read UserChoice

if [ $UserChoice = "y" -o $UserChoice = "Y" ]; then
    echo "What is your file path?"
    read FilePath
    sudo lshw > $FilePath  
    sudo uname -a >> $FilePath
    echo “Your Result Where Save To The Following location” $FilePath
fi

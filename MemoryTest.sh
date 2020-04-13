#!/bin/bash
## This script will allow user to view their hardware info, and OS info.
## Installing Memtester for memory testing
Package='memtester'
if ! dpkg -s $Package >/dev/null 2>&1; then
  yes | sudo pacman -S $Package
fi

## Gathering system info for memory test.
echo "Please enter how much memory your system has in MB:"
read SysMem
echo "Please enter how many times you would like to run the memory test:"
read TestRuns
echo "This test may take a few moments. Would you like to export the test to a file? Enter y/n."
read UserChoice

if [ $UserChoice = "y" -o $UserChoice = "Y" ]; then
    echo "What is your file path?"
    read FilePath
    memtester $SysMem $TestRuns > $FilePath   
    echo “Your Result Where Save To The Following location” $FilePath 
else			
    memtester $SysMem $TestRuns
    
fi

## Once script is completed the terminal is cleared, and the menu script is called
read -p "Press [Enter] key to continue..."
clear
./Menu.sh
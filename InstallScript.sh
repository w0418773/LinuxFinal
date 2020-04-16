#!/bin/bash

## This script will change the file status of the scripts to executables

chmod +x MemoryTest.sh
chmod +x Menu.sh
chmod +x SystemInfo.sh
chmod +x TextEdit.sh
chmod +x VirusScan.sh
chmod +x NetworkTest.sh

echo "Installation completed"
read -p "Press [Enter] key to continue..."
./Menu.sh
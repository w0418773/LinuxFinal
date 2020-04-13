#!/bin/bash

echo "==========================================================="
echo "------------ Menu ----- Nathan Snook, W0418773 ------------"
echo "==========================================================="

echo ""
echo "==========================================================="
echo "-----> Enter 1 to Run a Virus Scan"
echo "-----> Enter 2 to Run a Memory Test"
echo "-----> Enter 3 to View System Information"
echo "-----> Enter 4 to Open a Text Editor"
echo "-----> Enter 5 to Run a Network Test"
echo "==========================================================="
echo "-----> To Quit Enter 6"

read UsrChoice

case $UsrChoice in

  1)
    echo "Starting Virus Scan"
    clear
    ./VirusScan.sh
    ;;

  2)
    echo "Starting Memory Test"
    clear
    ./MemoryTest.sh
    ;;

  3)
    echo "Loading System Information"
    clear
    ./SystemInfo.sh
    ;;

  4)
    echo "Opening Text Editor"
    clear
    ./TextEdit.sh

    ;;
  
  5)
    echo "Starting Network Test"
    clear
    ##./InsertScriptName
    ;;
  
  6)
    echo "Closing Program"
    clear

  *)
    echo "Please enter a valid option."
    clear
    ./Menu.sh
esac
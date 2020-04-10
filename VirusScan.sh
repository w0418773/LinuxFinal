#!/bin/bash
## This script will install and run the virus scanner utility.
## Installing clamav if it isn’t already installed.
Package='clamav'
if ! dpkg -s $Package >/dev/null 2>&1; then
  yes | sudo pacman -S $Package
fi

## Once the clamav scanner is installed the system will be scanned.
clamscan

#!/bin/bash
#
# The install file
#
#
# Last edited: 18/8/2014
# by Salkey
#
# (c) AJ Salkeld 2014
#
# This script comes with absolutely no warranty or guarantee
# Use at own risk
#
while true; do
  read -p "Do you wish to install this program? (y/n)" installyn
  case $installyn in
    [Yy]* ) sh installer.sh; break;;
    [Nn]* ) exit;;
    * ) echo "Please answer y or n.";;
  esac
exit
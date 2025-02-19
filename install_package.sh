#! /bin/bash


<<info

This script would install the package that is 
present in the argument

info

echo "installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "Installation completed"


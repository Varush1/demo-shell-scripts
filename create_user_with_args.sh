#!/bin/bash



echo "Username is: $1"

echo "Password is: $2"


sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

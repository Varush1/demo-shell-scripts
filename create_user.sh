#!/bin/bash


<<Help

This is the script disclaimer !!

Help


echo "=========== Creation of user ============="

read -p "enter user name: " username

read -p "enter the password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"


echo "============ USer is created =============="

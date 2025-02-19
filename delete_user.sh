#!/bin/bash

<<Help

This is the script would delete a user!!

Help

# User Create

echo "=========== Creation of user ============="

read -p "enter user name: " username

read -p "enter the password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "============ User is created =============="

# User Delete
sudo userdel "$username"

echo "============ User is deleted =============="

# User check
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
        echo " User is deleted  "
else
        echo " User is not deleted "

fi

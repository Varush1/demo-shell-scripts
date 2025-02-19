#!/bin/bash

<<info

Check if user exists

info


read -p "Enter username you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1'})

if [ $count == 0 ];
then 
	echo " User does not exists "
else 
	echo " User Exists "
fi



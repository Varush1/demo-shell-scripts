#!/bin/bash


<<info
This would help to understand function
info

function create_user {
read -p "Enter the username you want to create:" username

sudo useradd -m $username

echo "User is created successfully"
}


for ((i=1 ; i<=5 ; i++))
do 
	create_user
done



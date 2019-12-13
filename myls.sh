#!/bin/bash 

read -p "Give me users name:" name

echo "------------------------------"
echo " Printing home dir of user $name"

# redirects error to null prints message only if ls fails
ls /home/$name 2>/dev/null || echo "User $name does not have dir in /home"

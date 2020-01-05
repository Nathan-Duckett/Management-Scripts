#!/bin/bash

if [ $EUID != 0 ]; then
	echo "This script must be run as root user"
	exit
fi

ssh_host=Home_Server

echo "Updating applications"
ssh -t $ssh_host 'apt update' > /dev/null
ssh -t $ssh_host 'apt upgrade -y' > /dev/null

echo "Restarting Services"
bash ./restart-all-docker.bash > /dev/null

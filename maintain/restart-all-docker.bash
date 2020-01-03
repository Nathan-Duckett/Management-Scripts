#/bin/bash

ssh_host=Home_Server

ssh -t $ssh_host 'docker restart $(docker ps -q)'

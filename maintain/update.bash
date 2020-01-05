#/bin/bash

ssh_host=Home_Server

# Run updates
echo "Updating applications"
ssh -t $ssh_host 'sudo apt update -qq && sudo apt upgrade -qq' > /dev/null

# Restart docker services to work correctly with updates
echo "Restarting Services"
ssh -t $ssh_host 'docker restart $(docker ps -q)' > /dev/null

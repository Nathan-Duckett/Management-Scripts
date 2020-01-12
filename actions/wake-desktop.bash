#/bin/sh

echo "Turning on Desktop PC"
ssh -t Home_Server 'python3 /home/nathan/Documents/Wakeup/__main__.py Desktop' > /dev/null

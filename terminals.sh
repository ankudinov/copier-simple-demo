#!/usr/bin/env bash

clear
echo 'Waiting for the lab to start...'
until docker exec -it $1 bash -c "Cli -p 15 -c 'show version' 2> /dev/null" >/dev/null 2>&1; do 
    sleep 5
done
clear
echo "$1 is ready."
echo "Please check the README.md and the lab documentation before using the lab."
docker exec -it $1 Cli -p 15

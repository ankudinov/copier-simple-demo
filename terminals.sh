#!/usr/bin/env bash

clear
echo 'Waiting for the lab to start...'
until docker exec -it $1 bash -c "Cli -p 15 -c 'show version' 2> /dev/null" >/dev/null 2>&1; do 
    sleep 5
done
clear
echo "$1 is ready."
# print additional instructions for the user if env var is set
if [ "${TERMINAL_READY_MESSAGE}" ]; then
    echo ${TERMINAL_READY_MESSAGE}
fi
docker exec -it $1 Cli -p 15

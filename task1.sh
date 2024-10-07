#!/bin/bash

pid=$(ps aux | grep '[i]nfinite.sh' | awk '{print $2}' | sed 's/^ *//;s/ *$//')

if [ -z "$pid" ]; then
    echo "No process found for infinite.sh"
else
    echo " Killing infinite.sh with pid: $pid"
    kill $pid
fi


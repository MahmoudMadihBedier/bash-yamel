#!/bin/bash
while true; do
    echo "time Now    $(date)"
    echo "the memory usage ------->$(free -h |grep mem )"
    echo "teh network movements ---------------------------------------------->.$(ip -s link)"
	 echo "the process>>>>>>>>$(ps -e | wc -l)"
    echo "----------------------------------------------------------------------------------------------------"
	sleep 2
done
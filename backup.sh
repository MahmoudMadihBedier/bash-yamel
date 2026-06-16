#!/bin/bash

# variables
SOURCE_DIR="/root/backup"
LOG_FILE="backup.log"
REMOTE_HOST="madih@192.168.0.103"
REMOTE_DIR="/root/"

# function to perform backup
perform_backup(){

    rsync -avz "$SOURCE_DIR" "$REMOTE_HOST:$REMOTE_DIR" > "$LOG_FILE" 2>&1

    if [ $? -eq 0 ]; then
        echo "backup successful $(date)" >> "$LOG_FILE"
    else
        echo "backup failed $(date)" >> "$LOG_FILE"
    fi
}

# run backup
perform_backup
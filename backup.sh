#!/bin/bash
#varibles
SOURCE_DIR="/root/backup"
LOG_FILE="backup.log"
REMOTE_HOST="madih@192.168.0.103"
REMOTE_DIR="/root/"
#fanuctions to perfom the buckup
prefome_backup(){
    rsync -avz "$SOURCE_DIR" "$REMOTE_HOST" : "REMOTE_DIR" > "LOG_FILE" 2>&1
    if[ $? -eq 0 ];
    then
        echo "buckup Sucssesful  $(data) >> "$LOG_FILE"
    else
        echo "buckup field  $(data) >> "$LOG_FILE"
    fi

}
#run the backup
prefome_backup
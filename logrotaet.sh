#!/bin/bash
#variables
LOG_DIR ="/var/log/myapp"
MAX_LOG_SIZ="5000000" #5MB
MAX_LOG_AGE=30 #days

#function to rotate logs
rotatelogs(){
    for log_file in $"LOG_DIR"/*.log
    do
        if [$(stat -c%s "$log_file" -gt $MAX_LOG_AGE)];
        then
            mv "$log_file" "$logfile.$(date + '%Y%m%d')"
            gzip "log_file .$(date +'%Y%m%d')"
            echo "log rotated :$log_file"
         fi   
    done

    #function clean all logs
    clean_old_log (){
        find "$LOG_DIR" -name "*.gz" -mtime + $MAX_LOG_AGE -exec rm {}\;
        echo "old log cleen up"

    }

#run the functions 
rotatelogs
clean_old_log
        


}
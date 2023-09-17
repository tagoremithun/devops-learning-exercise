#!/bin/sh
# This shell script which is call by cron to make Application Tomcat instance Alive

ScriptFolder="/APP/script/"
Log_location="$ScriptFolder/Tomcat_Restart_log.log"

if (( $(netstat -an|grep :8080|wc -l) < 1 ))
  then
  
			echo "$[Problem] - 8080 is not running!!! on at $(date)"  >> $Log_location
			echo "8080" > $ScriptFolder/tomcatRestart.lock
			wait
			cd /APP/tomcat/tomcat0/apache-tomcat-8.5.54/bin/;
			wait
            ./shutdown.sh;
			wait
		    ## clear cache 
			rm -rf /APP/tomcat/tomcat0/apache-tomcat-8.5.54/work/Catalina/localhost
			wait
              cd /APP/tomcat/tomcat0/apache-tomcat-8.5.54/bin/;
            ./startup.sh
			wait
            sleep 5
			rm $ScriptFolder/tomcatRestart.lock
			wait
            echo "[Restarted] - 8080 is Restarted on at $(date) ">>$Log_location
	        echo "============================================= ">>$Log_location
			
	fi

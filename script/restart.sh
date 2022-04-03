#!/bin/sh
# This shell script which is call by cron to make Application Tomcat instance Alive
# version 1.0
#checking Port 8080
  if (( $(netstat -an|grep :8080|wc -l) < 1 ))
  then
  
			cd /APP/tomcat/tomcat0/apache-tomcat-8.5.54/bin;
			wait
            ./shutdown.sh;
			wait
			## clear tomcat cache 
			./clear_cache.sh;
			wait
            ./start_tomcat.sh
			wait
            sleep 10
			rm $ScriptFolder/tomcatRestart.lock
			wait
                 
      cd /home/${EnvUser}/${tomcat};
            	
			echo "${EnvName} [Restarted] - ${port} is Restarted on $HOSTNAME at $(date) ">>$Log_location
			
		    #Send Mail
			MessageBody="\n ${EnvName} AppServer-${AppServer} Hostname:$HOSTNAME Tomcat - ${port} has been restated \n Now  ${port} instance is up and running \n"
            MessageHeader="Acknowledged:${EnvName}: $HOSTNAME - ${port} has been restated. at $(date)" 
			echo -e "$MessageBody" | mailx -s "$MessageHeader" "$USER1"
		    
			
	fi
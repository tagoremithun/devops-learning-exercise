##################### Process Monitoring ##################

ps aux | less  
top
htop     //Interactively monitor the system
atop     // amount of load on the system’s resources at the process level
lsof    // list of open files 
lsof -i  // Established connection
lsof -i TCP:1-1024
lsof -i 4 //ip4 

###Zombie process

ps aux | awk '$8 ~ /^[Zz]/'                //  find zombie process 
ps -A -ostat,pid,ppid | grep -e '[zZ]'    // find process id
kill -9 <parent_process_ID>              // kill the parent process


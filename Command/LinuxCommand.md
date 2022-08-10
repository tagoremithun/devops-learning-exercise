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

############### system performance #############################

nmon   ///Displays local system statistics in interactive mode and records system statistics in recording mode.

Nmon is a fully interactive performance monitoring command-line utility tool for Linux.

nmon  --full form -- Nigel's Monitor

iostat  ///command in Linux is used for monitoring system input/output statistics for devices and partition


# Memory load
sar -r -s 14:30:03 -e 14:52:40 -f /var/log/sa/sa09 | grep Average: | awk '{print $4}'
sar -r -s 14.55:33 -e 15:30:21 -f /var/log/sa/sa09 | grep Average: | awk '{print $4}'
sar -r -s 15:07:52 -e 15:17.18 -f /var/log/sa/sa09 | grep Average: | awk '{print $4}'

# Cpu idle
sar -u -s 14:30:03 -e 14:52:40 -f /var/log/sa/sa09 | grep Average: | awk '{print $8}'
sar -u -s 14.55:33 -e 15:30:21 -f /var/log/sa/sa09 | grep Average: | awk '{print $8}'
sar -u -s 15:07:52 -e 15:17.18 -f /var/log/sa/sa09 | grep Average: | awk '{print $8}'

# R/W
sar -b -s 14:30:03 -e 14:52:40 -f /var/log/sa/sa09 | grep Average: | awk '{print $2}'
sar -b -s 14.55:33 -e 15:30:21 -f /var/log/sa/sa09 | grep Average: | awk '{print $2}'
sar -b -s 15:07:52 -e 15:17.18 -f /var/log/sa/sa09 | grep Average: | awk '{print $2}'

#Load
sar -q -s 14:30:03 -e 14:52:40 -f /var/log/sa/sa09 | grep Average: | awk '{print $6}'
sar -q -s 14.55:33 -e 15:30:21 -f /var/log/sa/sa09 | grep Average: | awk '{print $6}'
sar -q -s 15:07:52 -e 15:17.18 -f /var/log/sa/sa09 | grep Average: | awk '{print $6}'

--------------------------------

vmstat ///command in Linux/Unix is a performance monitoring command 


############### Network Tool #############################

traceroute   //traceroute command in Linux prints the route that a packet takes to reach the host.


mtr        //command is a combination of ping and traceroute commands.

mtr google.com

ping -c 5 www.geeksforgeeks.org

ping -c 5 -q www.geeksforgeeks.org

nmap // With Nmap, server administrators can quickly reveal hosts and services, search for security issues, and scan for open ports.

 ##Several functions can be used to detect firewall settings across the given hosts, but the -sA flag is the most common.

nmap -sA 103.125.252.40 

nmap -sL 103.125.252.40 


netstat -a 


netstat -at  //To list all tcp ports.

netstat -au  // To list all udp ports.

netstat -an | grep ':80'

netstat -l // To list only the listening ports.

netstat -tulpn  
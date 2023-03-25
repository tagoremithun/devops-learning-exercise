##################### Process Monitoring ##################
ps aux | less  
ps aux --sort -rss   

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

-----

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

iwconfig   // wireless connection 

netstat -a 


netstat -at  //To list all tcp ports.

netstat -au  // To list all udp ports.

netstat -an | grep ':80'

netstat -l // To list only the listening ports.

netstat -tulpn  

fuser 5000/tcp

airmon-ng check    // Airmon-ng is used to read all the packets of data even if they are not sent to us. It controls the traffic received only on the wired/wireless networks. 
Check if the router is vulnerable or not.



tcpdump -i eth0  // command-line packets sniffer or package analyzer tool 


tcpdump -D // display all interfaces 

tcpdump -i eth0 port 22 // capture packets for specific port 22


tcpdump -i eth0 src 192.168.0.101 //


tcpdump -i eth0 dst 50.116.66.139



 airodump-ng check    ///Airodump-ng is used for packet capture, capturing raw 802.11 frames.


 Iptables is a Linux command line firewall that allows system administrators to manage incoming and outgoing traffic via a set of configurable table rules.

systemctl start iptables
systemctl stop iptables
systemctl restart iptables


iptables -L -n -v  // check your existing rules,



iptables -A INPUT -s xxx.xxx.xxx.xxx -j DROP   // unusual or abusive activity from an IP address you can block that IP address


iptables -D INPUT -s xxx.xxx.xxx.xxx -j DROP   // no longer want to block requests from specific IP address


host facebook.com

whois 157.240.15.35 

iptables -A OUTPUT -p tcp -d 66.220.144.0/20 -j DROP  // block ip 


iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 25 -j REDIRECT --to-port 2525  // port forwardng 


iptables -A INPUT -p icmp -i eth0 -j DROP   // ping drop


dig      // gather DNS information

dig facebook.com ns  // nameserver info

dig facebook.com mx   // mail server info


##=============================Terminal Multiplexer=========================================

screen

tmux 

##-------------------------------------------------------------

uname -a  //system information

uname  -s //kernel inforamtion

df   // disk free 

du -sh /opt/  // disk usage

history  

#SystemTap—filtering and analyzing system data

#strace is a Linux command-line utility that is a useful and powerful tool to capture, monitor, and troubleshoot the programs in a system.

#Debugging Programs
#Troubleshooting Programs
#Intercept System calls by a process
#Record system calls by a process
#Signals received by a process
#Trace running processes 

touch file{1..10}.txt    // multiple file 

awk {print} file1.txt    //Aho, Weinberger, and Kernighan


sed //Stands for: Stream editor

sed 's/box/bin/' foxinbox.txt   /// replace box with bin 

sed 's/old_string/new_string/g' filename.txt

sed '$d' filename.txt   // delete last line 


grep -i "UNix" geekfile.txt  //  It matches the words like “UNIX”, “Unix”, “unix”.

ps -ef | grep -v "root"     // without root services 

sort file1.txt // sorting by name



###============================other Important command ===========================

swapoff -a && swapon -a  // swap off and on
#Emptying the buffers cache
free && sync && echo 3 > /proc/sys/vm/drop_caches && free
echo 3 > /proc/sys/vm/drop_caches

kill -9 $(ps aux | grep "java" | grep -v 'grep' | awk '{print $2}')  // kill java all process

find /sourcelocation -maxdepth 1 -mtime +15 -exec mv "{}" /destination/ \;

### -----------------------------####


cat /etc/rsyslog.conf   // all logs

hostnamectl  // check the operating system running on virtual or physical

cat /etc/*-release
lscpu


##---------------------- SSH -------------#

ufw status   // uncomplicated firewall
ufw allow ssh 

cat /etc/ssh/sshd_config  //configuration

ssh -p2222 user@server

sftp user@server  // stfp access winSCP

ssh -J  user@server user2@server2 

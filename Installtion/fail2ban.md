
## helped from https://www.liquidweb.com/kb/install-fail2ban-on-centos-7/

# What Is Fail2Ban?
Fail2ban is an open-source software that actively scans the servers log files in real-time for any brute force login attempts, and if found, summarily blocks the attack using the servers firewall software (firewalld or iptables). Fail2Ban runs as a background process and continuously scans the log files for unusual login patterns and security breach attempts.

#installation 

1. yum install epel-release
2. yum install fail2ban fail2ban-systemd


cp -pf /etc/fail2ban/jail.conf /etc/fail2ban/jail.local


vim /etc/fail2ban/jail.local   // add ignoreip- my machine ip

touch /etc/fail2ban/jail.d/sshd.local && chmod +x /etc/fail2ban/jail.d/sshd.local

vim /etc/fail2ban/jail.d/sshd.local


---- add this----------

[sshd]
enabled = true
port = ssh
#action = firewallcmd-ipset
logpath = %(sshd_log)s
maxretry = 5
bantime = 86400

---------------


Ensure that the parameter ‘enabled’ is set to ‘true’.



======Firewall enable==========

systemctl enable firewalld
systemctl start firewalld

------------------
 systemctl enable fail2ban
 systemctl start fail2ban

----------------


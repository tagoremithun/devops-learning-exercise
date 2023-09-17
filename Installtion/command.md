# Java, MySQL, Apache tomcat installtion and configuration for web application 

#Java setup
  1. yum update
  2. yum install java-11-openjdk-devel // for openjdk 11
  3. alternatives --config java  // select java
  4. java --version // java version

 #JAVA_HOME setup
 1. java --version
 2. export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.20.0.8-1.el7_9.x86_64
 3. export PATH=$PATH:$JAVA_HOME 


 


#Apachec server install on centos 

 1. yum update httpd
 2. yum install httpd
 3. firewall-cmd --permanent --add-service=http
 4. firewall-cmd --permanent --add-service=https
 5. firewall-cmd --reload

 #restart services 

 1. systemctl start httpd
 2. systemctl stop httpd
 3. systemctl status httpd


 #PostgreSQL install on centos server

 1. yum install postgresql-server postgresql-contrib
 2. postgresql-setup initdb
 3. systemctl start postgresql  

 5. psql postgres // enter postgre bash 

 6. netstat -plunt |grep postgres //  check service is running or not 

 ######========SSH tunnel ===========

 ssh -L 63333:localhost:5432 postgres@192.168.0.106


#Apache tomcat installation and port configuration



#MySQL installtion and configuration






#Set cron job for AutoBackup MySQL Dump




#Set cron job for Autorestart tomcat instance



#-----------------------Installation and configuration keycloak

# https://mtembo.com/technology/installing-keycloak/



################### Root login Disable ############################## 

vi /etc/ssh/sshd_config

# set PermitRootLogin no

PermitRootLogin no

##### Disable SSH login ###############################


## redirect http to https in apache 80 port to 443 ###

https://www.youtube.com/watch?v=cG_UqXG4kC4

on http.conf /etc/httpd/conf/

ServerName 192.168.0.103:80

   mv /etc/httpd/conf.d/welcome.conf /etc/httpd/conf.d/welcome.conf_original
   80  mv /etc/httpd/conf.d/welcome.conf /etc/httpd/conf.d/welcome.conf_original
   81  cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf_original


install openssl and 

 make server103.key

make server103.csr

 vi /etc/httpd/conf.d/ssl.conf
 
 openssl x509 -in server106.csr -out server106.crt -req -signkey server106.key -days 3650




192.168.0.106
 ======================== set static ip for vm =========================
 1. find out ip using "ip a" command
 2. find out name of ip that show on
 3. Go the location /etc/sysconfig/network-scripts/
 4. create file ifcfg-ip_name and add following code

DEVICE=ens33
BOOTPROTO=static
ONBOOT=yes
IPADDR=192.168.0.103  //want to set
NETMASK=255.255.255.0  // your default mask

set and save
5. restart the netwrok
   systemctl restart network


====================================   


============================python3 install ===========

https://rakeshjain-devops.medium.com/how-to-install-python-3-on-centos-7-7-using-yum-and-source-and-set-as-default-1dee13396f7



systemctl restart sshd



RewriteEngine On 
RewriteCond %{HTTPS} off 
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}
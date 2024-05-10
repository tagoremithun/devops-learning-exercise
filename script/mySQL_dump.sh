#!/usr/bin/bash
#-----------------------------------------------
#MySQL Dump and Directory Backup
#version-1.0
#Mithun Chakrovarty, DevOps Engineer
#----------------------------------------------

BACKUPDIR='/home/basa/backup'
DATE=$(date +%Y-%m-%d.%H:%M)
PASS=$(cat '/home/basa/.credentials')
USER=$(cat '/home/basa/.dbuser')
DBNAME=$(cat '/home/basa/.dbname')
LOG=$BACKUPDIR/logs 

echo "===================Going to Dump MySQL Database===================="
echo "
spawn /bin/bash
send \"mysqldump -u $USER -p $DBNAME\r\"
expect \"Enter password:\"
send \"$PASS\r\"
expect \"$ \"
" | expect > $BACKUPDIR/basa_app_$DATE.sql

echo "===================Dump Successfully===================="

echo "Successfully Dump --> basa_app_$DATE.sql" >>  $LOG/dump_mysql.log

echo "===================Archieving upload directory===================="

cd /
sudo zip -r upload_$DATE.zip upload_directory/

echo "===================Archieving Done===================="

sudo mv upload_$DATE.zip /home/basa/backup/

echo "===================Done===================="

find /home/basa/backup/ -maxdepth 1 -type f -name 'upload*' -mtime +5 -delete

find /home/basa/backup/ -maxdepth 1 -type f -name 'basa_app*' -mtime +5 -delete
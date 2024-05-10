#instal ngnix on ubuntu

sudo apt-get update
sudo apt-get install nginx

sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'


sudo ufw status

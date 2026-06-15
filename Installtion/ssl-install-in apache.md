# SSL install in Ubuntu Apache

# ------------Install apache server----------

sudo apt update

sudo apt install apache2

systemctl status apache2

# --Generating a CSR and Private Key with OpenSSL

sudo mkdir /etc/encryption    // create a directory

sudo openssl req -new -newkey rsa:2048 -nodes -keyout /etc/encryption/server.key -out /etc/encryption/server.csr


service apache2 restart  // 
systemctl restart apache2 


openssl version


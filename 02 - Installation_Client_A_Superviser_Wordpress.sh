# Installation de Wordpress
cd /tmp
wget https://wordpress.org/latest.zip

sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo a2enmod rewrite
sudo a2enmod deflate
sudo a2enmod headers
sudo a2enmod ssl
sudo systemctl restart apache2

sudo apt-get install -y php
sudo apt-get install -y php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath
sudo nano /var/www/html/phpinfo.php
        <?php
        phpinfo();
        ?>

http://adresseipduserveur/phpinfo.php

# Sécuriser la BDD
sudo apt-get install -y mariadb-server
  n
  n
  y
  n
  y
  y

# Configurer la BDD
sudo mariadb -u root -p
CREATE DATABASE BDD01;
CREATE USER 'admin_BDD01'@'localhost' IDENTIFIED BY 'PasLeVraiMotDePasse';
GRANT ALL PRIVILEGES ON mediasante.* TO 'admin_BDD01'@'localhost';
FLUSH PRIVILEGES;
exit;

# Modifications des répertoires
sudo rm /var/www/html/index.html
sudo apt-get update 
sudo apt-get install zip
sudo unzip latest.zip -d /var/www/html
cd /var/www/html
sudo mv wordpress/* /var/www/html/
sudo rm wordpress/ -Rf
sudo chown -R www-data:www-data /var/www/html/

sudo apt install php-mysqli
sudo systemctl restart mariadb
sudo systemctl restart apache2

# Pour accéder à la configuration plus tard
http://adresseipduserveur/wp-config







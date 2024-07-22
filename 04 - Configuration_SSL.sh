
# Configurer HTTPS pour le serveur Nagios comme pour le/les clients à superviser
# Cela permettra de vérifier le fonctionnement des sondes en SSL

# Installation de SSL
sudo a2enmod ssl
sudo service apache2 restart
sudo systemctl reload apache2
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
sudo nano /etc/apache2/sites-available/default-ssl.conf
#Rajouter ceci ->
        SSLCertificateFile      /etc/ssl/certs/apache-selfsigned.crt
        SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key
sudo a2ensite default-ssl
sudo service apache2 reload
sudo systemctl reload apache2
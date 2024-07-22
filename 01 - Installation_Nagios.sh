
# Installation de Nagios
su
apt-get update
apt-get install -y autoconf gcc libc6 make wget unzip apache2 apache2-utils php libgd-dev
apt-get install openssl libssl-dev
cd /tmp
wget -O nagioscore.tar.gz https://github.com/NagiosEnterprises/nagioscore/archive/nagios-4.4.14.tar.gz
tar xzf nagioscore.tar.gz
cd /tmp/nagioscore-nagios-4.4.14/
./configure --with-httpd-conf=/etc/apache2/sites-enabled
make all
make install-groups-users
usermod -a -G nagios www-data
make install
make install-daemoninit
make install-commandmode
make install-config
make install-webconf
a2enmod rewrite
a2enmod cgi
htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin

#----- METTRE ICI SON MOT DE PASSE -----#

systemctl restart apache2.service
sudo systemctl start nagios.service

# Création du répertoire pour mediasante
mkdir /usr/local/nagios/site01

# Modification du fichier de configuration
echo "#Configuration site01 " >> /usr/local/nagios/etc/nagios.cfg 
echo "cfg_dir=/usr/local/nagios/site01" >> /usr/local/nagios/etc/nagios.cfg
# -----Commenter ceci -> #cfg_file=/usr/local/nagios/etc/objects/localhost.cfg



# Installation des plugins Nagios sur le serveur Nagios
# Comme sur les serveurs à superviser
apt-get install -y autoconf gcc libc6 libmcrypt-dev make libssl-dev wget bc gawk dc build-essential snmp libnet-snmp-perl gettext
cd /tmp
wget https://github.com/nagios-plugins/nagios-plugins/releases/download/release-2.4.10/nagios-plugins-2.4.10.tar.gz
tar xzf nagios-plugins-2.4.10.tar.gz
cd nagios-plugins-2.4.10
./configure
make
sudo make install

# Ci-joint d'autres suggestions de plugins utiles -->

# Le plugin check_mem
cd /tmp
wget https://raw.githubusercontent.com/justintime/nagios-plugins/master/check_mem/check_mem.pl -O /usr/local/nagios/libexec/check_mem
chmod +x /usr/local/nagios/libexec/check_mem

# Le plugin check_mysql_health
sudo apt-get update
sudo apt-get install libmariadb-dev-compat libmariadb-dev libdbi-perl libdbd-mysql-perl
cd /tmp
wget https://labs.consol.de/assets/downloads/nagios/check_mysql_health-2.2.2.tar.gz
tar -xzf check_mysql_health-2.2.2.tar.gz
cd check_mysql_health-2.2.2
./configure --prefix=/usr/local/nagios --with-nagios-user=nagios --with-nagios-group=nagios
make
sudo make install
sudo chmod +x /usr/local/nagios/libexec/check_mysql_health

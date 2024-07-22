# Création des hôtes dans le fichier hostgroups.cfg
touch /usr/local/nagios/site01/hostgroups.cfg
nano /usr/local/nagios/site01/hostgroups.cfg

# Configuration de l'hôte Nagios
define hostgroup{ 
       hostgroup_name         site01-servers 
       alias                  site01 servers
       members                site01-server-nagios-01, site01-server-wordpress-01 
}
 
# Création des hôtes dans le fichier hosts.cfg
touch /usr/local/nagios/site01/hosts.cfg
nano /usr/local/nagios/site01/hosts.cfg

# Configuration de l'hôte Nagios
define host{ 
         host_name                  site01-server-nagios-01 
         hostgroups                 site01-servers 
         alias Linux                nagios 
         address                    127.0.0.1 
         check_command              check-host-alive
         check_interval             5 
         retry_interval             1 
         max_check_attempts         5  
         check_period               24x7 
         notification_interval      30 
         notification_period        24x7   
         notification_options       d,u,r 
}   

# Configuration de l'hôte Wordpress
nano /usr/local/nagios/mediasante/hosts.cfg
define host{ 
         host_name                  site01-server-wordpress-01 
         hostgroups                 site01-servers 
         alias Linux                wordpress 
         address                    192.168.195.38
         check_command              check-host-alive
         check_interval             5 
         retry_interval             1 
         max_check_attempts         5  
         check_period               24x7 
         notification_interval      30 
         notification_period        24x7   
         notification_options       d,u,r 
}   




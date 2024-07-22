# Création des services dans le fichier services.cfg
touch /usr/local/nagios/site01/services.cfg
nano /usr/local/nagios/site01/services.cfg

# Configuration des services pour Nagios

define service {
    host_name                       site01-server-nagios-01
    service_description             État RAM
    check_command                   check-ram-localhost
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-nagios-01
    service_description             État processeur
    check_command                   check-cpu-localhost
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-nagios-01
    service_description             État espace disque
    check_command                   check-disk-localhost
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-nagios-01
    service_description             Une seule session utilisateur
    check_command                   check-users-localhost
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-nagios-01
    service_description             HTTP actif
    check_command                   check-http-localhost
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-nagios-01
    service_description             HTTPS actif
    check_command                   check-https-localhost
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-nagios-01
    service_description             Page index active
    check_command                   check-index-page
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

# Configuration des services pour WordPress

define service {
    host_name                       site01-server-wordpress-01
    service_description             État RAM
    check_command                   check-ram-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-wordpress-01
    service_description             État processeur
    check_command                   check-cpu-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-wordpress-01
    service_description             Espace disque
    check_command                   check-disk-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-wordpress-01
    service_description             Une seule session utilisateur
    check_command                   check-users-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-wordpress-01
    service_description             HTTP actif
    check_command                   check-http-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-wordpress-01
    service_description             HTTPS actif
    check_command                   check-https-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-wordpress-01
    service_description             Page index active
    check_command                   check-index-page-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}

define service {
    host_name                       site01-server-wordpress-01
    service_description             MySQL actif
    check_command                   check-mysql-wordpress
    max_check_attempts              3
    check_interval                  5
    retry_interval                  1
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
    notification_options            w,u,c,r
    contact_groups                  Administrateurs-site01
}








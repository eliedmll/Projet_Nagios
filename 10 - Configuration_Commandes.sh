# Création des services dans le fichier commandes.cfg
touch /usr/local/nagios/site01/commandes.cfg
nano /usr/local/nagios/site01/commandes.cfg

# Configuration notifications mail

define command{
   command_name    host-notify-by-email
   command_line    /usr/bin/printf "%b" "***** Nagios *****\n\nNotification Type: $NOTIFICATIONTYPE$\nHost: $HOSTNAME$\>
}

define command{
   command_name    notify-by-email
   command_line    /usr/bin/printf "%b" "***** Nagios *****\n\nNotification Type: $NOTIFICATIONTYPE$\n\nService: $SERVI>
}

# Configuration supervision Nagios

define command {
    command_name check-ram-localhost
    command_line /usr/local/nagios/libexec/check_mem -u -w 70 -c 85
}

define command {
    command_name check-cpu-localhost
    command_line $USER1$/check_load -w 70,60,50 -c 90,80,70
}

define command {
    command_name check-disk-localhost
    command_line $USER1$/check_disk -w 70% -c 80% -p / 
}

define command {
    command_name check-users-localhost
    command_line $USER1$/check_users -w 1 -c 2
}

define command {
    command_name check-http-localhost
    command_line $USER1$/check_http -I 127.0.0.1
}

define command {
    command_name check-https-localhost
    command_line $USER1$/check_http -I 127.0.0.1 -S
}

define command {
    command_name check-index-page
    command_line $USER1$/check_http -I 127.0.0.1 -u /nagios -a nagiosadmin:PasLeVraiMotDePasse
}

# Configuration supervision Wordpress

define command {
    command_name check-ram-wordpress
    command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "$USER1$/check_mem -u -w 70 -c 85"
}

define command {
    command_name check-cpu-wordpress
    command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "$USER1$/check_load -w 70,60,50 -c 90,80,70"
}

define command {
    command_name check-disk-wordpress
    command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "$USER1$/check_disk -w 20% -c 10% -p /"
}

define command {
    command_name check-users-wordpress
    command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "$USER1$/check_users -w 1 -c 2"
}

define command {
    command_name check-http-wordpress
    command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "$USER1$/check_http -I 127.0.0.1"
}

define command {
    command_name check-https-wordpress
    command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "$USER1$/check_http -I 127.0.0.1 -S"
}

define command {
    command_name check-index-page-wordpress
    command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "$USER1$/check_http -I 127.0.0.1 -u / -a admin_BDD01:PasLeVraiMotDePasse"
}

define command {
    command_name check-mysql-wordpress
 command_line /usr/local/nagios/libexec/check_by_ssh -H 192.168.195.38 -l wordpress -i /home/nagios/.ssh/id_rsa -C "/usr/local/nagios/libexec/check_mysql_health --hostname 127.0.0.1 --port 3306 --username admin_BDD01 --password PasLeVraiMotDePasse --mode connection-time --warning 10 --critical 30"
}

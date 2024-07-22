# Création des hôtes dans le fichier hostgroups.cfg
touch /usr/local/nagios/site01/contacts.cfg

define contact{ 
   contact_name                      Administrateur-site01-01
   alias                             Administrateur site01 01
   email                             Administrateur_site01@nagios.com 
   contactgroups                     Administrateurs-site01 
   host_notifications_enabled        1 
   host_notification_period          24x7 
   host_notification_options         d,u,r 
   host_notification_commands        host-notify-by-email 
   service_notifications_enabled     1 
   service_notification_period       24x7 
   service_notification_options      w,u,c,r 
   service_notification_commands     notify-by-email 
}
 
define contactgroup{ 
   contactgroup_name             Administrateurs-site01 
   alias                         Administrateurs site01 
   members                       Administrateur-site01-01
}
Description
Ce projet contient une série de scripts pour l'installation, la configuration et la gestion de Nagios, un outil de supervision.
Les scripts permettent de superviser divers composants tels que des clients (par exemple un serveur Wordpress) via des sondes Nagios.

Structure des fichiers
01 - Installation_Nagios.sh: Script d'installation de Nagios.
02 - Installation_Client_A_Superviser_Wordpress.sh: Installation du client Wordpress à superviser.
03 - Installation_Plugins_Nagios.sh: Installation des plugins Nagios.
04 - Configuration_SSL.sh: Configuration SSL.
05 - Supervision_Agent_via_SSH.sh: Supervision d'agents via SSH.
06 - Configuration_Hostgroups.sh: Configuration des groupes d'hôtes.
07 - Configuration_Hosts.sh: Configuration des hôtes.
08 - Configuration_Services.sh: Configuration des services.
09 - Configuration_Contacts.sh: Configuration des contacts.
10 - Configuration_Commandes.sh: Configuration des commandes.
11 - Commandes_Anomalies.sh: Gestion des anomalies.

Prérequis
Système d'exploitation Linux (Ubuntu/Debian recommandé ou sinon CentOS à adapter)
Accès root ou sudo

Utilisation
Après avoir installé et configuré Nagios, vous pouvez accéder à l'interface web de Nagios pour surveiller vos hôtes et services.

Contributions
Les contributions sont les bienvenues. Veuillez ouvrir une issue pour discuter de ce que vous souhaitez modifier avant de soumettre une pull request.

Auteur
Elie Dmll

Licence
Ce projet est sous licence MIT. Voir le fichier LICENSE pour plus d'informations.

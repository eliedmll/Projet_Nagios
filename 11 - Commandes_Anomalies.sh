                                                                1. Utilisation RAM
# Afficher l'utilisation de la RAM
free -m
# Afficher les processus utilisant le plus de RAM
top -o %MEM
# Identifier les processus gourmands en RAM
ps aux --sort=-%mem | head -n 10
# Stopper un processus gourmand (remplacer <PID> par l'identifiant du processus)
sudo kill <PID>
# Optimiser ou redemarrer les services si necessaire
sudo systemctl restart <nom_du_service>

                                                                2. Utilisation CPU 
# Afficher les charges CPU actuelles
uptime
# Afficher les processus utilisant le plus de CPU
top -o %CPU
# Identifier les processus gourmands en CPU
ps aux --sort=-%cpu | head -n 10
# Stopper un processus gourmand (remplacer <PID> par l'identifiant du processus)
sudo kill <PID>
# Optimiser ou redemarrer les services si necessaire
sudo systemctl restart <nom_du_service>

                                                                3. Espace Disque
# Afficher l'espace disque utilisé et disponible
df -h
# Afficher l'utilisation de l'espace disque par répertoire
du -sh /* | sort -h
# Supprimer des fichiers inutiles (remplacer <chemin> par le chemin des fichiers à supprimer)
sudo rm -rf <chemin>
# Nettoyer les fichiers temporaires
sudo apt-get clean       # pour les distributions basées sur Debian/Ubuntu

                                                                4. Utilisateurs
# Afficher les utilisateurs connectés
who
# Afficher les sessions des utilisateurs
w
# Déconnecter un utilisateur (remplacer <PID> par l'identifiant du processus de la session)
sudo pkill -KILL -t <TTY>
# Si nécessaire, configurer les politiques de session
sudo chage -E 0 <utilisateur>

                                                                5. HTTP / HTTPS
# Vérifier le statut du serveur HTTP
sudo systemctl status apache2   
# Redémarrer le serveur HTTP
sudo systemctl restart apache2   
# Vérifier la configuration du serveur HTTP
sudo apachectl configtest      
# Vérifier les logs pour des erreurs
tail -f /var/log/apache2/error.log    

                                                                6. Page Index 
# Tester la connexion HTTP avec les informations d identification
curl -u nagiosadmin:PasLeVraiMotDePasse http://127.0.0.1/nagios
# Vérifier les permissions du répertoire et des fichiers
ls -l /var/www/html/nagios
# Corriger les permissions si nécessaire
sudo chown -R www-data:www-data /var/www/html/nagios
sudo chmod -R 755 /var/www/html/nagios
# Vérifier les logs pour des erreurs de connexion
tail -f /var/log/apache2/access.log    

                                                                7. Problème de connexion MySQL
# Vérifier le statut du serveur MySQL
sudo systemctl status mysql    # pour les distributions utilisant MySQL
# Redémarrer le serveur MySQL si nécessaire
sudo systemctl restart mysql    # pour les distributions utilisant MySQL
# Tester la connexion MySQL
mysqladmin -h 127.0.0.1 -u admin_BDD01 -p'PasLeVraiMotDePasse' ping
# Vérifier les utilisateurs MySQL et leurs permissions
mysql -u root -p
# Puis, dans le shell MySQL
SELECT user, host FROM mysql.user;
SHOW GRANTS FOR 'admin_BDD01'@'127.0.0.1';
# Vérifier les logs MySQL pour des erreurs
tail -f /var/log/mysql/error.log

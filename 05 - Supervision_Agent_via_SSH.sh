# Vérifier l'existence du plugin check_by_ssh à la fois côté serveur commet client
# Configuration de SSH vers un serveur à superviser
ssh-keygen -t rsa
ssh-copy-id serveur01@192.168.195.38
ssh serveur01@192.168.195.38

# Bien vérifier l'existence des paquets openssh-server et openssh-client 
# Pour les clients à superviser sur CentOS adapter les commandes



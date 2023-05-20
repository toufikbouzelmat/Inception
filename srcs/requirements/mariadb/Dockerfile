FROM debian:buster
#installation du systeme d'exploitation
RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server
#puis installer mariadb-server 
COPY ./tools/db.sql  /etc/
# ici copier du fichier sql sur le container au dossier etc
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d
# ici copier le fichier de configuration qui etait deja modifier juste binder address 127.0.0.0 = 0.0.0.0 au dossier qu'il a deja la config originale 

EXPOSE 3306
RUN service mysql start && mysql < /etc/db.sql && rm -f /etc/db.sql
#ici il y'a trois chose demarrer le service mysql puis lancer le script sql et apres le supprimer

CMD [ "/usr/bin/mysqld_safe" ]

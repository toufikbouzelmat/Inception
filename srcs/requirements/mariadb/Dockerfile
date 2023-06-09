FROM debian:buster
#installation du systeme d'exploitation
RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server
#puis installer mariadb-server 

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d
# ici copier le fichier de configuration qui etait deja modifier juste binder address 127.0.0.0 = 0.0.0.0 au dossier qu'il a deja la config originale 

EXPOSE 3306
COPY ./tools/script.sh /etc

RUN chmod 777 etc/script.sh

CMD etc/script.sh


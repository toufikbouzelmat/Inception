FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server

COPY ./tools/db.sql  /etc/
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d


EXPOSE 3306
RUN service mysql start && mysql < /etc/db.sql && rm -f /etc/db.sql

CMD [ "/usr/bin/mysqld_safe" ]

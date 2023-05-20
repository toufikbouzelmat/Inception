FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server

# ENV MYSQL_DATABASE=wp_db
# ENV  MYSQL_ROOT_PASSWORD="1234"

# COPY my_mariadb.conf /etc
COPY tools/script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

EXPOSE 3306

CMD [ "./usr/local/bin/script.sh" ]

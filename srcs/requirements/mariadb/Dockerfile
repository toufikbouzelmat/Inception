FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server

ENV  MYSQL_ROOT_PASSWORD="1234"

# COPY my_mariadb.conf /etc
COPY tools/script.sh .

RUN chmod +x script.sh

EXPOSE 3306

CMD [ "./script.sh" ]
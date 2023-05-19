FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server

EXPOSE 3306
# COPY my_mariadb.conf /etc
COPY tools/script.sh .

RUN chmod +x script.sh

CMD [ "./script.sh" ]
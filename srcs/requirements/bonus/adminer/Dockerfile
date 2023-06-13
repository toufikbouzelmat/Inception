FROM debian:buster

RUN apt-get update && apt-get install -y  php php-mysql wget


COPY conf/script.sh /etc

RUN chmod 777 /etc/script.sh

RUN /etc/script.sh

WORKDIR /adminer

CMD ["php", "-S", "0.0.0.0:9090", "index.php"]
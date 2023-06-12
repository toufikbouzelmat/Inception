FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y php php-mysql wget

COPY tools/script.sh /tmp/
RUN chmod +x /tmp/script.sh
RUN /tmp/script.sh

# WORKDIR /adminer

CMD [ "php", "-S", "0.0.0.0:9090", "index.php" ]
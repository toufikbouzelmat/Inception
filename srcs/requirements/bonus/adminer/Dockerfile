FROM debian:buster


RUN apt-get update && apt-get upgrade -y && apt-get install php php-mysql wget

RUN mkdir /adminer && wget "https://github.com/vrana/adminer/relases/download/v4.8.1/adminer-4.8.1-en.php" -O /adminer/index.php

WORKDIR /adminer

CMD [ "php", "-S", "0.0.0.0:9090", "index.php" ]
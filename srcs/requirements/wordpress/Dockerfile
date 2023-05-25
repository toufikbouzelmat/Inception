FROM debian:buster

RUN apt update
RUN apt install -y php7.3 php-mysqli php7.3-fpm curl sendmail

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/script.sh /var/www/
COPY ./tools/wp-config.php /var/www/

CMD ["bash", "/var/www/script.sh"]
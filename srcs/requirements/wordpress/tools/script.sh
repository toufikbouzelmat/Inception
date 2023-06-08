#!/bin/bash


cd "/var/www/"
mkdir -p "html/wordpress"
chmod -R 775 /var/www/html/wordpress;
chown -R www-data /var/www/html/wordpress;
mkdir -p /run/php/;

cp /var/www/wp-config.php /var/www/html/wordpress/;
chmod 644 /var/www/html/wordpress/wp-config.php;
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp;
cd /var/www/html/wordpress;

sed -i -r "s/data/$MYSQL_DATABASE/1"   wp-config.php
sed -i -r "s/user/$MYSQL_USER/1"   wp-config.php
sed -i -r "s/mdp/$MYSQL_PASSWORD/1"   wp-config.php

wp core download --allow-root;

wp core install --allow-root --url=${DOMAINE_NAME} --title=${WORDPRESS_DB_NAME} --admin_user=${MYSQL_USER} --admin_password=${MYSQL_PASSWORD} --admin_email=${WORDPRESS_DB_USER} --skip-email;



wp user create $NW_USER $EMAIL_USER --user_pass=$PASS_USER --role=author --allow-root;


wp theme install kadence --activate --allow-root



echo "Wordpress: set up!"

echo "Wordpress started on :9000"

/usr/sbin/php-fpm7.3 -F


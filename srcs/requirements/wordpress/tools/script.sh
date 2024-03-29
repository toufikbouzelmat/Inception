#!/bin/bash


cd "/var/www/"


sed -i -r "s/database_name_here/${MYSQL_DATABASE}/g"   wp-config.php
sed -i -r "s/username_here/${MYSQL_USER}/g"   wp-config.php
sed -i -r "s/password_here/${MYSQL_PASSWORD}/g"   wp-config.php
sed -i -r "s/localhost/${WORDPRESS_DB_HOST}/g"   wp-config.php



mkdir -p "html/wordpress"
chmod -R 775 /var/www/html/wordpress;
chown -R www-data /var/www/html/wordpress;
mkdir -p /run/php/;

cp /var/www/wp-config.php /var/www/html/wordpress/;
chmod 777 /var/www/html/wordpress/wp-config.php;
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp;
cd /var/www/html/wordpress;


wp core download --allow-root;


wp core install --allow-root --url=${DOMAINE_NAME} --title="website" --admin_user=${MYSQL_USER} --admin_password=${MYSQL_PASSWORD} --admin_email=${WORDPRESS_DB_EMAIL} --skip-email;



wp user create $NW_USER $EMAIL_USER --user_pass=$PASS_USER --role=author --allow-root;


wp theme install kadence --activate --allow-root



echo "Wordpress: set up!"

echo "Wordpress started on :9000"

/usr/sbin/php-fpm7.3 -F


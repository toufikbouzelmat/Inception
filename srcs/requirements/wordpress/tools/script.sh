#!/bin/bash


cd "/var/www/"
mkdir -p "html/wordpress"
chmod -R 775 /var/www/html/wordpress;
chown -R www-data /var/www/html/wordpress;
mkdir -p /run/php/;
# touch /run/php/php7.3-fpm;
mv /var/www/wp-config.php /var/www/html/wordpress/;

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp;
cd /var/www/html/wordpress;

wp core download --allow-root;

wp core install --allow-root --url=${DOMAINE_NAME} --title=${WORDPRESS_DB_NAME} --admin_user=${WORDPRESS_ROOT} --admin_password=${MYSQL_ROOT_PASSWORD} --admin_email=${WORDPRESS_DB_EMAIL};

wp user create ${MYSQL_USER} ${WORDPRESS_DB_EMAIL} --user_pass=${MYSQL_PASSWORD} --role=author --allow-root;

wp theme install inspiro --activate --allow-root

echo "Wordpress: set up!"

echo "Wordpress started on :9000"
/usr/sbin/php-fpm7.3 -F


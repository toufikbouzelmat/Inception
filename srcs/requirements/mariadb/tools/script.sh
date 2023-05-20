#!/bin/bash


echo "il est entreeeer"

service mysql start

echo "start mysql"
#mysql command [mysql -u root -p] pour l'instant j'ai pas besoin de cette command (root ou password)

# source ""

# export MYSQL_ROOT_PASSWORD=1234
# export MYSQL_DATABASE=wp_db
# export MYSQL_USER=wp_user
# export MYSQL_PASSWORD=1234

echo "$MYSQL_DATABASE"

mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

# mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABSE.* TO '$MYSQL_USER'@'localhost' WITH GRANT OPTION;"
mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" 

mysql -e "flush privileges;"

# kill $(cat /var/run/mysqld/mysqld.pid)

mysql -e "show databases;"
# service mysql stop

# sleep 10000

# kill $(cat /var/run/mysqld/mysqld.pid) 
mysqld


#!/bin/bash


echo "il est entreeeer"

service mysql start

echo "start mysql"
#mysql command [mysql -u root -p] pour l'instant j'ai pas besoin de cette command (root ou password)

# mysql -e "CREATE DATABASE $MYSQL_DATABASE;"
mysql -e "CREATE DATABASE "wp";"
# mysql -e "create users '$MYSQL_USER'@'localhost' identifed by '$MYSQL_PASSWORD';"
mysql -e "CREATE USER 'toufiq'@'localhost' IDENTIFIED BY 'PASSWORD';"

#GRANT ALL PRIVILEGES ON test TO 'sammy'@'localhost' WITH GRANT OPTION;
mysql -e "GRANT ALL PRIVILEGES ON wp.* TO 'toufiq'@'localhost' WITH GRANT OPTION;"

mysql -e "flush privileges;"

# service mysql stop
# kill $(cat /var/run/mysqld/mysqld.pid)

# sleep 100
mysql -e"show databases;"


kill $(cat /var/run/mysqld/mysqld.pid) 
mysqld


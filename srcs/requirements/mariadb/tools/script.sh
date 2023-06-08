#!/bin/bash

# service mysql start;
# mysql < /etc/db.sql;

# sleep 9999999999

service mysql start;

# # Waits for the MariaDB service to start
sleep 5;

# Creates a database and a user
mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

# kill -9 `cat /run/mysqld/mysqld.pid`
# # Stop the MariaDB service
mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown;

# Runs the mysqld_safe process to start the MariaDB server securely
exec mysqld_safe

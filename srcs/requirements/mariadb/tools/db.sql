CREATE DATABASE wordpress;
CREATE USER 'tf'@'%' IDENTIFIED BY '123123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'tf'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root123123';
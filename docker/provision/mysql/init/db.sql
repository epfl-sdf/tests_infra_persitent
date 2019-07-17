# create databases
CREATE DATABASE IF NOT EXISTS `db_wp1`;
CREATE DATABASE IF NOT EXISTS `db_wp2`;

# create root user and grant rights
CREATE USER 'root'@'localhost' IDENTIFIED BY 'local';
GRANT ALL ON *.* TO 'root'@'%';

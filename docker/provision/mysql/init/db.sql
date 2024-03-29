#zf190718.1055

# create databases
CREATE DATABASE IF NOT EXISTS `db1`;
CREATE DATABASE IF NOT EXISTS `db_wp1`;
CREATE DATABASE IF NOT EXISTS `db_wp2`;

# create root user and grant rights
CREATE USER 'root'@'127.0.0.1' IDENTIFIED BY 'local';
GRANT ALL ON *.* TO 'root'@'%';

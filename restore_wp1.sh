#!/bin/bash
#Petit script pour restaurer le site wp1
#zf190718.1512

#restore les fichiers
sudo rm -R ./nfs_share/wp/wp1/*
sudo rm ./nfs_share/wp/wp1/.htaccess
cd ./nfs_share/wp/wp1
sudo unzip /keybase/team/epfl_wwp_blue/ec/xfer/backupwp/2019-07-18_12-59-59_ZWKQ3NGL01.zip

sudo chown -R www-data.www-data *
sudo chown  www-data.www-data .htaccess


#restaure la db
mysql -u root --password=root! -h 127.0.0.1 -e "DROP DATABASE db_wp1;"
mysql -u root --password=root! -h 127.0.0.1 -e "CREATE DATABASE db_wp1;"
mysql -u root --password=root! -h 127.0.0.1 db_wp1 < db_wp1.sql 



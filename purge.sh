#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf190712.1157

docker-compose down -v --remove-orphans
sudo rm -rf ./db_data
sudo rm -rf ./nfs_share

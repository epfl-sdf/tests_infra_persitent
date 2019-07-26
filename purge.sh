#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf190718.1021

sudo umount -f ./nas_share
docker-compose down -v --remove-orphans
#sudo rm -rf ./db_data
sudo rm -rf ./nfs_share
sudo rm -rf ./nas_share

#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf190718.0921

docker-compose down -v --remove-orphans
sudo umount -f ./nas_share
sudo rm -rf ./db_data
sudo rm -rf ./nfs_share
sudo rm -rf ./nas_share

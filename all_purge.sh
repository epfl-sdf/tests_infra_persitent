#!/bin/bash
#Petit script pour nettoyer tout le binz
#ATTENTION, cela purge VRAIMENT tout le binz de Docker !
#zf190712.1156

./list.sh
read -p "Etes-vous certain de vouloir tout effacer ?"
read -p "Mais cela va VRAIMENT VRAIMENT tout effacer!"

docker container rm -f -v $(docker container ls -a -q)
docker image rm -f $(docker image ls -a -q)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)

sudo rm -rf ./db_data
sudo rm -rf ./nfs_share



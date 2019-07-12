# tests_infra_persitent
Petite infra de test pour avoir un NAS et une DB Mysql (MariaDB) persistants pour des tests Minishift

Le serveur MySQL fonctionne, reste à faire le serveur NAS !

## Installation
### MySQL server
Il n'y a rien à installer pour le serveur MySQL du moment que l'on a un docker et un docker-compose d'installé !

Pour l'installation de Docker on peut exécuter le install.sh de ce dépôt:

https://github.com/zuzu59/docker_demo

### MySQL client
Si on veut tester le serveur MySQL sur la machine du host du container Docker il faut installer un client MySQL !

```
sudo apt update
sudo install -y sql-client
```


## Démarrage
Simplement faire:

```
./start.sh
```


## Tests du serveur MySQL
On peut déjà voir s'il y a bien un *port* 3306 qui est ouvert sur le host avec:

```
netstat -nat |grep LIST
```

Simplement faire:

```
mysql -u root -p -h 127.0.0.1
```

password: root!

puis:

```
show databases;
```

CTRL-D pour sortir !






zf190712.1127

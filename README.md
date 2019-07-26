# tests_infra_persitent
Petite infra de test pour avoir un NAS et 3 DB Mysql  persistants pour des tests Minishift (1x OpenProject, 2x WordPress)

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

### NAS server
Comme pour MySQL, il n'y a rien à installer sauf le docker et le docker-compose


### NAS client
Si on veut tester le serveur NAS sur la machine du host du container Docker il faut installer un client NFS !

```
sudo apt update
sudo apt install -y nfs-common
mkdir nas_share
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

password:
```
root!
```

puis:

```
show databases;
```

CTRL-D pour sortir !



## Tests du serveur NAS
On peut déjà voir s'il y a bien un *port* 2049 qui est ouvert sur le host avec:

```
netstat -nat |grep LIST
```

Simplement faire:

```
sudo mount 127.0.0.1:/ ./nas_share
```

Tout ce que l'on va écrire dans ./nas_share va se retrouver automatiquement dans ./nfs_share !

ATTENTION : on ne peut pas scale up le container nas à plus que 1 à cause du champ container_name introduit afin de faciliter la commande `docker exec ...` dans wp-ops.


zf190718.0904
cp190717.1742

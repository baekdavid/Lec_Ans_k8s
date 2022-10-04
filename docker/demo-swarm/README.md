# Démo docker swarm

## Prérequis
Créer un cluster, avec minimim 2 noeuds (nodes) : 1 leader et 1 worker par les commandes:
```bash
docker swarm init chez le leader
docker swarm join chez le worker
```

## Déployer des conteneurs sur le cluser
```bash
    docker node ls # liste des noeuds du cluster
    docker stack deploy --compose-file docker-compose.yaml demostack # déploie une pile se services
    docker stack ls # affiche les piles de service
    docker service ls # afficher les services et nombre de replicas associés
    docker stack ps demostack # affiche les conteneurs avec leur emplacement
    docker stack rm demostack # suppression de la stack, services et conteneurs associés
```
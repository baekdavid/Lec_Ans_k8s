```bash
## create Dockerfile in app folder root
docker build -t your_docker_username/exo3 .
docker run -d -p 3000:80 your_docker_username/exo3
docker stop $(docker ps -a -q)

## minikube start
kubectl create namespace exo3
kubectl config set-context --current --namespace=exo3
## create docker-compose.yml
kubectl apply -f docker-compose.yaml
kubectl get deployment -w

## create manifeste-k8s-exo3.yml
kubectl apply -f mainfeste-k8s-exo3.yaml
kubectl get services -w
http://your_minikube_ip:31000
minikube ip
kubectl scale deployment exo3 --replicas=10
kubectl get deployment -w
kubectl scale deployment exo3 --replicas=3
```

## Objectif
Déployer dans un cluster Kubernetes l'application Flask (python) dont le code source est situé dans le dossier src.  
Il s'agit d'une application web liée une base de données relationnelle.  
Nous utiliserons un serveur de base de données mariadb, version 10.  

Vous devrez:
- Ecrire le **Dockerfile** permettant de dockeriser l'application flask.
- Ecrire le **docker-compose.yaml** permettant de démarrer l'application avec deux services: un service web et un service mariadb.
docker-compose 
- Publier l'image vers votre compte docker.
- Ecrire un **manifeste k8s exo3.yaml** permettant de déployer l'application en cluster.

## Tâches obligatoires
- L'application web (flask) devra être aisément "scalable".
- *L'application mariadb ne sera pas sujette à redimensionnement horizontal. Elle donc peut se présenter comme un simple Pod.
-*L'application web et l'application mariadb ne communiqueront qu'en interne au cluster.
- *L'application web sera la seule à pouvoir recevoir des requêtes depuis l'extérieur du cluster.
- *L'application mariadb sera liée à un volume persistant.
- *Imposer des limites (valeurs au choix) de ressources pour les différents conteneurs.
- *Placer toutes les ressources "namespacables" dans un namespace nommé **exo3**.

## Tache facultative
*Associer un redimensionnement automatique à l'application web lui permettant de monter jusqu'à 8 pods lorsque l'utilisation moyenne des ressources cpu atteint 70%.

## Livrables et deadline
- fichier Dockerfile
- fichier docker-compose.yaml
- fichier kubernetes (manifeste)

Les livrables devront être placés sur un **dépôt github** dont vous me communiquerez l'url
avant le **vendredi 21 octobre 2022**.

## Astuces
Commandes pour importer la base de données **students** dans votre serveur de base de données:
```bash
## Pour un conteneur docker
# copie le fichier students.sql dans le dossier /tmp du conteneur
docker cp students.sql container_name:/tmp 
# import de la base
docker exec -it container_name mysql < /tmp/students.sql -p # saisir le mot de passe root (juve)

## Pour un pod k8s
# copie le fichier students.sql dans le dossier /tmp du conteneur "podifié"
kubectl -n exo3 cp students.sql pod_name:/tmp
# import de la base
kubectl -n exo3 exec -it po/pod_name -- sh -c 'mysql < /tmp/students.sql -p' # # saisir le mot de passe root (juve)
```

## Captures d'écran (dossier captures)
- captures/capture1.png: page d'accueil de l'application web deployée
- captures/capture2.png: page /students de l'application web deployée
- captures/capture3.png: dashboard kubernetes, pods du namespace exo3

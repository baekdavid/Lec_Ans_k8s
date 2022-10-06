# Module Kubernetes

## Installation
- [Démarrer avec minikube](https://minikube.sigs.k8s.io/docs/start/)
- [Installer kubectl](https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/)

- [Installation de la vm minikube - vidéo](https://opusidea-training.s3.eu-west-3.amazonaws.com/divers/demo/2022-10-04-install-minikube-vm.webm)
- [Installation du client kubectl - vidéo](https://opusidea-training.s3.eu-west-3.amazonaws.com/divers/demo/2022-10-04-install-kubectl.webm)

# Commandes minikube
```bash
minikube start --driver=virtualbox --no-vtx-check
minikube status
minikube ssh
minikube stop
minikube delete
minikube addons list
minikube addons enable dashboard
minikube addons enable metrics-server
```
# Demo volume docker

## volume host (local)
```bash
# se placer dans le dossier demo-volume
docker run --name apache -d -p 8000:80 -v "$PWD/htdocs":/usr/local/apache2/htdocs httpd:2.4-alpine

# ouvrir un shell sur le conteneur
docker exec -it apache sh
```

## volume nommé

```bash
docker run --name apache -d -p 8000:80 -v juve:/usr/local/apache2/htdocs httpd:2.4-alpine

# vérifier que ce volume nommé apparaît dans la liste des volumes
docker volume ls

# supprimer le volume (à condition qu'il ne soit pas utilisé par un conteneur)
docker volume rm juve
```
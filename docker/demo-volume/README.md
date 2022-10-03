# Demo volume docker

## volume local
```bash
# se placer dans le dossier demo-volume
docker run --name apache -d -p 8000:80 -v "$PWD/htdocs":/usr/local/apache2/htdocs httpd:2.4-alpine
````
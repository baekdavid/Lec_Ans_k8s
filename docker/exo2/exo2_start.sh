#/bin/bash
echo "==== lancement de 2 conteneurs redis ==="
docker run --name redis1 -d redis:6.0-alpine
docker run --name redis2 -d redis:5.0-alpine

echo "==== lancement de 2 conteneurs mysql ==="
docker run --name sql1 -d -e MYSQL_ROOT_PASSWORD=demo mysql:8
docker run --name sql2 -d -e MYSQL_ROOT_PASSWORD=demo mysql:5.7
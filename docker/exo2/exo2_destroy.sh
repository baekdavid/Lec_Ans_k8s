#/bin/bash
echo "==== arrêt des conteneurs redis et mysql ==="
docker stop redis1 redis2
docker stop sql1 sql2

echo "==== suppresion des conteneurs redis et mysql ==="
docker rm redis1 redis2
docker rm sql1 sql2
#!/bin/bash
IMAGE=capge/simplepy:1.0.1

echo "========== Lancement des conteneurs demo1 demo2 demo3 ==============="
docker run --name demo1 -d -e SLEEP_DURATION=10 $IMAGE
docker run --name demo2 -d -e SLEEP_DURATION=30 $IMAGE
docker run --name demo3 -d -e SLEEP_DURATION=60 $IMAGE
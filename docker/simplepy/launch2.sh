#!/bin/bash
IMAGE=capge/simplepy:1.0.1

echo "========== Lancement des conteneurs simplepy ==============="
for i in {1..10}; do
    duration=$((10*i))
    docker run --name demo$i -d -e SLEEP_DURATION=$duration $IMAGE
done
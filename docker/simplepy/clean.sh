#!/bin/bash
echo "========== Arrêt des conteneurs demo1 demo2 demo3 ==============="
docker stop demo1 demo2 demo3

echo "========== Suppression des conteneurs demo1 demo2 demo3 ========="
docker rm demo1 demo2 demo3


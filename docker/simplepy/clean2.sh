#!/bin/bash
echo "=== Suppression forcée des conteneurs simplepy ==="

for i in {1..10}; do
    docker rm --force demo$i
done


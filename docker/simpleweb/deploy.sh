#!/bin/bash
echo "=== create demo sub-network ==="
docker network create demo

echo "=== run redis instance ==="
docker run --name redis -d --network demo redis:5.0-alpine

echo "=== run simpleweb instance ==="
docker run --name simpleweb -d --network demo -p 3000:3000 capge/simpleweb:1.0.1
#!/bin/bash
echo "=== remove simpleweb and redis instances ==="
docker rm --force simpleweb redis

echo "=== remove demo network ==="
docker network rm demo
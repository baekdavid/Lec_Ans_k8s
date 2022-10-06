# Exo 2

```bash
docker build . -t opusidea/capge-k8s-exo2:1.0.0

# s'identifier auprès du docker hub (docker login)
docker push opusidea/capge-k8s-exo2:1.0.0

# tester localement
docker run --rm -d -p 3000:3000 opusidea/capge-k8s-exo2:1.0.0
```
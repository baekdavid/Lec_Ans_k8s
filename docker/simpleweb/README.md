# simpleweb

```bash
docker build . -t capge/simpleweb:1.0.0
docker run --name simpleweb -d -p 3000:3000 capge/simpleweb:1.0.0
curl localhost:3000
```
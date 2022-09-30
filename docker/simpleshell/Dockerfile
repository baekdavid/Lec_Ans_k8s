# pour construitre cette image:
# docker build . -t capge/simpleshell

# pour instancier cette image
# docker run --name simpleshell capge/simpleshell

# point de départ: os de base
FROM debian:11-slim

WORKDIR /app

# copie le fichier app.sh dans /app
COPY app.sh .

# rend le fichier exécutable
RUN chmod +x app.sh

# commande de démarrage
CMD ["/bin/bash", "app.sh"]


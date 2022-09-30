import time
import os

# durée de la sieste par défaut (en secondes)
duration = 5

# si la variable d'environnemt est definie
# on écrase la valeur par défaut de duration
if "SLEEP_DURATION" in os.environ:
    duration = int(os.environ["SLEEP_DURATION"])

while True:
    print("Simple script python en boucle infinie...")
    time.sleep(duration)
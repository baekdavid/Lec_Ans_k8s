const express = require('express'); // import du framework web express
const redis = require('redis'); // import du client redis
const app = express(); // instanciation d'une app express
const port = 3000;

// middleware
// fonction exposant le dossier public au client
app.use(express.static('public'));

// routes (endpoints)
app.get('/', (req, res) => {
    // callback function
    res.send("coucou");
})

/*
ce endpoint se connecte à un serveur redis pour
obtenir le nombre de visites
*/
app.get('/visit', (req, res) => {
    // connexion au serveur redis via un client
    // connecxtion par résolution dns ("redis" => ip ?)
    const rediscli = redis.createClient({
        host: 'redis',
        port: 6379
    });

    let visits = 0;

    rediscli.get('visit', (err, counter) => {

        if (counter) {
            visits = parseInt(counter) + 1; // conversion + incrémentation du compteur
        } else {
            visits = 1; // première visite
        }

        // update sur le serveur redis
        rediscli.set('visit', visits);

        // réponse (au format json) au client http
        res.json({ visits })
    })

})

app.get('/help', (req, res) => {
    res.send("aiutoooooooooooooo !");
})

app.get('/crash', (req, res) => {
    process.exit(1); // le processus serveur s'arrête en retournant 1 (erreur)
})

app.listen(port, () => {
    console.log('Server running on port: ' + port)
}); // serveur http écoutant le port choisi
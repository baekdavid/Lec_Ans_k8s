const express = require('express'); // import du framework web express
const app = express(); // instanciation d'une app express
const port = 3000;

// routes (endpoints)
app.get('/', (req, res) => {
    // callback function
    res.send("coucou");
})

app.listen(port); // serveur http écoutant le port choisi
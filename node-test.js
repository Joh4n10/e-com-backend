const express = require('express')
const app = express()
const cors = require('cors')
const hostname = '127.0.0.1';
const port = 4000;
const UrbanTicketsController = require('./Controllers/urban-tickets.controller');
const InterUrbanTicketsController = require('./Controllers/inter-urban.controller');

app.get('/', cors(), (req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hello World\n');
});

app.get('/home', cors(), (req, res) => {
    urban = new UrbanTicketsController();
    urban.getTicketPrice(req.query).then(response => {
        res.statusCode = 200;
        res.setHeader('Content-Type', 'text/json');
        res.json(response)
        res.end();
    },
        (error) => {
            res.statusCode = 500;
            res.setHeader('Content-Type', 'text/json');
            res.json(error);
            console.error(error)
            res.end();
        })

});
app.get('/inter-urban', cors(), (req, res) => {
    InterUrban = new InterUrbanTicketsController();
    InterUrban.getTransportOptions(req.query).then(response => {
        res.statusCode = 200;
        res.setHeader('Content-Type', 'text/json');
        res.json(response)
        res.end();
    },
        (error) => {
            res.statusCode = 500;
            res.setHeader('Content-Type', 'text/json');
            res.json(error);
            console.error(error)
            res.end();
        })

});

app.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});
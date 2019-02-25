'use strict';

const express = require('express');
const path = require('path');
const PORT = 8080;
const HOST = '0.0.0.0';

const app = express();
app.use(express.static('views'));
app.use(express.static('controller'));

app.get('/', (req, res) =>
{
	res.render('index');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);

const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('HealthConnect API est te dit bonjour !');
});

app.listen(port, () => {
  console.log(`HealthConnect API listening at http://localhost:${port}`);
});

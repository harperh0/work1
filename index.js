const config = require('./config_local');
const mysql = require('mysql');
const cors = require('cors');
const con = mysql.createConnection(config.sql);
const express = require('express');
const app = express();
const port = 5000;

// give access to the public directory, this is where images and JS libs can go...
app.use(express.static('public'))

//setting view engine to ejs
app.set("view engine", "ejs");

app.get('/', (req, res) => {
  res.render('home.ejs');
});

app.get('/rents', (req, res) => {
  res.render('rental_market.ejs');
});

//route for ideas page
app.get("/ideas", function (req, res) {
  const statement = "SELECT * FROM ideas\
                            ORDER BY RAND()\
                            LIMIT 1;"

  con.query(statement, (err, result) => {
    if (err) throw err;
    res.render("ideas", {
      ideas: result[0]
    });
  });
});

app.get('/about', (req, res) => {
  res.render('about.ejs');
});

app.listen(5000, function () {
  console.log("Server is running on port 5000 ");
  con.connect(function(err) {
    if (err) throw err;
    console.log("Connected to database",config.sql.database,"on host",config.sql.host);
  });
});
// app.listen(port, () => {
//   console.log(`Web app listening on port ${port}`);
//   con.connect(function(err) {
//     if (err) throw err;
//     console.log("Connected to database",config.sql.database,"on host",config.sql.host);});
// });

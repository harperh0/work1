const mysql = require('mysql');
const config = require('./config');

const con = mysql.createConnection(config.sql);

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");

  var sql = "SELECT * FROM Borough";

  con.query(sql, function (err, result) {
    if (err) throw err;

    console.log(result);

    con.end(function(err) {
      console.log("London rents");
    });
  });
});

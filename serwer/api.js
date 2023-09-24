const express = require("express");
const cors = require("cors");
const mysql = require("mysql");
const port = 3001;
const app = express();

app.use(cors());

var conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "kraje",
});

conn.connect((err) => {
  if (err) console.log(err);
  else console.log("połączono z bazą");
});

app.get("/", function (req, res) {
  res.send("ok");
  console.log("zapytanie");
});

app.get("/kontynent/:kontynent", function (req, res) {
  var kontynent = req.params.kontynent;
  const sql =
    "SELECT nazwa, populacja, kontynent, stolica, powierzchnia FROM panstwo WHERE kontynent = ?";
  conn.query(sql, [kontynent], (err, results, fields) => {
    if (err) {
      console.error(err);
      res.status(500).send("Błąd bazy danych");
      return;
    }
    console.log(results);
    // Wysłać wyniki jako odpowiedź na żądanie HTTP.
    res.json(results);
  });
});

app.get("/populacja/:populacja", function (req, res) {
  var populacja = parseInt(req.params.populacja);
  const sql =
    "SELECT nazwa, populacja, kontynent, stolica, powierzchnia FROM panstwo WHERE populacja >=  ?";
  conn.query(sql, [populacja], (err, results, fields) => {
    if (err) {
      console.error(err);
      res.status(500).send("Błąd bazy danych");
      return;
    }
    console.log(results);
    // Wysłać wyniki jako odpowiedź na żądanie HTTP.
    res.json(results);
  });
});

app.get("/kontynenty", function (req, res) {
  const sql = "SELECT DISTINCT kontynent FROM panstwo";
  conn.query(sql, (err, results, fields) => {
    if (err) {
      console.error(err);
      res.status(500).send("Błąd bazy danych");
      return;
    }
    console.log(results);
    // Wysłać wyniki jako odpowiedź na żądanie HTTP.
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`Serwer działa na porcie ${port}`);
});

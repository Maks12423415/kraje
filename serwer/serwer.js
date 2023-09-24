const express = require("express");
const cors = require("cors");
const axios = require("axios");
const mysql = require("mysql");
const port = 3000;
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

axios.get("https://restcountries.com/v3.1/all").then((resp) => {
  for (let i = 0; i < resp.data.length; i++) {
    const kraj = resp.data[i];
    console.log(
      `${kraj.name.common},${kraj.population},${kraj.region},${kraj.capital},${kraj.area}`
    );

    if (kraj.capital) {
      // Sprawdzanie, czy kraj już istnieje w bazie danych
      const check = `SELECT * FROM panstwo WHERE nazwa = ?`;
      const values = [kraj.name.common];

      // Deklaracja zmiennej insertUp na początku funkcji
      const insertUp = `UPDATE panstwo SET powierzchnia='${kraj.area}' WHERE nazwa = "${kraj.name.common}"`;

      conn.query(check, values, (err, results, fields) => {
        if (err) {
          console.error(err);
        } else {
          if (results.length === 0) {
            // Kraj nie istnieje w bazie danych, więc go dodaj
            const insertSQL = `INSERT INTO panstwo (nazwa, populacja, kontynent, stolica, powierzchnia) VALUES (?, ?, ?, ?, ?)`;
            // Dodaj warunek, aby obsłużyć brak kraj.area
            const area = kraj.area || 0;
            const insertValues = [
              kraj.name.common,
              kraj.population,
              kraj.region,
              kraj.capital,
              area,
            ];

            conn.query(insertSQL, insertValues, (err, results, fields) => {
              if (err) {
                console.error(err);
              } else {
                console.log("dodano");
              }
            });
          } else {
            console.log("Kraj już istnieje w bazie danych, pomijam");
            conn.query(insertUp, (err, results, fields) => {
              if (err) {
                console.error(err);
              } else {
                console.log("działa");
              }
            });
          }
        }
      });
    }
  }
});

app.listen(port, () => {
  console.log(`Serwer działa na porcie ${port}`);
});

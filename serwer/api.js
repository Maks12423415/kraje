const express = require("express");
const cors = require("cors");
const axios = require("axios");
const mysql = require("mysql")
const port = 3000;
const app = express();

app.use(cors());


var conn= mysql.createConnection({

    host:"localhost",
    user: "root",
    password:"",
    database:"kraje"
    })
  
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
        const sql = 'SELECT nazwa FROM panstwo WHERE kontynent = ?';
        conn.query(sql, [kontynent], (err, results, fields) => {
          if (err) {
            console.error(err);
            res.status(500).send('Błąd bazy danych');
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
      
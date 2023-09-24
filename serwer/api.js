<<<<<<< HEAD
// const express = require("express");
// const cors = require("cors");
// const axios = require("axios");
// const mysql = require("mysql");
// const port = 3000;
// const app = express();
=======
const express = require("express");
const cors = require("cors");
const mysql = require("mysql");
const port = 3000;
const app = express();
>>>>>>> 5e4f5143882fcaf2e225828d27616083a53b765f

// app.use(cors());

<<<<<<< HEAD
// var conn = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   password: "",
//   database: "kraje",
// });

// conn.connect((err) => {
//   if (err) console.log(err);
//   else console.log("połączono z bazą");
// });

// app.get("/", function (req, res) {
//   res.send("ok");
//   console.log("zapytanie");
// });

// app.get("/kontynent/:kontynent", function (req, res) {
//   var kontynent = req.params.kontynent;
//   const sql =
//     "SELECT nazwa, populacja, kontynent, stolica, powierzchnia FROM panstwo WHERE kontynent = ?";
//   conn.query(sql, [kontynent], (err, results, fields) => {
//     if (err) {
//       console.error(err);
//       res.status(500).send("Błąd bazy danych");
//       return;
//     }
//     console.log(results);
//     // Wysłać wyniki jako odpowiedź na żądanie HTTP.
//     res.json(results);
//   });
// });

// app.get("/populacja/:populacja", function (req, res) {
//   var populacja = parseInt(req.params.populacja);
//   const sql =
//     "SELECT nazwa, populacja, kontynent, stolica, powierzchnia FROM panstwo WHERE populacja >=  ?";
//   conn.query(sql, [populacja], (err, results, fields) => {
//     if (err) {
//       console.error(err);
//       res.status(500).send("Błąd bazy danych");
//       return;
//     }
//     console.log(results);
//     // Wysłać wyniki jako odpowiedź na żądanie HTTP.
//     res.json(results);
//   });
// });
=======
const conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "kraje"
});

conn.connect((err) => {
  if (err) console.log(err);
  else console.log("połączono z bazą");
});

app.get("/", function (req, res) {
  res.send("ok");
  console.log("zapytanie");
});
>>>>>>> 5e4f5143882fcaf2e225828d27616083a53b765f

// app.get("/kontynenty", function (req, res) {
//   const sql = "SELECT DISTINCT kontynent FROM panstwo";
//   conn.query(sql, (err, results, fields) => {
//     if (err) {
//       console.error(err);
//       res.status(500).send("Błąd bazy danych");
//       return;
//     }
//     console.log(results);
//     // Wysłać wyniki jako odpowiedź na żądanie HTTP.
//     res.json(results);
//   });
// });

<<<<<<< HEAD
// app.listen(port, () => {
//   console.log(`Serwer działa na porcie ${port}`);
// });
=======
      

      app.get("/kontynent/:kontynent", function (req, res) {
        var kontynent = req.params.kontynent;
        const sql = 'SELECT nazwa, populacja, kontynent, stolica, powierzchnia FROM panstwo WHERE kontynent = ?';
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


      app.get("/populacja/:populacja", function (req, res) {
        var populacja = parseInt(req.params.populacja);
        const sql = 'SELECT nazwa, populacja, kontynent, stolica, powierzchnia FROM panstwo WHERE populacja >=  ?';
        conn.query(sql, [populacja], (err, results, fields) => {
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

      app.get("/kontynenty", function (req, res) {
        const sql = 'SELECT DISTINCT kontynent FROM panstwo';
        conn.query(sql, (err, results, fields) => {
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

      app.get("/all", function (req, res) {
        const sql = 'SELECT *  FROM panstwo';
        conn.query(sql, (err, results, fields) => {
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


      app.get("/max", function (req, res) {
        const sql = 'SELECT MAX(populacja) FROM panstwo';
        conn.query(sql, (err, results, fields) => {
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
      
>>>>>>> 5e4f5143882fcaf2e225828d27616083a53b765f

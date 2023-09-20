const express = require("express");
const cors = require("cors");
const axios = require("axios");
const mysql = require("mysql")
const port = 3000;
app = express();

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

      axios.get("https://restcountries.com/v3.1/all").then((resp) => {
        for (let i = 0; i < resp.data.length; i++) {
          const kraj = resp.data[i];
          console.log(`${kraj.name.common},${kraj.population},${kraj.region},${kraj.capital}`);
      
          if (kraj.capital) {
            // Sprawdzanie, czy kraj już istnieje w bazie danych
            const check = `SELECT * FROM panstwo WHERE nazwa = ?`;
            const values = [kraj.name.common];
      
            conn.query(check, values, (err, results, fields) => {
              if (err) {
                console.error(err);
              } else {
                if (results.length === 0) {
                  // Kraj nie istnieje w bazie danych, więc go dodaj
                  const insertSQL = `INSERT INTO panstwo (nazwa, populacja, kontynent, stolica) VALUES (?, ?, ?, ?)`;
                  const insertValues = [kraj.name.common, kraj.population, kraj.region, kraj.capital];
      
                  conn.query(insertSQL, insertValues, (err, results, fields) => {
                    if (err) {
                      console.error(err);
                    } else {
                      console.log("dodano");
                    }
                  });
                } else {
                  console.log("Kraj już istnieje w bazie danych, pomijam");
                }
              }
            });
          } 
        }
      });
      
      


app.listen(port, () => {
  console.log(`Serwer działa na porcie ${port}`);
});

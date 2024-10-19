const express = require("express");
const cors = require("cors"); // CORS importieren
const mysql = require("mysql");

const app = express();

// CORS Middleware verwenden
app.use(
    cors({
      origin: "http://localhost:3000", // Erlaube nur dein React-Frontend
      methods: ["GET", "POST"], // Erlaube nur GET und POST
    })
);

// MySQL-Datenbankverbindung
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "prestigeparfume",
});

db.connect((err) => {
  if (err) throw err;
  console.log("MySQL verbunden");
});

// Route zum Abrufen aller Parfüms (mit optionalem Markenfilter)
app.get("/parfums", (req, res) => {
  const brandFilter = req.query.brand; // Lese den optionalen 'brand'-Query-Parameter
  let sql = `
    SELECT p.perfume_id, p.perfume_name, b.brand_name
    FROM Perfume p
    JOIN Brand b ON p.brand_id = b.brand_id
  `;

  // Wenn ein Markenfilter vorhanden ist, füge eine WHERE-Klausel hinzu
  if (brandFilter) {
    sql += ` WHERE b.brand_name IN (${brandFilter.map(brand => `'${brand}'`).join(", ")})`;
  }

  db.query(sql, (err, result) => {
    if (err) {
      console.error(err); // Fehler protokollieren
      return res.status(500).json({ error: "Datenbankfehler" });
    }
    res.json(result);
  });
});

app.listen(4000, () => {
  console.log("Server läuft auf Port 4000");
});

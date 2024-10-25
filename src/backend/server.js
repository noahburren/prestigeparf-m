const express = require("express");
const cors = require("cors"); // CORS importieren
const mysql = require("mysql");

const app = express();

// CORS Middleware verwenden
app.use(
    cors({
      origin: "http://localhost:3000", // Erlaube nur dein React-Frontend
      methods: ["GET", "POST", "PUT", "DELETE"], // Erlaube auch PUT und DELETE
    })
);

// Middleware zur Verarbeitung von JSON-Daten
app.use(express.json());

// MySQL-Datenbankverbindung
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "prestigeparfume",
});

// Datenbankverbindung überprüfen
db.connect((err) => {
  if (err) {
    console.error("Datenbankverbindung fehlgeschlagen: ", err);
    return process.exit(1); // Server beenden, wenn die Verbindung fehlschlägt
  }
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
    const brands = Array.isArray(brandFilter) ? brandFilter : [brandFilter];
    sql += ` WHERE b.brand_name IN (${mysql.escape(brands).join(", ")})`;
  }

  db.query(sql, (err, result) => {
    if (err) {
      console.error(err); // Fehler protokollieren
      return res.status(500).json({ error: "Datenbankfehler" });
    }
    res.json(result);
  });
});

// Route zum Hinzufügen eines neuen Parfüms
app.post("/parfums", (req, res) => {
  const { perfume_name, brand_id } = req.body;
  const sql = "INSERT INTO Perfume (perfume_name, brand_id) VALUES (?, ?)";

  db.query(sql, [perfume_name, brand_id], (err, result) => {
    if (err) {
      console.error(err);
      return res.status(500).json({ error: "Datenbankfehler" });
    }
    res.status(201).json({ message: "Parfüm hinzugefügt", perfume_id: result.insertId });
  });
});

// Route zum Aktualisieren eines Parfüms
app.put("/parfums/:id", (req, res) => {
  const { id } = req.params;
  const { perfume_name, brand_id } = req.body;
  const sql = "UPDATE Perfume SET perfume_name = ?, brand_id = ? WHERE perfume_id = ?";

  db.query(sql, [perfume_name, brand_id, id], (err, result) => {
    if (err) {
      console.error(err);
      return res.status(500).json({ error: "Datenbankfehler" });
    }
    res.json({ message: "Parfüm aktualisiert" });
  });
});

// Route zum Löschen eines Parfüms
app.delete("/parfums/:id", (req, res) => {
  const { id } = req.params;
  const sql = "DELETE FROM Perfume WHERE perfume_id = ?";

  db.query(sql, [id], (err, result) => {
    if (err) {
      console.error(err);
      return res.status(500).json({ error: "Datenbankfehler" });
    }
    res.json({ message: "Parfüm gelöscht" });
  });
});

// Server starten
app.listen(4000, () => {
  console.log("Server läuft auf Port 4000");
});

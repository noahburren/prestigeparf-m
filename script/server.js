// Import necessary modules
const express = require("express");
const mysql = require("mysql2");
const cors = require("cors"); // Import CORS

// Create an instance of express
const app = express();
const port = 3000; // Define the port for the server

// Use CORS middleware
app.use(cors()); // Enable CORS for all routes

// Create a MySQL connection
const connection = mysql.createConnection({
  host: "localhost", // Your database host
  user: "root", // Your database user
  password: "", // Your database password
  database: "prestigeparfume", // Your database name
});

// Connect to the database
connection.connect((err) => {
  if (err) {
    console.error("Error connecting to the database:", err.stack);
    return;
  }
  console.log("Connected to the database.");
});

// Endpoint to get all perfumes
app.get("/parfums", (req, res) => {
  const query = "SELECT * FROM Perfume"; // SQL query to fetch all perfumes

  connection.query(query, (error, results) => {
    if (error) {
      console.error("Error fetching perfumes:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }

    // Send the results as a JSON response
    res.json(results);
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});

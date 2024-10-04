// index.js
import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter as Router } from "react-router-dom";
import App from "./App"; // Importiere die App-Komponente
import "./styles.css"; // Importiere deine CSS-Datei

ReactDOM.render(
  <React.StrictMode>
    <Router>
      <App /> {/* Füge den Router hier ein */}
    </Router>
  </React.StrictMode>,
  document.getElementById("root")
);

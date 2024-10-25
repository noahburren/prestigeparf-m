import React from "react";
import ReactDOM from "react-dom/client"; // Neue Methode für React 18
import { BrowserRouter as Router } from "react-router-dom";
import App from "./App"; // Importiere die App-Komponente
import "./styles.css"; // Importiere deine CSS-Datei

// Erstelle den Root-Container
const root = ReactDOM.createRoot(document.getElementById("root"));

// Rendere die App mit dem Router
root.render(
  <React.StrictMode>
    <Router>
      <App /> {/* Füge den Router hier ein */}
    </Router>
  </React.StrictMode>
);

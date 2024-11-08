import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter as Router } from "react-router-dom";
import App from "./App";
import "./styles.css";
import Header from "./header";
import Footer from "./Footer"; // Importiere die Footer-Komponente

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
    <React.StrictMode>
        <Router>
            <div className="app-container"> {/* Füge einen Container hinzu */}
                <Header/>
                <main className="main-content"> {/* Füge einen Main-Bereich hinzu */}
                    <App />
                </main>
                <Footer/>
            </div>
        </Router>
    </React.StrictMode>
);

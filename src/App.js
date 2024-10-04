// App.js
import React from "react";
import { Route, Routes } from "react-router-dom";
import Home from "./home"; // Importiere deine Home-Komponente
import Datenschutz from "./Datenschutz";
import Contact from "./Contact";
import Parfums from "./Parfums";
import ParfumInfo from "./ParfumInfo";

function App() {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/datenschutz" element={<Datenschutz />} />
      <Route path="/contact" element={<Contact />} />
      <Route path="/parfums" element={<Parfums />} />
      <Route path="/parfuminfo" element={<ParfumInfo />} />
    </Routes>
  );
}

export default App;

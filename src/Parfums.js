// src/Parfums.js
import React, { useEffect } from "react";

const Parfums = () => {
  useEffect(() => {
    // Funktion zum Abrufen von Parfums vom Server
    const fetchPerfumes = async () => {
      try {
        const response = await fetch("http://localhost:3000/parfums");
        if (!response.ok) {
          throw new Error("Netzwerkantwort war nicht ok");
        }
        const perfumes = await response.json();

        const perfumeList = document.getElementById("perfumeList");
        perfumeList.innerHTML = ""; // Vorherige Liste löschen

        perfumes.forEach((perfume) => {
          const li = document.createElement("li");
          li.className = "perfume-item";

          const perfumeName = document.createElement("div");
          perfumeName.className = "perfume-name";
          perfumeName.textContent = perfume.perfume_name;

          const perfumeDescription = document.createElement("div");
          perfumeDescription.className = "perfume-description";
          perfumeDescription.textContent = perfume.description;

          li.appendChild(perfumeName);
          li.appendChild(perfumeDescription);
          perfumeList.appendChild(li);
        });
      } catch (error) {
        console.error("Fehler beim Abrufen der Parfüms:", error);
      }
    };

    fetchPerfumes();
  }, []);

  return (
    <div>
      <h1>Unsere Parfüms</h1>
      <ul className="perfume-list" id="perfumeList"></ul>
    </div>
  );
};

export default Parfums;

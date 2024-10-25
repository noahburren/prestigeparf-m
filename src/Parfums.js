import React, { useEffect, useState } from "react";

const Parfums = () => {
  const [perfumes, setPerfumes] = useState([]);

  useEffect(() => {
    // Funktion zum Abrufen von Parfums vom Server
    const fetchPerfumes = async () => {
      try {
        const response = await fetch("http://localhost:4000/parfums"); // Port geändert
        if (!response.ok) {
          throw new Error("Netzwerkantwort war nicht ok");
        }
        const data = await response.json();
        setPerfumes(data);
      } catch (error) {
        console.error("Fehler beim Abrufen der Parfüms:", error);
      }
    };

    fetchPerfumes();
  }, []);

  return (
    <div>
      <h1>Unsere Parfüms</h1>
      <div className="perfume-grid">
        {perfumes.map((perfume) => (
          <div key={perfume.perfume_id} className="perfume-card">
            <img
              src={`/pictures/parfumes/${perfume.perfume_name
                .toLowerCase()
                .replace(/ /g, "_")}.jpeg`} // URL für JPEG-Bilder angepasst
              alt={perfume.perfume_name}
              className="perfume-image"
            />
            <h2>{perfume.perfume_name}</h2>
            <h3>{perfume.brand_name}</h3>
            <p>{perfume.description}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Parfums;

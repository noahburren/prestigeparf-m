// src/Impressum.js
import React from "react";
import "./styles.css";

const Impressum = () => {
  return (
    <div className="impressum">
      <h1>Impressum</h1>
      <p><strong>Betreiber der Webseite:</strong></p>
      <p>Lorem Ipsum</p>
      <p>Lorem Ipsum 00</p>
      <p>CH-0000 Zürich</p>

      <p><strong>Telefon:</strong> +00 00 000 00 00</p>
      <p><strong>Email:</strong> <a href="mailto:lorem@ipsum.ch">lorem@ipsum.ch</a></p>

      <h2>Haftungsausschluss</h2>
      <p>
        Der Inhalt dieser Webseite wurde von Chadev mit der grösstmöglichen Sorgfalt erstellt und gepflegt.
        Chadev lehnt jede Haftung für allfällige Ansprüche im Zusammenhang mit der Webseite, deren Inhalte,
        darin enthaltenen Hinweisen und Links auf Webseiten Dritter sowie für im Zusammenhang damit auftretende
        Probleme ausdrücklich und vollumgfänglich ab.
      </p>

      <p>Alle Texte, Logos und Bilder sind urheberrechtlich geschützt.</p>
    </div>
  );
};

export default Impressum;
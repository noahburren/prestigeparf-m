// src/About.js
import React from "react";
import "./styles.css"; // Importiere deine CSS-Datei

const About = () => {
  return (
    <div>
      <header id="header">
        <div className="logo">
          <img id="header-img" src="/images/logopp.png" alt="logo" />
        </div>
      </header>
      <h1>Über uns</h1>
      <div className="about-box">
        <div className="divImageAbout">
          <img src="/images/about.jpg" alt="About" />
        </div>
        <div className="divTextAbout">
          <p>
            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
            nonumy eirmod tempor...
          </p>
        </div>
      </div>
      <footer>
        <p className="footer_copy">
          &#169; Prestige Parfume. Alle Rechte vorbehalten.
        </p>
      </footer>
    </div>
  );
};

export default About;

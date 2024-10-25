// src/Home.js
import React, { useEffect, useCallback, useRef } from "react";
import "./styles.css"; // Importiere deine CSS-Datei

const Home = () => {
  const slideIndex = useRef(0);

  const showSlides = useCallback(() => {
    let slides = document.getElementsByClassName("slide");
    for (let i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; // Setze alle Slides auf "none"
    }
    slideIndex.current++;
    if (slideIndex.current > slides.length) {
      slideIndex.current = 1; // Wenn der Index größer ist, setze ihn zurück
    }
    slides[slideIndex.current - 1].style.display = "block"; // Zeige den aktuellen Slide
    setTimeout(showSlides, 3000); // Wechselt alle 3 Sekunden
  }, []);

  useEffect(() => {
    showSlides(); // Starte die Slideshow
  }, [showSlides]);

  return (
    <div>
      <header id="header">
        <div className="logo">
          <img id="header-img" src="/images/logopp.png" alt="logo" />
        </div>
      </header>

      <section>
        <div className="slideshow-container">
          <div className="slide fade container">
            <div className="parent">
              <div className="image">
                <img
                  src="\pictures\parfumes\Acqua di Parma Blu Mediterraneo Arancia di Capri.jpeg" // Bildpfad angepasst
                  alt="Bild"
                />
              </div>
              <div className="text">
                <h2>Name 1</h2>
                <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                  Sequi alias esse, perspiciatis iure explicabo expedita
                  reiciendis eius sapiente. Deleniti distinctio fugiat atque
                  perferendis unde pariatur ut molestias reprehenderit fuga
                  iusto!
                </p>
              </div>
            </div>
          </div>

          <div className="slide fade container">
            <div className="parent">
              <div className="image">
                <img
                  src="\pictures\parfumes\Nightfall Patchouli.jpeg" // Bildpfad angepasst
                  alt="Bild"
                />
              </div>
              <div className="text">
                <h2>Name 2</h2>
                <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                  Sequi alias esse, perspiciatis iure explicabo expedita
                  reiciendis eius sapiente. Deleniti distinctio fugiat atque
                  perferendis unde pariatur ut molestias reprehenderit fuga
                  iusto!
                </p>
              </div>
            </div>
          </div>

          <div className="slide fade container">
            <div className="parent">
              <div className="image">
                <img
                  src="\pictures\parfumes\Desiriajpeg.jpeg" // Bildpfad angepasst
                  alt="Bild"
                />
              </div>
              <div className="text">
                <h2>Name 3</h2>
                <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                  Sequi alias esse, perspiciatis iure explicabo expedita
                  reiciendis eius sapiente. Deleniti distinctio fugiat atque
                  perferendis unde pariatur ut molestias reprehenderit fuga
                  iusto!
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <footer>
        <p className="footer_copy">
          &#169; Prestige Parfume. Alle Rechte vorbehalten.
        </p>
      </footer>
    </div>
  );
};

export default Home;

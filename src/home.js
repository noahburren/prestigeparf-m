import React, { useState, useEffect } from "react";
import "./styles.css";

const Home = () => {
  const [currentSlide, setCurrentSlide] = useState(0);
  const slides = [
    {
      image: "/pictures/parfumes/Acqua di Parma Blu Mediterraneo Arancia di Capri.jpeg",
      title: "Name 1",
      description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi alias esse, perspiciatis iure explicabo expedita reiciendis eius sapiente. Deleniti distinctio fugiat atque perferendis unde pariatur ut molestias reprehenderit fuga iusto!"
    },
    {
      image: "/pictures/parfumes/Nightfall Patchouli.jpeg",
      title: "Name 2",
      description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi alias esse, perspiciatis iure explicabo expedita reiciendis eius sapiente. Deleniti distinctio fugiat atque perferendis unde pariatur ut molestias reprehenderit fuga iusto!"
    },
    {
      image: "/pictures/parfumes/Desiriajpeg.jpeg",
      title: "Name 3",
      description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi alias esse, perspiciatis iure explicabo expedita reiciendis eius sapiente. Deleniti distinctio fugiat atque perferendis unde pariatur ut molestias reprehenderit fuga iusto!"
    }
  ];

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentSlide((prevSlide) => 
        prevSlide === slides.length - 1 ? 0 : prevSlide + 1
      );
    }, 3000);

    return () => clearInterval(timer);
  }, []);

  return (
    <div>
      <section>
        <div className="slideshow-container">
          {slides.map((slide, index) => (
            <div 
              key={index}
              className="slide fade container"
              style={{ display: currentSlide === index ? 'block' : 'none' }}
            >
              <div className="parent">
                <div className="image">
                  <img
                    src={slide.image}
                    alt={`Slide ${index + 1}`}
                  />
                </div>
                <div className="text">
                  <h2>{slide.title}</h2>
                  <p>{slide.description}</p>
                </div>
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
};

export default Home;
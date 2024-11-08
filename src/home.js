import React, { useState, useEffect } from "react";
import "./styles.css";

const Home = () => {
  const [currentSlide, setCurrentSlide] = useState(0);
  const slides = [
    {
      image:
        "/pictures/parfumes/Acqua di Parma Blu Mediterraneo Arancia di Capri.jpeg",
      title: "Acqua di Parma Blu Mediterraneo",
      description:
        "Acqua di Parma Blu Mediterraneo Arancia di Capri ist ein Duft, der die sonnige Leichtigkeit und Entspannung der Insel Capri perfekt einfängt. Dieser Duft kombiniert die spritzige Frische von süssen Orangen, Mandarinen und Zitronen, die an mediterrane Gärten erinnern, mit weichen Noten von Karamell und Moschus. ",
    },
    {
      image: "/pictures/parfumes/Nightfall Patchouli.jpeg",
      title: "Nightfall Patchouli",
      description:
        "Nightfall Patchouli ist ein geheimnisvoller, intensiver Duft, der die Magie der Nacht einfängt. Im Mittelpunkt steht edles Patchouli, das für seine warme, erdige Tiefe bekannt ist und in diesem Parfum eine sinnliche und verführerische Basis schafft. Begleitet wird das Patchouli von würzigen und leicht holzigen Noten, die dem Duft eine raffinierte und leicht orientalische Aura verleihen.",
    },
    {
      image: "/pictures/parfumes/Desiriajpeg.jpeg",
      title: "Desiria",
      description:
        "Desiria ist ein luxuriöser und sinnlicher Duft, inspiriert von der Schönheit eines geheimnisvollen Blumengartens in der Dämmerung. Im Herzen dieses Parfums entfalten sich opulente Noten von Rose und Jasmin, die eine intensive, romantische Blumigkeit verströmen. Sanfte, cremige Moschus- und Hölzernoten bilden die Basis und verleihen dem Duft eine warme Tiefe.",
    },
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
      <div className="title-container">
        <h1>Willkommen bei Prestigeparfüme</h1>
      </div>
      <section>
        <div className="slideshow-container">
          {slides.map((slide, index) => (
            <div
              key={index}
              className="slide fade container"
              style={{ display: currentSlide === index ? "block" : "none" }}
            >
              <div className="parent">
                <div className="image">
                  <img src={slide.image} alt={`Slide ${index + 1}`} />
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
      <div className="website-description">
        <p>
          Entdecken Sie die Welt der edlen Düfte bei Prestigeparfüme. Wir bieten
          eine handverlesene Auswahl exklusiver Parfums, die jeden Geschmack
          ansprechen und mit Raffinesse und Eleganz bestechen. Lassen Sie sich
          inspirieren und finden Sie Ihren persönlichen Lieblingsduft.
        </p>
      </div>
    </div>
  );
};

export default Home;

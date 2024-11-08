// src/Contact.js
import React from "react";

const Contact = () => {
  return (
    <div className="contact1">
      <div className="contact">
        <div className="content-wrapper">
          <div className="image-section">
            <img src="./images/contact.png" alt="Karte" />
          </div>
          <div className="text-section">

            <p><strong>Wir sind für Sie da. </strong>Ob Sie Fragen zu unseren Produkten haben oder eine Beratung für den perfekten Duft suchen – unser Team bei Prestigeparfüme steht Ihnen gerne zur Verfügung. Wir schätzen den persönlichen Kontakt mit unseren Kunden und freuen uns darauf, Ihnen weiterzuhelfen.</p>
          </div>
        </div>
        <div>
        </div>
        

      </div>
      <div className="form-section">
        <h2>Kontaktformular</h2>
        <form>
          <div className="form-group">
            <label htmlFor="name">Name:</label>
            <input
              type="text"
              id="name"
              name="name"
              placeholder="Ihr Name"
            />
          </div>

          <div className="form-group">
            <label htmlFor="email">E-Mail:</label>
            <input
              type="email"
              id="email"
              name="email"
              placeholder="Ihre E-Mail-Adresse"
            />
          </div>

          <div className="form-group">
            <label htmlFor="subject">Betreff:</label>
            <input
              type="text"
              id="subject"
              name="subject"
              placeholder="Betreff"
            />
          </div>

          <div className="form-group">
            <label htmlFor="message">Nachricht:</label>
            <textarea
              id="message"
              name="message"
              placeholder="Ihre Nachricht"
            ></textarea>
          </div>

          <button type="submit" className="submit-button">
            Nachricht senden
          </button>
        </form>
      </div>
    </div>

  );
};

export default Contact;

import React from "react";
import './footer.css';

const Footer = () => {
  return (
    <footer className="footer">
      <div className="footer-container">
        <div className="footer-content">
          <div className="footer-section logo-section">
            <a href="/" className="logo-link">
              <img
                src="/images/logopp.png"
                alt="Logo"
                className="logo"
              />
            </a>
          </div>

          <div className="footer-links-container">
            <div className="footer-column">
              <h1 className="footer-title">
                Navigation
              </h1>
              <ul>
                <li>
                  <a href="/ueberuns">
                    <p className="footer-link">
                      Über uns
                    </p>
                  </a>
                </li>
                <li>
                  <a href="/kontakt">
                    <p className="footer-link">
                      Kontakt
                    </p>
                  </a>
                </li>
              </ul>
            </div>

            <div className="footer-column">
              <h1 className="footer-title">
                Rechtliche Hinweise
              </h1>
              <ul>
                <li>
                  <a href="/datenschutz">
                    <p className="footer-link">
                      Datenschutz
                    </p>
                  </a>
                </li>
                <li>
                  <a href="/impressum">
                    <p className="footer-link">
                      Impressum
                    </p>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div className="footer-bottom">
          <p>
            &copy; 2024 - Prestige Parfume
          </p>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
import React, { useState, useEffect } from "react";
import { Link, useLocation } from "react-router-dom";
import "./styles.css";

const Header = () => {
  const [stickyMenu, setStickyMenu] = useState(false);
  const [navigationOpen, setNavigationOpen] = useState(false);
  const location = useLocation();

  const menuData = [
    { title: "Home", path: "/" },
    { title: "Über uns", path: "/about" },
    { title: "Parfüme", path: "/parfums" },
    { title: "Kontakt", path: "/contact" }
  ];

  const handleStickyMenu = () => {
    if (window.scrollY >= 80) {
      setStickyMenu(true);
    } else {
      setStickyMenu(false);
    }
  };

  useEffect(() => {
    window.addEventListener("scroll", handleStickyMenu);
    return () => {
      window.removeEventListener("scroll", handleStickyMenu);
    };
  }, []);

  return (
    <header className={`header ${stickyMenu ? "sticky" : ""}`}>
      <div className="header-container">
        <div className="logo-container">
          <Link to="/">
            <img
              src="/images/logopp.png"
              alt=""
              className="logo"
            />
          </Link>
        </div>

        <div className="navigation-container">
          <nav>
            <button
              onClick={() => setNavigationOpen(!navigationOpen)}
              className="mobile-menu-button"
              aria-label="Mobile Menu"
            >
              <span className={`hamburger-line ${navigationOpen ? "rotate-first" : ""}`} />
              <span className={`hamburger-line ${navigationOpen ? "hidden" : ""}`} />
              <span className={`hamburger-line ${navigationOpen ? "rotate-last" : ""}`} />
            </button>

            <ul className={`menu-list ${navigationOpen ? "open" : ""}`}>
              {menuData.map((menuItem, index) => (
                <li key={index} className="menu-item">
                  <Link
                    to={menuItem.path}
                    className={location.pathname === menuItem.path ? "active" : ""}
                    onClick={() => setNavigationOpen(false)}
                  >
                    {menuItem.title}
                  </Link>
                </li>
              ))}
            </ul>
          </nav>
        </div>
      </div>
    </header>
  );
};

export default Header;
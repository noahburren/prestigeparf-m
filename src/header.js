// src/Datenschutz.js
import React from "react";
import { Link, NavLink } from "react-router-dom";

const Header = () => {
  return (
    <header className="header">
    <div className="logo">
       <Link ><img id="header-img" src="/images/logopp.png" alt="logo"/> </Link> 
    </div>
    <nav className="nav">
    <NavLink to="/" className={({ isActive }) => (isActive ? 'active' : '')}>Home</NavLink>
        <NavLink to="/datenschutz" className={({ isActive }) => (isActive ? 'active' : '')}>Datenschutz</NavLink>
        <NavLink to="/impressum" className={({ isActive }) => (isActive ? 'active' : '')}>Impressum</NavLink>
        <NavLink to="/contact" className={({ isActive }) => (isActive ? 'active' : '')}>Contact</NavLink>
        <NavLink to="/parfums" className={({ isActive }) => (isActive ? 'active' : '')}>Parfums</NavLink>
        <NavLink to="/parfuminfo" className={({ isActive }) => (isActive ? 'active' : '')}>Parfum Info</NavLink>
     </nav>
    </header>
  );
};

export default Header;

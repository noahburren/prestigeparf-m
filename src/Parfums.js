import React, { useEffect, useState } from "react";

const Parfums = () => {
    const [perfumes, setPerfumes] = useState([]);
    const [searchTerm, setSearchTerm] = useState(""); // Zustand für die Suche
    const [selectedBrands, setSelectedBrands] = useState([]); // Zustand für die ausgewählten Marken
    const [isDropdownOpen, setIsDropdownOpen] = useState(false); // Zustand für das Dropdown-Menü

    useEffect(() => {
        const fetchPerfumes = async () => {
            try {
                const response = await fetch("http://localhost:4000/parfums");
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

    const brands = [...new Set(perfumes.map((perfume) => perfume.brand_name))];

    const filteredPerfumes = perfumes.filter((perfume) => {
        const matchesSearch = perfume.perfume_name.toLowerCase().includes(searchTerm.toLowerCase());
        const matchesBrand = selectedBrands.length === 0 || selectedBrands.includes(perfume.brand_name);
        return matchesSearch && matchesBrand;
    });

    const handleBrandChange = (brand) => {
        setSelectedBrands((prevSelected) =>
            prevSelected.includes(brand)
                ? prevSelected.filter((b) => b !== brand)
                : [...prevSelected, brand]
        );
    };

    const toggleDropdown = () => {
        setIsDropdownOpen((prev) => !prev);
    };

    const clearFilters = () => {
        setSearchTerm("");
        setSelectedBrands([]);
        setIsDropdownOpen(false); // Dropdown schliessen
    };

    return (
        <div className="parfums-container">
            <h1>Unsere Parfüms</h1>

            {/* Suchfeld und Filter */}
            <div className="search-filter">
                <input
                    type="text"
                    placeholder="Parfüm suchen..."
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                    className="search-input"
                />

                {/* Dropdown für die Markenfilter */}
                <div className="brand-filter-container">
                    <button onClick={toggleDropdown} className="brand-filter-button">
                        Marken auswählen
                    </button>
                    {isDropdownOpen && (
                        <div className="brand-dropdown">
                            {brands.map((brand, index) => (
                                <label key={index} className="brand-option">
                                    <input
                                        type="checkbox"
                                        value={brand}
                                        checked={selectedBrands.includes(brand)}
                                        onChange={() => handleBrandChange(brand)}
                                    />
                                    {brand}
                                </label>
                            ))}
                        </div>
                    )}
                </div>

                {/* Button für Clear All Filter */}
                <button onClick={clearFilters} className="clear-filters-btn">
                    Alle Filter zurücksetzen
                </button>
            </div>

            <div className="perfume-grid">
                {filteredPerfumes.length > 0 ? (
                    filteredPerfumes.map((perfume) => (
                        <div key={perfume.perfume_id} className="perfume-card">
                            <img
                                src={`/pictures/parfumes/${perfume.perfume_name
                                    .toLowerCase()
                                    .replace(/ /g, "_")}.jpeg`}
                                alt={perfume.perfume_name}
                                className="perfume-image"
                            />
                            <h2>{perfume.perfume_name}</h2>
                            <h3>{perfume.brand_name}</h3>
                            <p>{perfume.description}</p>
                        </div>
                    ))
                ) : (
                    <p>Keine Parfüms gefunden.</p>
                )}
            </div>
        </div>
    );
};

export default Parfums;

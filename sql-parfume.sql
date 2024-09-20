-- Drop database if it exists
DROP DATABASE IF EXISTS prestigeparfume;

-- Create the database
CREATE DATABASE prestigeparfume;
USE prestigeparfume;

-- Create table for Brands
CREATE TABLE Brand (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(255) NOT NULL
);

-- Create table for Perfumes
CREATE TABLE Perfume (
    perfume_id INT PRIMARY KEY AUTO_INCREMENT,
    perfume_name VARCHAR(255) NOT NULL,
    brand_id INT,
    lenglevity VARCHAR(100),
    sillage VARCHAR(100),
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);

-- Create table for Main Accords
CREATE TABLE Main_Accords (
    accord_id INT PRIMARY KEY AUTO_INCREMENT,
    accord_name VARCHAR(255) NOT NULL
);

-- Create table for Notes
CREATE TABLE Notes (
    note_id INT PRIMARY KEY AUTO_INCREMENT,
    note_name VARCHAR(255) NOT NULL
);

-- Create linking table for Perfumes and Main Accords (Many-to-Many relationship)
CREATE TABLE Perfume_Accords (
    perfume_id INT,
    accord_id INT,
    PRIMARY KEY (perfume_id, accord_id),
    FOREIGN KEY (perfume_id) REFERENCES Perfume(perfume_id),
    FOREIGN KEY (accord_id) REFERENCES Main_Accords(accord_id)
);

-- Create linking table for Perfumes and Notes (Many-to-Many relationship)
CREATE TABLE Perfume_Notes (
    perfume_id INT,
    note_id INT,
    PRIMARY KEY (perfume_id, note_id),
    FOREIGN KEY (perfume_id) REFERENCES Perfume(perfume_id),
    FOREIGN KEY (note_id) REFERENCES Notes(note_id)
);

-- Insert brands into the Brand table
INSERT INTO Brand (brand_name) VALUES
('Acqua di Parma'),
('Bvlgari'),
('Burberry'),
('Carolina Herrera'),
('Chanel'),
('Dolce & Gabbana'),
('Geogeo Armani'),
('Hugo Boss'),
('JPG'),
('Lancome'),
('Lataffa'),
('Mancera'),
('Parfums de Marly'),
('Tom Ford'),
('Valentino'),
('Xerjoff'),
('YSL');

-- Insert perfumes into the Perfume table for Acqua di Parma
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Acqua di Parma Blu Mediterraneo Arancia di Capri', 1, NULL, NULL),
('Acqua di Parma Blu Mediterraneo Cipresso di Toscana', 1, NULL, NULL),
('Acqua di Parma Blu Mediterraneo Fico di Amalfi', 1, NULL, NULL),
('Acqua di Parma Blu Mediterraneo Ginepro di Sardegna', 1, NULL, NULL),
('Acqua di Parma Blu Mediterraneo Mandorlo di Sicilia', 1, NULL, NULL),
('Acqua di Parma Blu Mediterraneo Bergamotto di Calabria', 1, NULL, NULL),
('Acqua di parma Blue Mediterraneo Mirto di Panarea', 1, NULL, NULL);

-- Insert perfumes into the Perfume table for Burberry
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Burberry Men', 2, NULL, NULL),
('Burberry Summer', 2, NULL, NULL),
('Burberry Summer for Men', 2, NULL, NULL),
('Burberry Summer for Men 2010', 2, NULL, NULL),
('Burberry Summer for Men 2011', 2, NULL, NULL),
('Burberry Summer for Men 2013', 2, NULL, NULL),
('Burberry Summer for Women 2010', 2, NULL, NULL),
('Burberry Summer for Women 2011', 2, NULL, NULL),
('Burberry Summer for Women 2013', 2, NULL, NULL),
('Burberry Summer Men 2009', 2, NULL, NULL),
('Burberry Summer Women 2009', 2, NULL, NULL);


-- Insert perfumes into the Perfume table for Bvlgari
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Black', 3, NULL, NULL),
('Goldea', 3, NULL, NULL),
('Rose Goldea', 3, NULL, NULL),
('Amarena', 3, NULL, NULL),
('Ashlemah', 3, NULL, NULL),
('Calaluna', 3, NULL, NULL),
('Lilaia', 3, NULL, NULL),
('Maravilla', 3, NULL, NULL),
('Noorah', 3, NULL, NULL),
('Desiria', 3, NULL, NULL),
('Irinia', 3, NULL, NULL),
('Splendia', 3, NULL, NULL),
('Ambero', 3, NULL, NULL),
('Garanat', 3, NULL, NULL),
('Gyan', 3, NULL, NULL),
('Malakeos', 3, NULL, NULL),
('Onekh', 3, NULL, NULL),
('Tygar', 3, NULL, NULL),
('Lazulia', 3, NULL, NULL),
('Selima', 3, NULL, NULL),
('Zahira', 3, NULL, NULL),
('Omnia', 3, NULL, NULL);

-- Insert perfumes into the Perfume table for Carolina Herrera
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Good Girl', 4, NULL, NULL),
('Herrera Aqua', 4, NULL, NULL),
('Chic For Men', 4, NULL, NULL),
('Chic Limited Red Edition', 4, NULL, NULL),
('Crystal Chic', 4, NULL, NULL),
('So Chic Limited Edition', 4, NULL, NULL),
('Amber Desire', 4, NULL, NULL),
('Burning Rose', 4, NULL, NULL),
('Carolina Herrera', 4, NULL, NULL),
('Herrera Tuberose', 4, NULL, NULL),
('Mystery Tobacco', 4, NULL, NULL),
('Neroli Boheme', 4, NULL, NULL),
('Nightfall Patchouli', 4, NULL, NULL);

-- Insert perfumes into the Perfume table for Chanel
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Bleu de Chanel', 5, NULL, NULL),
('Bleu de Chanel Eau de Parfum', 5, NULL, NULL),
('Chance Eau de Parfum', 5, NULL, NULL),
('Chance Eau de Toilette', 5, NULL, NULL),
('Chance Eau Fraiche', 5, NULL, NULL),
('Chance Eau Tendre', 5, NULL, NULL),
('Chance Eau Vive', 5, NULL, NULL),
('Chance Parfum', 5, NULL, NULL),
('Chanel No 19 Eau de Parfum', 5, NULL, NULL),
('Chanel No 19 Parfum', 5, NULL, NULL),
('Chanel No 19 Poudre', 5, NULL, NULL),
('Chanel N 19', 5, NULL, NULL),
('Chanel No 5 Eau de Cologne', 5, NULL, NULL),
('Chanel No 5 Eau de Parfum', 5, NULL, NULL),
('Chanel No 5 Eau de Toilette', 5, NULL, NULL),
('Chanel No 5 Eau Premiere 2015', 5, NULL, NULL),
('Chanel No 5 L Eau', 5, NULL, NULL),
('Chanel No 5 Parfum', 5, NULL, NULL),
('Chanel N 5', 5, NULL, NULL),
('Chanel N 5 Eau Premiere', 5, NULL, NULL),
('Chanel N 5 Elixir Sensuel', 5, NULL, NULL);


-- Insert perfumes into the Perfume table for Dolce & Gabbana
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Sicily', 6, NULL, NULL),
('By', 6, NULL, NULL),
('Dolce Gabbana Perfume for Babies', 6, NULL, NULL),
('Dolce Gabbana Pour Femme', 6, NULL, NULL),
('Dolce Gabbana Pour Femme Intense', 6, NULL, NULL),
('Dolce Gabbana Pour Homme', 6, NULL, NULL),
('Dolce Gabbana Pour Homme Intenso', 6, NULL, NULL),
('The One', 6, NULL, NULL),
('The One Collector For Men', 6, NULL, NULL),
('The One Collector For Women', 6, NULL, NULL),
('The One Desire', 6, NULL, NULL),
('The One Essence', 6, NULL, NULL),
('The One for Men', 6, NULL, NULL);


-- Insert perfumes into the Perfume table for Giorgio Armani
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Gio', 7, NULL, NULL),
('Acqua di Gio', 7, NULL, NULL),
('Acqua di Gio Blue Edition Pour Homme', 7, NULL, NULL),
('Emporio Armani City Glam for Her', 7, NULL, NULL),
('Emporio Armani City Glam for Him', 7, NULL, NULL),
('Si', 7, NULL, NULL),
('Si Eau de Toilette', 7, NULL, NULL),
('Si Golden Bow', 7, NULL, NULL),
('Si Huile de Parfum', 7, NULL, NULL);

-- Insert perfumes into the Perfume table for Hugo Boss
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Baldessarini', 8, NULL, NULL),
('Boss Intense', 8, NULL, NULL),
('Boss Intense Shimmer Edition', 8, NULL, NULL),
('Boss Number One', 8, NULL, NULL);

-- Insert perfumes into the Perfume table for Jean Paul Gaultier
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Le Beau Male', 9, NULL, NULL),
('Le Beau Male Capitaine Collector', 9, NULL, NULL),
('Le Beau Male Edition Collector', 9, NULL, NULL),
('Le Beau Male Summer 2014', 9, NULL, NULL),
('Le Male', 9, NULL, NULL),
('Ultra Male', 9, NULL, NULL);

-- Insert perfumes into the Perfume table for Lancôme
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('La Vie Est Belle', 10, NULL, NULL),
('La Vie Est Belle Christmas Edition', 10, NULL, NULL),
('La Vie Est Belle Edition Limitee', 10, NULL, NULL),
('La Vie Est Belle Glitter', 10, NULL, NULL),
('La Vie Est Belle L Eau de Parfum Intense', 10, NULL, NULL),
('La Vie Est Belle L Eau de Parfum Legere', 10, NULL, NULL),
('La Vie Est Belle L Eau de Toilette', 10, NULL, NULL),
('La Vie Est Belle L Extrait de Parfum', 10, NULL, NULL),
('La Vie Est Belle L Extrait de Parfum by Mellerio dits Meller', 10, NULL, NULL),
('La Vie Est Belle L Absolu', 10, NULL, NULL),
('La Vie Est Belle L Eau de Toilette Florale', 10, NULL, NULL),
('Balafre', 10, NULL, NULL),
('Climat', 10, NULL, NULL);

-- Insert perfumes into the Perfume table for Lattafa
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Al Fursan', 11, NULL, NULL),
('Ameer Al Oud 2', 11, NULL, NULL),
('Ameer Al Oudh', 11, NULL, NULL),
('Musk Al Ghazal', 11, NULL, NULL),
('Musk Andalusi', 11, NULL, NULL),
('Nafeas', 11, NULL, NULL),
('Ser Al Khulood', 11, NULL, NULL),
('Shahariyaar', 11, NULL, NULL),
('Shahrazad', 11, NULL, NULL),
('Oud Al Mamlikah', 11, NULL, NULL),
('Safwat Al Musk', 11, NULL, NULL);


-- Insert perfumes into the Perfume table for Mancera
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES	
('Amber Roses', 12, NULL, NULL),
('Roses Greedy', 12, NULL, NULL),
('Aoud S', 12, NULL, NULL),
('Black Intensive Aoud', 12, NULL, NULL),
('Velvet Vanilla', 12, NULL, NULL),
('Roses Vanille', 12, NULL, NULL),
('Musk of Flowers', 12, NULL, NULL),
('Roseaoud Musk', 12, NULL, NULL),
('Roses Jasmine', 12, NULL, NULL),
('Wild Fruits', 12, NULL, NULL),
('Voyage en Arabie Black Intensive Aoud', 12, NULL, NULL),
('Wild Candy', 12, NULL, NULL),
('Wild Cherry', 12, NULL, NULL),
('Wild Leather', 12, NULL, NULL),
('Wild Rose Oud', 12, NULL, NULL);

-- Insert perfumes into the Perfume table for Parfums de Marly
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Akaster', 13, NULL, NULL),
('Athalia', 13, NULL, NULL),
('Byerley', 13, NULL, NULL),
('Godolphin', 13, NULL, NULL),
('Layton', 13, NULL, NULL),
('Pegasus', 13, NULL, NULL),
('Safanad', 13, NULL, NULL),
('Kuhuyan', 13, NULL, NULL),
('Oajan', 13, NULL, NULL);

-- Insert perfumes into the Perfume table for Tom Ford
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Grey Vetiver', 14, NULL, NULL),
('Noir Extreme', 14, NULL, NULL),
('Noir Pour Femme', 14, NULL, NULL),
('Violet Blonde', 14, NULL, NULL),
('White Patchouli', 14, NULL, NULL),
('Black Orchid', 14, NULL, NULL),
('Champaca Absolute', 14, NULL, NULL),
('Italian Cypress', 14, NULL, NULL),
('Japon Noir', 14, NULL, NULL),
('Jasmin Rouge', 14, NULL, NULL);

-- Insert perfumes into the Perfume table for Valentino
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Valentina Pink', 15, NULL, NULL),
('Valentina Poudre', 15, NULL, NULL),
('Valentina Rosa Assoluto', 15, NULL, NULL),
('Valentino Donna', 15, NULL, NULL),
('Valentino Uomo', 15, NULL, NULL),
('Valentino Uomo 2015', 15, NULL, NULL),
('Valentino Uomo Intense', 15, NULL, NULL),
('Vendetta Donna', 15, NULL, NULL);


-- Insert perfumes into the Perfume table
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Begum', 16, NULL, NULL),
('Harrods Emerald Star', 16, NULL, NULL),
('Gran Ballo', 16, NULL, NULL),
('Italica', 16, NULL, NULL),
('La Tosca', 16, NULL, NULL),
('Lira', 16, NULL, NULL),
('Mefisto', 16, NULL, NULL),
('Ivory Route', 16, NULL, NULL),
('Kind of Blue', 16, NULL, NULL),
('Zafar', 16, NULL, NULL),
('Richwood', 16, NULL, NULL),
('Symphonium', 16, NULL, NULL),
('XXY', 16, NULL, NULL),
('XJ 1861 Naxos', 16, NULL, NULL),
('XJ 1861 Renaissance', 16, NULL, NULL),
('XJ 1861 Zefiro', 16, NULL, NULL);

-- Insert perfumes into the Perfume table
INSERT INTO Perfume (perfume_name, brand_id, lenglevity, sillage) VALUES
('Eau Libre', 17, NULL, NULL),
('Saharienne', 17, NULL, NULL),
('Vice Versa', 17, NULL, NULL),
('Y', 17, NULL, NULL),
('Baby Doll', 17, NULL, NULL),
('Baby Doll Candy Pink', 17, NULL, NULL),
('Baby Doll Honeymoon Limited Edition', 17, NULL, NULL),
('Baby Doll Lucky Game', 17, NULL, NULL),
('L Homme Parfum Intense', 17, NULL, NULL),
('Black Opium Eau de Toilette', 17, NULL, NULL),
('Yvresse Champagne', 17, NULL, NULL),
('Yvresse Eau de Toilette Legere', 17, NULL, NULL);

-- Insert main accords
INSERT INTO Main_Accords (accord_name) VALUES
('citrus'),
('aromatic'),
('fresh spicy'),
('fresh'),
('woody'),
('rose'),
('white floral'),
('tuberose'),
('animalic'),
('musky'),
('powdery'),
('yellow floral'),
('earthy'),
('amber'),
('floral'),
('green'),
('balsamic'),
('smoky'),
('oud'),
('leather'),
('fruity');


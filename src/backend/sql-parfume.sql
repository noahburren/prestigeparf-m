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
    DESCRIPTION TEXT,  -- New column for perfume description
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
('Georgio Armani'),
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

-- Insert values into Main_Accords
INSERT INTO Main_Accords (accord_name) 
VALUES 
    ('citrus'),
    ('fresh spicy'),
    ('aromatic'),
    ('green'),
    ('caramel'),
    ('terpenic'),
    ('woody'),
    ('herbal'),
    ('fruity'),
    ('sweet'),
    ('almond'),
    ('vanilla'),
    ('powdery'),
    ('floral'),
    ('fresh'),
    ('musky'),
    ('leather'),
    ('animalic'),
    ('amber'),
    ('rose'),
    ('cherry'),
    ('tuberose'),
    ('warm spicy'),
    ('milky'),
    ('balsamic'),
    ('patchouli'),
    ('tobacco'),
    ('smoky'),
    ('soft spicy'),
    ('oud'),
    ('earthy'),
    ('cacao'),
    ('honey'),
    ('coffee'),
    ('narcotic'),
    ('ozonic'),
    ('marine'),
    ('aldehydic'),
    ('nutty');

-- Insert values into Notes
INSERT INTO Notes (note_name) VALUES 
('Petitgrain'),
('Cardamom'),
('Musk'),
('Caramel'),
('Orange'),
('Sicilian Mandarin'),
('Bergamot'),
('Lemon'),
('Pine Tree'),
('Coriander'),
('Lavender'),
('Jasmine'),
('Lily-of-the-Valley'),
('Cypress'),
('Silver Pine'),
('Patchouli'),
('Oakmoss'),
('Vetiver'),
('Cedar'),
('Pink Pepper'),
('Fig Nectar'),
('Benzoin'),
('Sage'),
('Virginia Cedar'),
('Juniper'),
('Bergamot'),
('Pepper'),
('Allspice'),
('Nutmeg'),
('Jasmine'),
('White Peach'),
('Ylang-Ylang'),
('Bourbon Vanilla'),
('Cedar'),
('White Musk'),
('Tolu Balsam'),
('Green Almond'),
('Star Anise'),
('Grapefruit'),
('Ginger'),
('Flowers'),
('Benzoin'),
('Musk'),
('Citron'),
('Sea Notes'),
('Rose'),
('Mastic or Lentisque'),
('Amber'),
('Myrtle'),
('Basil'),
('Lemon');

-- Insert perfumes into the Perfume table for Acqua di Parma
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Acqua di Parma Blu Mediterraneo Arancia di Capri', 1),
('Acqua di Parma Blu Mediterraneo Cipresso di Toscana', 1),
('Acqua di Parma Blu Mediterraneo Fico di Amalfi', 1),
('Acqua di Parma Blu Mediterraneo Ginepro di Sardegna', 1),
('Acqua di Parma Blu Mediterraneo Mandorlo di Sicilia', 1),
('Acqua di Parma Blu Mediterraneo Bergamotto di Calabria', 1),
('Acqua di Parma Blu Mediterraneo Mirto di Panarea', 1);

-- Insert perfumes into the Perfume table for Burberry
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Burberry Men', 2),
('Burberry Summer', 2),
('Burberry Summer for Men', 2),
('Burberry Summer for Men 2010', 2),
('Burberry Summer for Men 2011', 2),
('Burberry Summer for Men 2013', 2),
('Burberry Summer for Women 2010', 2),
('Burberry Summer for Women 2011', 2),
('Burberry Summer for Women 2013', 2),
('Burberry Summer Men 2009', 2),
('Burberry Summer Women 2009', 2);


-- Insert perfumes into the Perfume table for Bvlgari
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Black', 3),
('Goldea', 3),
('Rose Goldea', 3),
('Amarena', 3),
('Ashlemah', 3),
('Calaluna', 3),
('Lilaia', 3),
('Maravilla', 3),
('Noorah', 3),
('Desiria', 3),
('Irinia', 3),
('Splendia', 3),
('Ambero', 3),
('Garanat', 3),
('Gyan', 3),
('Malakeos', 3),
('Onekh', 3),
('Tygar', 3),
('Lazulia', 3),
('Selima', 3),
('Zahira', 3),
('Omnia', 3);

-- Insert perfumes into the Perfume table for Carolina Herrera
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Good Girl', 4),
('Herrera Aqua', 4),
('Chic For Men', 4),
('Chic Limited Red Edition', 4),
('Crystal Chic', 4),
('So Chic Limited Edition', 4),
('Amber Desire', 4),
('Burning Rose', 4),
('Carolina Herrera', 4),
('Herrera Tuberose', 4),
('Mystery Tobacco', 4),
('Neroli Boheme', 4),
('Nightfall Patchouli', 4);

-- Insert perfumes into the Perfume table for Chanel
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Bleu de Chanel', 5),
('Bleu de Chanel Eau de Parfum', 5),
('Chance Eau de Parfum', 5),
('Chance Eau de Toilette', 5),
('Chance Eau Fraiche', 5),
('Chance Eau Tendre', 5),
('Chance Eau Vive', 5),
('Chance Parfum', 5),
('Chanel No 5 Eau de Cologne', 5),
('Chanel No 5 Eau de Parfum', 5),
('Chanel No 5 Eau de Toilette', 5),
('Chanel No 5 Eau Premiere 2015', 5),
('Chanel No 5 L Eau', 5),
('Chanel No 5 Parfum', 5),
('Chanel N 5', 5),
('Chanel N 5 Eau Premiere', 5),
('Chanel N 5 Elixir Sensuel', 5);


-- Insert perfumes into the Perfume table for Dolce & Gabbana
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Sicily', 6),
('By', 6),
('Dolce Gabbana Perfume for Babies', 6),
('Dolce Gabbana Pour Femme', 6),
('Dolce Gabbana Pour Femme Intense', 6),
('Dolce Gabbana Pour Homme', 6),
('Dolce Gabbana Pour Homme Intenso', 6),
('The One', 6),
('The One Collector For Men', 6),
('The One Collector For Women', 6),
('The One Desire', 6),
('The One Essence', 6),
('The One for Men', 6);


-- Insert perfumes into the Perfume table for Giorgio Armani
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Gio', 7),
('Acqua di Gio', 7),
('Acqua di Gio Blue Edition Pour Homme', 7),
('Emporio Armani City Glam for Her', 7),
('Emporio Armani City Glam for Him', 7),
('Si', 7),
('Si Eau de Toilette', 7),
('Si Golden Bow', 7),
('Si Huile de Parfum', 7);

-- Insert perfumes into the Perfume table for Hugo Boss
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Baldessarini', 8),
('Boss Intense', 8),
('Boss Intense Shimmer Edition', 8),
('Boss Number One', 8);

-- Insert perfumes into the Perfume table for Jean Paul Gaultier
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Le Beau Male', 9),
('Le Beau Male Capitaine Collector', 9),
('Le Beau Male Edition Collector', 9),
('Le Beau Male Summer 2014', 9),
('Le Male', 9),
('Ultra Male', 9);

-- Insert perfumes into the Perfume table for Lancôme
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('La Vie Est Belle', 10),
('La Vie Est Belle Christmas Edition', 10),
('La Vie Est Belle Edition Limitee', 10),
('La Vie Est Belle Glitter', 10),
('La Vie Est Belle L Eau de Parfum Intense', 10),
('La Vie Est Belle L Eau de Parfum Legere', 10),
('La Vie Est Belle L Eau de Toilette', 10),
('La Vie Est Belle L Extrait de Parfum', 10),
('La Vie Est Belle L Extrait de Parfum by Mellerio dits Meller', 10),
('La Vie Est Belle L Absolu', 10),
('La Vie Est Belle L Eau de Toilette Florale', 10),
('Balafre', 10),
('Climat', 10);

-- Insert perfumes into the Perfume table for Lattafa
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Al Fursan', 11),
('Ameer Al Oud 2', 11),
('Ameer Al Oudh', 11),
('Musk Al Ghazal', 11),
('Musk Andalusi', 11),
('Nafeas', 11),
('Ser Al Khulood', 11),
('Shahariyaar', 11),
('Shahrazad', 11),
('Oud Al Mamlikah', 11),
('Safwat Al Musk', 11);


-- Insert perfumes into the Perfume table for Mancera
INSERT INTO Perfume (perfume_name, brand_id) VALUES	
('Amber Roses', 12),
('Roses Greedy', 12),
('Aoud S', 12),
('Black Intensive Aoud', 12),
('Velvet Vanilla', 12),
('Roses Vanille', 12),
('Musk of Flowers', 12),
('Roseaoud Musk', 12),
('Roses Jasmine', 12),
('Wild Fruits', 12),
('Voyage en Arabie Black Intensive Aoud', 12),
('Wild Candy', 12),
('Wild Cherry', 12),
('Wild Leather', 12),
('Wild Rose Oud', 12);

-- Insert perfumes into the Perfume table for Parfums de Marly
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Akaster', 13),
('Athalia', 13),
('Byerley', 13),
('Godolphin', 13),
('Layton', 13),
('Pegasus', 13),
('Safanad', 13),
('Kuhuyan', 13),
('Oajan', 13);

-- Insert perfumes into the Perfume table for Tom Ford
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Grey Vetiver', 14),
('Noir Extreme', 14),
('Noir Pour Femme', 14),
('Violet Blonde', 14),
('White Patchouli', 14),
('Black Orchid', 14),
('Champaca Absolute', 14),
('Italian Cypress', 14),
('Japon Noir', 14),
('Jasmin Rouge', 14);

-- Insert perfumes into the Perfume table for Valentino
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Valentina Pink', 15),
('Valentina Poudre', 15),
('Valentina Rosa Assoluto', 15),
('Valentino Donna', 15),
('Valentino Uomo', 15),
('Valentino Uomo 2015', 15),
('Valentino Uomo Intense', 15),
('Vendetta Donna', 15);


-- Insert perfumes into the Perfume table Xerjoff
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Begum', 16),
('Harrods Emerald Star', 16),
('Gran Ballo', 16),
('Italica', 16),
('La Tosca', 16),
('Lira', 16),
('Mefisto', 16),
('Ivory Route', 16),
('Kind of Blue', 16),
('Zafar', 16),
('Richwood', 16),
('Symphonium', 16),
('XXY', 16),
('XJ 1861 Naxos', 16),
('XJ 1861 Renaissance', 16),
('XJ 1861 Zefiro', 16);

-- Insert perfumes into the Perfume table Yves Saint Laurent
INSERT INTO Perfume (perfume_name, brand_id) VALUES
('Eau Libre', 17),
('Saharienne', 17),
('Vice Versa', 17),
('Y', 17),
('Baby Doll', 17),
('Baby Doll Candy Pink', 17),
('Baby Doll Honeymoon Limited Edition', 17),
('Baby Doll Lucky Game', 17),
('L Homme Parfum Intense', 17),
('Black Opium Eau de Toilette', 17),
('Yvresse Champagne', 17),
('Yvresse Eau de Toilette Legere', 17);


-- Insert into Main_Accords
INSERT INTO Main_Accords (accord_name) 
VALUES 
    ('citrus'),
    ('fresh spicy'),
    ('aromatic'),
    ('green'),
    ('caramel'),
    ('terpenic'),
    ('woody'),
    ('herbal'),
    ('fruity'),
    ('sweet'),
    ('almond'),
    ('vanilla'),
    ('powdery'),
    ('floral');

-- Insert into Notes
INSERT INTO Notes (note_name) VALUES 
('Petitgrain'),
('Cardamom'),
('Musk'),
('Caramel'),
('Orange'),
('Sicilian Mandarin'),
('Bergamot'),
('Lemon'),
('Pine Tree'),
('Coriander'),
('Lavender'),
('Jasmine'),
('Lily-of-the-Valley'),
('Cypress'),
('Silver Pine'),
('Patchouli'),
('Oakmoss'),
('Vetiver'),
('Cedar'),
('Pink Pepper'),
('Fig Nectar'),
('Grapefruit'),
('Benzoin'),
('Juniper'),
('Pepper'),
('Allspice'),
('Nutmeg'),
('White Peach'),
('Ylang-Ylang'),
('Bourbon Vanilla'),
('Star Anise'),
('Mastic or Lentisque'),
('Amber'),
('Myrtle'),
('Basil');

-- Insert into Perfume_Accords for each perfume
INSERT INTO Perfume_Accords (perfume_id, accord_id) VALUES
(1, 1), -- Acqua di Parma Blu Mediterraneo Arancia di Capri, accord_id für "citrus"
(1, 2), -- accord_id für "fresh spicy"
(2, 3), -- Acqua di Parma Blu Mediterraneo Cipresso di Toscana, accord_id für "aromatic"
(2, 4), -- accord_id für "woody"
(3, 1), -- Acqua di Parma Blu Mediterraneo Fico di Amalfi, accord_id für "fruity"
(4, 2), -- Acqua di Parma Blu Mediterraneo Ginepro di Sardegna, accord_id für "fresh spicy"
(5, 3), -- Acqua di Parma Blu Mediterraneo Mandorlo di Sicilia, accord_id für "almond"
(6, 1), -- Acqua di Parma Blu Mediterraneo Bergamotto di Calabria, accord_id für "citrus"
(7, 3); -- Acqua di Parma Blu Mediterraneo Mirto di Panarea, accord_id für "aromatic"

-- Insert into Perfume_Notes for each perfume
INSERT INTO Perfume_Notes (perfume_id, note_id) VALUES
(1, 1), -- Acqua di Parma Blu Mediterraneo Arancia di Capri, note_id für "Petitgrain"
(1, 2), -- note_id für "Cardamom"
(1, 3), -- note_id für "Musk"
(1, 4), -- note_id für "Caramel"
(1, 5), -- note_id für "Orange"
(1, 6), -- note_id für "Sicilian Mandarin"
(1, 7), -- note_id für "Bergamot"
(1, 8), -- note_id für "Lemon"
(2, 9), -- Acqua di Parma Blu Mediterraneo Cipresso di Toscana, note_id für "Pine Tree"
(2, 10), -- note_id für "Coriander"
(2, 11), -- note_id für "Lavender"
(2, 12), -- note_id für "Jasmine"
(2, 13), -- note_id für "Lily-of-the-Valley"
(3, 1), -- Acqua di Parma Blu Mediterraneo Fico di Amalfi, note_id für "Petitgrain"
(3, 2), -- note_id für "Cardamom"
(3, 14), -- note_id für "Cedar"
(3, 15), -- note_id für "Fig Tree"
(3, 16), -- note_id für "Benzoin"
(4, 17), -- Acqua di Parma Blu Mediterraneo Ginepro di Sardegna, note_id für "Sage"
(4, 18), -- note_id für "Cypress"
(5, 19), -- Acqua di Parma Blu Mediterraneo Mandorlo di Sicilia, note_id für "Jasmine"
(5, 20), -- note_id für "White Peach"
(5, 21), -- note_id für "Ylang-Ylang"
(5, 22), -- note_id für "Bourbon Vanilla"
(6, 1), -- Acqua di Parma Blu Mediterraneo Bergamotto di Calabria, note_id für "Petitgrain"
(6, 2), -- note_id für "Cardamom"
(6, 23), -- note_id für "Ginger"
(6, 24), -- note_id für "Cedar"
(7, 25), -- Acqua di Parma Blu Mediterraneo Mirto di Panarea, note_id für "Sea Notes"
(7, 26), -- note_id für "Jasmine"
(7, 27); -- note_id für "Rose"


-- Perfume Accords Inserts
INSERT INTO Perfume_Accords (perfume_id, accord_id) VALUES
(8, 3), (8, 7), (8, 2), (8, 4), (8, 13), (8, 8),  -- Burberry Men
(9, 14), (9, 2), (9, 9), (9, 10), (9, 4),          -- Burberry Summer
(10, 3), (10, 4), (10, 2), (10, 13), (10, 6),     -- Burberry Summer for Men
(11, 1), (11, 7), (11, 2), (11, 3), (11, 4),      -- Burberry Summer for Men 2010
(12, 1), (12, 3), (12, 2), (12, 4), (12, 7),      -- Burberry Summer for Men 2011
(13, 3), (13, 2), (13, 7), (13, 4), (13, 1),      -- Burberry Summer for Men 2013
(14, 7), (14, 9), (14, 14), (14, 2), (14, 13), (14, 11),  -- Burberry Summer for Women 2010
(15, 7), (15, 1), (15, 14), (15, 2), (15, 4),     -- Burberry Summer for Women 2011
(16, 14), (16, 7), (16, 2), (16, 4), (16, 11),    -- Burberry Summer for Women 2013
(17, 1), (17, 4), (17, 2), (17, 7), (17, 6),      -- Burberry Summer Men 2009
(18, 9), (18, 7), (18, 14), (18, 6), (18, 13);     -- Burberry Summer Women 2009

-- Perfume Notes Inserts
INSERT INTO Perfume_Notes (perfume_id, note_id) VALUES
(8, 18), (8, 11), (8, 19), (8, 25), (8, 26), (8, 14),  -- Burberry Men
(9, 1), (9, 15), (9, 3), (9, 5), (9, 6), (9, 4),       -- Burberry Summer
(10, 1), (10, 6), (10, 16), (10, 19), (10, 25), (10, 26),  -- Burberry Summer for Men
(11, 7), (11, 17), (11, 22), (11, 25), (11, 20), (11, 19),  -- Burberry Summer for Men 2010
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5), (12, 14),  -- Burberry Summer for Men 2011
(13, 1), (13, 6), (13, 11), (13, 19), (13, 18), (13, 12),  -- Burberry Summer for Men 2013
(14, 1), (14, 2), (14, 6), (14, 7), (14, 10), (14, 26),  -- Burberry Summer for Women 2010
(15, 1), (15, 2), (15, 6), (15, 7), (15, 10), (15, 19),  -- Burberry Summer for Women 2011
(16, 1), (16, 2), (16, 6), (16, 7), (16, 10), (16, 14),  -- Burberry Summer for Women 2013
(17, 1), (17, 4), (17, 2), (17, 7), (17, 6),           -- Burberry Summer Men 2009
(18, 9), (18, 7), (18, 14), (18, 6), (18, 13);          -- Burberry Summer Women 2009

INSERT INTO Perfume (perfume_id, DESCRIPTION) VALUES
(1, 'Ein strahlendes, zitrusbetontes Aroma, ideal für sonnige Tage am Strand.'),
(2, 'Ein aromatischer, holziger Duft inspiriert von den Wäldern der Toskana.'),
(3, 'Fruchtig und frisch, mit Noten von Feigen, perfekt für den Sommer.'),
(4, 'Ein würziger, mediterraner Duft mit frischer Wacholdernote.'),
(5, 'Warme Mandelnoten mit weichen, floralen Akzenten, beruhigend und entspannend.'),
(6, 'Ein klassischer, belebender Zitrusduft mit kalabrischer Bergamotte.'),
(7, 'Ein floraler, aromatischer Duft, inspiriert vom Mittelmeer.'),
(8, 'Ein holziger Duft mit würzigen Akzenten, ideal für das ganze Jahr.'),
(9, 'Leicht und frisch, ideal für die Sommermonate.'),
(10, 'Frisch und aromatisch, perfekt für legere Anlässe.'),
(11, 'Ein sommerlicher Duft, holzig und frisch, ideal für Sommerabende.'),
(12, 'Belebend und frisch, mit einem Hauch von Zitrus, ideal für die warmen Monate.'),
(13, 'Grün und frisch, perfekt für Outdoor-Aktivitäten und den Frühling.'),
(14, 'Ein blumig-pudriger Duft, der die Essenz des Frühlings einfängt.'),
(15, 'Süß und fruchtig, für entspannte Tage im Sommer.'),
(16, 'Frisch, blumig und mit einer Zitrusnote - ideal für den Sommer.'),
(17, 'Ein zitrus-frischer Duft mit holzigen Untertönen, perfekt für warme Tage.'),
(18, 'Fruchtig und floral, mit einer warmen Basis - ideal für Sommertage.'),
(19, 'Ein intensiver, mystischer Duft mit einer orientalischen Note.'),
(20, 'Ein blumiger, eleganter Duft mit orientalischen Akzenten.'),
(21, 'Ein sinnlicher Rosenduft, perfekt für besondere Anlässe.'),
(22, 'Süß und blumig, ein femininer Duft für den Abend.'),
(23, 'Ein grüner, beruhigender Duft mit holzigen Akzenten.'),
(24, 'Inspiriert von der Natur, ein frischer Duft mit zarten Nuancen.'),
(25, 'Ein heller und grüner Duft, ideal für den Frühling.'),
(26, 'Ein floraler Duft, inspiriert von exotischen Blüten und dem Orient.'),
(27, 'Ein intensiver, seltener Duft mit einer orientalischen Basis.'),
(28, 'Ein warmer, süß-würziger Duft für besondere Anlässe.'),
(29, 'Ein holziger Duft mit würzigen Noten und einer warmen Basis.'),
(30, 'Ein frischer, maskuliner Duft mit aquatischen Akzenten.'),
(31, 'Ein süß-würziger Duft mit orientalischen Noten, ideal für den Abend.'),
(32, 'Frisch und belebend, perfekt für heiße Sommertage.'),
(33, 'Ein klassischer, maskuliner Duft mit würzigen Akzenten.'),
(34, 'Ein limitierter Duft, intensiv und würzig.'),
(35, 'Ein femininer Duft mit zarten Blütennoten, ideal für den Alltag.'),
(36, 'Ein orientalischer, blumiger Duft, intensiv und elegant.'),
(37, 'Ein warmer Amberduft, ideal für den Abend.'),
(38, 'Intensiv und rosig, perfekt für besondere Anlässe.'),
(39, 'Ein klassischer, femininer Duft - stilvoll und zeitlos.'),
(40, 'Ein floraler Duft mit Tuberose und Zitrusnoten.'),
(41, 'Ein maskuliner Duft mit frischen, würzigen und holzigen Noten.'),
(42, 'Frisch und intensiv, ideal für elegante Anlässe.'),
(43, 'Ein femininer Duft mit blumigen und fruchtigen Noten.'),
(44, 'Ein leichter Zitrusduft, perfekt für den Alltag.'),
(45, 'Ein blumiger, frischer Duft für den Frühling.'),
(46, 'Süß und blumig, ideal für entspannte Tage.'),
(47, 'Lebhaft und frisch, mit einer würzigen Note.'),
(48, 'Intensiv und feminin, ideal für die Abendstunden.'),
(49, 'Ein zeitloser, klassischer Duft - elegant und beständig.'),
(50, 'Ein blumiger Duft mit einer warmen, sinnlichen Basis.'),
(51, 'Süß und intensiv, perfekt für besondere Anlässe.'),
(52, 'Ein einzigartiger Zitrusduft mit orientalischen Akzenten.'),
(53, 'Ein sanfter, spezieller Duft für Babys.'),
(54, 'Warm und blumig, feminin und klassisch.'),
(55, 'Intensiv und warm, perfekt für den Abend.'),
(56, 'Ein maskuliner Duft, frisch und intensiv.'),
(57, 'Ein tiefer, maskuliner Duft, ideal für den Winter.'),
(58, 'Ein orientalischer Duft, perfekt für kältere Tage.'),
(59, 'Speziell und sammelwürdig, ideal für Parfumliebhaber.'),
(60, 'Ein femininer, blumiger Duft mit orientalischen Akzenten.'),
(61, 'Ein aquatischer Duft von Hugo Boss, frisch und maritim.'),
(62, 'Holzig und würzig, ideal für den Abend.'),
(63, 'Frisch und belebend, für das ganze Jahr geeignet.'),
(64, 'Ein intensiver, maskuliner Duft, ideal für den Winter.'),
(65, 'Fruchtig und blumig, mit einer einzigartigen Note.'),
(66, 'Ein frischer Duft mit orientalischen Akzenten.'),
(67, 'Süß und würzig, für besondere Anlässe.'),
(68, 'Ein klassischer, eleganter Duft mit floralen Akzenten.'),
(69, 'Süß und intensiv, perfekt für den Abend.'),
(70, 'Fruchtig und blumig, ideal für warme Tage.'),
(71, 'Ein starker, femininer Duft, ideal für den Winter.'),
(72, 'Ein intensiver Duft, der an Oud und orientalische Noten erinnert.'),
(73, 'Warm und holzig, mit einer Basis aus Amber.'),
(74, 'Ein moschusartiger Duft, perfekt für die kalten Tage.'),
(75, 'Süß und blumig, mit einer orientalischen Note.'),
(76, 'Ein süßer, blumiger Duft von Mancera, ideal für den Sommer.'),
(77, 'Intensiv und orientalisch, perfekt für den Abend.'),
(78, 'Fruchtig und blumig, ein femininer Duft.'),
(79, 'Ein einzigartiger Duft mit warmen, süßen Noten.'),
(80, 'Ein kräftiger, maskuliner Duft mit würzigen Noten.'),
(81, 'Ein blumig-weicher Duft, ideal für besondere Anlässe.'),
(82, 'Würzig und holzig, mit einer warmen Basis.'),
(83, 'Ein starker, maskuliner Duft, ideal für kältere Tage.'),
(84, 'Holzig und frisch, ideal für den Alltag.'),
(85, 'Intensiv und orientalisch, perfekt für den Abend.'),
(86, 'Sinnlich und exotisch, ein femininer Duft.'),
(87, 'Floraler Duft, inspiriert von exotischen Blumen.'),
(88, 'Süß und floral, ideal für besondere Anlässe.'),
(89, 'Ein femininer Duft mit einem Hauch von Vanille.'),
(90, 'Blumig und elegant, ein klassischer Duft für den Abend.'),
(91, 'Ein intensiver, warmer Duft, ideal für den Herbst.'),
(92, 'Ein orientalischer Duft, mit einem Hauch von Oud und Gewürzen.'),
(93, 'Holzig und warm, ideal für den Winter.'),
(94, 'Ein süßer, floraler Duft mit einer Basis aus Vanille.'),
(95, 'Ein fruchtiger Duft, inspiriert von exotischen Blüten.'),
(96, 'Frisch und lebendig, ideal für den Sommer.');

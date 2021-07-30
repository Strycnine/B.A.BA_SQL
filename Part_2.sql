/*
  ========================
     DataBase SQL B.A.BA
  ========================
          Partie 2
           Music

⠸⣷⣦⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⠀⠀⠀
⠀⠙⣿⡄⠈⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠔⠊⠉⣿⡿⠁⠀⠀⠀
⠀⠀⠈⠣⡀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠁⠀⠀⣰⠟⠀⠀⠀⣀⣀
⠀⠀⠀⠀⠈⠢⣄⠀⡈⠒⠊⠉⠁⠀⠈⠉⠑⠚⠀⠀⣀⠔⢊⣠⠤⠒⠊⠉⠀⡜
⠀⠀⠀⠀⠀⠀⠀⡽⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⡔⠊⠁⠀⠀⠀⠀⠀⠀⠇
⠀⠀⠀⠀⠀⠀⠀⡇⢠⡤⢄⠀⠀⠀⠀⠀⡠⢤⣄⠀⡇⠀⠀⠀⠀⠀⠀⠀⢰⠀
⠀⠀⠀⠀⠀⠀⢀⠇⠹⠿⠟⠀⠀⠤⠀⠀⠻⠿⠟⠀⣇⠀⠀⡀⠠⠄⠒⠊⠁⠀
⠀⠀⠀⠀⠀⠀⢸⣿⣿⡆⠀⠰⠤⠖⠦⠴⠀⢀⣶⣿⣿⠀⠙⢄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢻⣿⠃⠀⠀⠀⠀⠀⠀⠀⠈⠿⡿⠛⢄⠀⠀⠱⣄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢸⠈⠓⠦⠀⣀⣀⣀⠀⡠⠴⠊⠹⡞⣁⠤⠒⠉⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣠⠃⠀⠀⠀⠀⡌⠉⠉⡤⠀⠀⠀⠀⢻⠿⠆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠰⠁⡀⠀⠀⠀⠀⢸⠀⢰⠃⠀⠀⠀⢠⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢶⣗⠧⡀⢳⠀⠀⠀⠀⢸⣀⣸⠀⠀⠀⢀⡜⠀⣸⢤⣶⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠻⣿⣦⣈⣧⡀⠀⠀⢸⣿⣿⠀⠀⢀⣼⡀⣨⣿⡿⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠈⠻⠿⠿⠓⠄⠤⠘⠉⠙⠤⢀⠾⠿⣿⠟⠋
*/

-- ===========================
--   Création de la database
-- ===========================

CREATE DATABASE IF NOT EXISTS MUSIC;


-- ============================
--   Selection de la database
-- ============================

USE MUSIC;


-- =======================
--   Création des tables
-- =======================

CREATE TABLE Concert
(
    nom VARCHAR(30) PRIMARY KEY NOT NULL,
    nomOrchestre VARCHAR(30),
    date DATE,
    lieu VARCHAR(30),
    prix INT,
    FOREIGN KEY (nomOrchestre) REFERENCES Orchestre(nom)
);
CREATE TABLE Musicien
(
    nom VARCHAR(30) PRIMARY KEY NOT NULL,
    instrument VARCHAR(30),
    anneeExperience INT,
    nomOrchestre VARCHAR(30),
    FOREIGN KEY (nomOrchestre) REFERENCES Orchestre(nom)
);
CREATE TABLE Orchestre
(
    nom VARCHAR(30) PRIMARY KEY NOT NULL,
    style VARCHAR(30),
    chef VARCHAR(30)
);


-- =========================================
--   Insertion des valeurs dans les tables
-- =========================================

INSERT INTO Concert (nom, nomOrchestre, date, lieu, prix)
VALUES
('Ultrall', 'orchestre1', '2021-06-15', 'Stade de France', 500),
('Die rich or trie dying', 'orchestre2', '2004-09-03', 'Zenith', 100),
('Ultral', 'orchestre2', '2014-09-05', 'NY', 600),
('Life', 'orchestre3', '2020-11-22', 'Dubai', 400),
('Fiestea', 'orchestre3', '2010-07-12', 'Miami', 50),
('Power', 'orchestre2', '1997-08-16', 'Douala', 1000),
('Mozart', 'orchestre5', '2019-04-20', 'Opéra Bastille', 10),
('Zen', 'orchestre7', '2015-02-22', 'LA', 50),
('Relax', 'orchestre6', '2016-01-01', 'PARIS', 200);

INSERT INTO Musicien (nom, instrument, anneeExperience, nomOrchestre)
VALUES
('Yannick', 'guitare', 10, 'orchestre1'),
('Patrick', 'piano', 10, 'orchestre1'),
('Cedric', 'violon', 10, 'orchestre1'),
('Jordan', 'batterie', 2, 'orchestre2'),
('Gaelle', 'saxophone', 4, 'orchestre3'),
('Georges', 'harmonica', 20, 'orchestre6');

INSERT INTO Orchestre (nom, style, chef)
VALUES
('orchestre1', 'jazz', 'leonardo'),
('orchestre2', 'pop', 'michaelgelo'),
('orchestre3', 'rnb', 'raphael'),
('orchestre4', 'house', 'donatello'),
('orchestre5', 'classic', 'Smith'),
('orchestre6', 'classic', 'Smith'),
('orchestre7', 'blues', 'Ray');


-- =============
--   Questions
-- =============

-- Question mf01 :
SELECT nom FROM Musicien WHERE anneeExperience<5;

-- Question mf02 :
SELECT instrument FROM Musicien WHERE UPPER(nomOrchestre) LIKE 'JAZZ92';

-- Question mf03 :
SELECT * FROM Musicien WHERE instrument='violon';

-- Question mf04 :
SELECT instrument FROM Musicien WHERE anneeExperience>=20;

-- Question mf05 :
SELECT nom FROM Musicien WHERE anneeExperience BETWEEN 5 AND 10;

-- Question mf06 :
SELECT instrument FROM Musicien WHERE LOWER(instrument) LIKE 'vio%';

-- Question mf07 :
SELECT nom FROM Orchestre WHERE LOWER(style) LIKE 'jazz';

-- Question mf08 :
SELECT nom FROM Orchestre
WHERE LOWER(chef) LIKE 'john' OR LOWER(chef) LIKE 'smith';

-- Question mf09 :
SELECT nom FROM Concert ORDER BY nom;

-- Question mf10 :
SELECT nom FROM Concert WHERE date='2015-12-31' AND LOWER(lieu)='versailles';

-- Question mf11 :
SELECT lieu FROM Concert WHERE prix<150;

-- Question mf12 :
SELECT nom FROM Concert WHERE lieu='Opéra Bastille' AND prix<50;

-- Question mf13 :
SELECT nom FROM Concert WHERE date LIKE '2014%';

-- ========================================

-- Question mmtj01 :
SELECT Musicien.nom, instrument FROM Musicien
JOIN Orchestre ON Musicien.nomOrchestre=Orchestre.nom
WHERE anneeExperience>=3 AND style='jazz';

-- Question mmtj02 :
SELECT lieu FROM Concert
JOIN Orchestre ON Concert.nomOrchestre=Orchestre.nom
WHERE chef='Smith' AND prix<=20
ORDER BY lieu;

-- Question mmtj3 :
SELECT COUNT(style) FROM Orchestre
JOIN Concert ON Orchestre.nom=Concert.nomOrchestre
WHERE style='jazz' AND date LIKE '2015%';

-- Question mmtj04
SELECT AVG(prix) FROM Concert
JOIN Orchestre ON Concert.nomOrchestre=Orchestre.nom
WHERE style='jazz' ORDER BY lieu;

-- Question mmtj05 :
SELECT instrument FROM Musicien
JOIN Concert ON Musicien.nomOrchestre=Concert.nomOrchestre
JOIN Orchestre ON Musicien.nomOrchestre=Orchestre.nom
WHERE chef='Smith' AND date='2016-01-01';

-- Question mmtj21 :
SELECT AVG(anneeExperience) FROM Musicien
JOIN Orchestre ON Musicien.nomOrchestre=Orchestre.nom
WHERE chef='Smith' AND instrument='trompette'
GROUP BY style;

-- ========================================

-- Question mmts01 :
SELECT nom, instrument FROM Musicien
WHERE anneeExperience>=3
AND nomOrchestre IN (SELECT nom FROM Orchestre WHERE style='jazz')
ORDER BY nom;

-- Question mmts02 :
SELECT lieu FROM Concert
WHERE prix<=20
AND nomOrchestre IN (SELECT nom FROM Orchestre WHERE chef='Smith')
ORDER BY lieu;

-- Question mmts03 :
SELECT COUNT(date) FROM Concert
WHERE date LIKE '2015%'
AND nomOrchestre IN (SELECT nom FROM Orchestre WHERE style='blues');

-- Question mmts04 : (manque NY)
SELECT lieu, AVG(prix) FROM Concert
WHERE nomOrchestre IN (SELECT nom FROM Orchestre WHERE style='jazz')
GROUP BY lieu;

-- Question mmts05 :
SELECT instrument FROM Musicien
WHERE nomOrchestre IN (SELECT nomOrchestre FROM Concert WHERE date='2016-01-01')
AND nomOrchestre IN (SELECT nom FROM Orchestre WHERE chef='Smith');


-- =======
--   FIN
-- =======

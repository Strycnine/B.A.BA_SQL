/*
      ========================
         DataBase SQL B.A.BA
      ========================
              Partie 3
                Vin

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

CREATE DATABASE IF NOT EXISTS WINE;


-- ============================
--   Selection de la database
-- ============================

USE WINE;


-- =======================
--   Création des tables
-- =======================

CREATE TABLE Vin
(
    numVin INT NOT NULL,
    appellation VARCHAR(50),
    couleur VARCHAR(30),
    annee INT,
    degre INT,
    PRIMARY KEY (numVin)
);
CREATE TABLE Producteur
(
    numProd INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR(30),
    domaine VARCHAR(50),
    region VARCHAR(30),
    PRIMARY KEY (numProd)
);
CREATE TABLE Recolte
(
    nProd INT,
    nVin INT,
    quantite INT
);


-- ====================================
--   Création des références de table
-- ====================================

ALTER TABLE Recolte ADD FOREIGN KEY (nProd) REFERENCES Producteur(numProd);

ALTER TABLE Recolte ADD FOREIGN KEY (nVin) REFERENCES Vin(numVin);


-- =========================================
--   Insertion des valeurs dans les tables
-- =========================================

INSERT INTO Vin (numVin, appellation, couleur, annee, degre)
VALUES
(1, 'Château Villa Bel-Air', 'Rouge', 2014, 13),
(2, 'Domaine Roblet-Monnot', 'Rouge', 2017, 13),
(3, 'La Fussière', 'Rouge', 2017, 13),
(4, 'Mistral AOC', 'Rouge', 2004, 15),
(5, 'La Grange Oncle Charles', 'Blanc', 2018, 13),
(6, 'Vieilles Vignes', 'Blanc', 2017, 13),
(7, 'Genevrière', 'Blanc', 1999, 13),
(8, 'Cremant du Jura Blanc', 'Blanc', 2015, 15),
(9, 'Syrah Leone', 'Rosé', 1995, 15),
(10, 'Domaine Chapelas Rosé', 'Rosé', 2004, 14),
(20, 'Vieilles Vignes', 'Blanc', 2000, 15);

INSERT INTO Producteur (nom, domaine, region)
VALUES
('producteur1', 'Graves', 'Bordeaux'),
('producteur2', 'Domaine Roblet-Monnot', 'Bourgogne'),
('producteur3', 'Domaine des Rouges', 'Bourgogne'),
('Dupont', 'Domaines Marcel Richaud', 'Côte du Rhône'),
('producteur5', 'La Grange Oncle', 'Alsace'),
('producteur6', 'Domaine Pierre Labet', 'Bourgogne'),
('Dupond', 'Domaine Mikulski', 'Bourgogne'),
('producteur8', 'Domaine Tissot', 'Jura'),
('producteur9', 'Domaine Peyre Rose', 'Languedoc Roussillon'),
('producteur10', 'Domaine Chapelas', 'Côte du Rhône'),
('producteur11', 'Domaine Pierre Labet', 'Côte du Rhône');

INSERT INTO Recolte (nProd, nVin, quantite)
VALUES
(1, 1, 20),
(2, 2, 40),
(3, 3, 50),
(4, 4, 100),
(5, 5, 70),
(6, 6, 90),
(7, 7, 200),
(8, 8, 5),
(9, 9, 25),
(10, 10, 100),
(11, 20, 70);


-- =============
--   Questions
-- =============

-- Question vf01 :
SELECT appellation FROM Vin WHERE annee=1995;

-- Question vf02 :
SELECT appellation, couleur, annee FROM Vin WHERE annee>=2000;

-- Question vf03 :
SELECT appellation FROM Vin WHERE annee BETWEEN 2000 AND 2009;

-- Question vf04 :
SELECT appellation FROM Vin WHERE couleur='Blanc' AND degre>14;

-- Question vf05 :
SELECT appellation FROM Vin WHERE appellation LIKE '%AOC';

-- Question vf06 :
SELECT domaine FROM Producteur WHERE region='Bordeaux';

-- Question vf07 :
SELECT nom, region FROM Producteur WHERE numProd=5;

-- Question vf08 :
SELECT nom FROM Producteur WHERE region='Beaujolais';

-- question vf09 :
SELECT nom FROM Producteur WHERE nom LIKE 'Dupon%';

-- Question vf10 :
SELECT nom FROM Producteur ORDER BY nom;

-- ========================================

-- Question vm01 :
SELECT annee FROM Vin GROUP BY annee HAVING MAX(degre) ORDER BY annee DESC;

-- Question vm02 :
SELECT * FROM Vin WHERE degre>(SELECT AVG(degre) FROM Vin) ORDER BY couleur, degre DESC;

-- Question vm03 :
SELECT appellation, couleur, MIN(degre), MAX(degre) FROM Vin GROUP BY appellation, couleur;

-- ========================================

-- Question vmtj01 :
SELECT nom FROM Producteur
JOIN Recolte ON Producteur.numProd=Recolte.nProd
WHERE nVin=20 AND quantite>=20;

-- Question vmtj02 :
SELECT quantite FROM Recolte
JOIN Vin ON Recolte.nVin=Vin.numVin
WHERE annee=2004 AND couleur='Rouge';

-- Question vmtj03 :
SELECT annee, COUNT(couleur) FROM Vin WHERE couleur='Blanc' GROUP BY annee;

-- Question vmtj04 :
SELECT annee, AVG(degre) FROM Vin WHERE couleur='Blanc' GROUP BY annee;

-- Question vmtj05 :
SELECT nom, domaine FROM Producteur
JOIN Recolte ON Producteur.numProd=Recolte.nProd
JOIN Vin ON Recolte.nVin=Vin.numVin
WHERE couleur='Rouge';

-- Question vmtj21 :
SELECT appellation, numProd, quantite FROM Vin
JOIN Recolte ON Vin.numVin=Recolte.nVin
JOIN Producteur ON Recolte.nProd=Producteur.numProd
WHERE annee=1999 AND quantite>=200;

-- ========================================

-- Question vmts01 :
SELECT nom FROM Producteur
WHERE numProd IN (SELECT nProd FROM Recolte WHERE nVin=20 AND quantite>=200);

-- Question vmts02 :
SELECT SUM(quantite) FROM Recolte
WHERE nVin IN (SELECT numVin FROM Vin WHERE couleur='Rouge' AND annee=2014);

-- Question vmts04 :
SELECT annee, AVG(degre) FROM Vin WHERE couleur='Blanc' GROUP BY annee;

-- Question vmts05 :
SELECT nom, domaine FROM Producteur
WHERE numProd IN (
  SELECT nProd FROM Recolte WHERE nVin IN (
    SELECT numVin FROM Vin WHERE couleur='Rouge'));


-- =======
--   FIN
-- =======

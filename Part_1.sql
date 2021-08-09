/*
     ========================
        DataBase SQL B.A.BA
     ========================
             Partie 1
               BTP

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
CREATE DATABASE IF NOT EXISTS S6_MVC_BTP;


-- ============================
--   Selection de la database
-- ============================
USE S6_MVC_BTP;


-- =======================
--   Création des tables
-- =======================
CREATE TABLE client
(
    id INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR(30),
    anneeNaiss INT,
    ville VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE TABLE fournisseur
(
    id INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR(30),
    age INT,
    ville VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE TABLE produit
(
    label VARCHAR(30) NOT NULL,
    idF INT,
    prix INT,
    PRIMARY KEY (label,idF)
);
CREATE TABLE commande
(
    num INT NOT NULL,
    idC INT,
    labelP VARCHAR(30),
    quantite INT,
    PRIMARY KEY (num,idC,labelP)
);


-- =========================================
--   Insertion des valeurs dans les tables
-- =========================================
INSERT INTO client (nom, anneeNaiss, ville)
VALUES
('Jean', 1965, '75006 Paris'),
('Paul', 1958, '75003 Paris'),
('Vincent', 1954, '94200 Evry'),
('Pierre', 1950, '92400 Courbevoie'),
('Daniel', 1963, '44000 Nantes');

INSERT INTO fournisseur (nom, age, ville)
VALUES
('Abounayan', 52, '92190 Meudon'),
('Cima', 37, '44150 Nantess'),
('Preblocs', 48, '92230 Gennevillers'),
('Samaco', 61, '75018 Paris'),
('Damasco', 29, '49100 Angers');

INSERT INTO produit (label, idF, prix)
VALUES
('Sable', 1, 300),
('Briques', 1, 1500),
('Parpaing', 1, 1150),
('Sable', 2, 350),
('Tuiles', 3, 1200),
('Parpaing', 3, 1200),
('Briques', 4, 1200),
('Ciment', 4, 1200),
('Parpaing', 4, 1200),
('Briques', 5, 1200),
('Tuiles', 5, 1200);

INSERT INTO commande (num, idC, labelP, quantite)
VALUES
(1, 1, 'Briques', 5),
(1, 1, 'Ciment', 10),
(2, 2, 'Briques', 12),
(2, 2, 'Sable', 9),
(2, 2, 'Parpaing', 15),
(3, 3, 'Sable', 17),
(4, 4, 'Briques', 8),
(4, 4, 'Tuiles', 17),
(5, 5, 'Parpaing', 10),
(5, 5, 'Ciment', 14),
(6, 5, 'Briques', 21),
(7, 2, 'Ciment', 12),
(8, 4, 'Parpaing', 8),
(9, 1, 'Tuiles', 15);


-- =============
--   Questions
-- =============

-- Question 1 :
SELECT * FROM client;

-- Question 2 :
SELECT nom, anneeNaiss, ville FROM client;

-- Question 3 :
SELECT nom From client WHERE anneeNaiss < 1971;

-- Question 4 :
SELECT DISTINCT label FROM produit;

-- Question 5 :
SELECT DISTINCT label FROM produit ORDER BY label DESC;

-- Question 6 :
-- a :
SELECT * FROM commande WHERE quantite BETWEEN 8 AND 18;
-- b :
SELECT * FROM commande WHERE (quantite > 7) AND (quantite <= 18);

-- Question 7 :
SELECT nom, ville FROM client WHERE nom LIKE 'P%';

-- Question 8 :
SELECT nom FROM fournisseur WHERE ville LIKE '%Paris';

-- Question 9 :
SELECT label, idF, prix FROM produit WHERE (label = 'Briques') OR (label = 'Parpaing');
SELECT label, idF, prix FROM produit WHERE label IN ('Briques', 'Parpaing');

-- Qestion 10 :
SELECT nom, labelP, quantite FROM client JOIN commande ON client.id = commande.idC;
-- 14 sortie

-- Question 11 :
SELECT nom, labelP FROM client, commande WHERE client.id = commande.idC;
-- 14 sortie

-- Question 12 :
SELECT nom FROM client JOIN commande ON client.id = commande.idC WHERE labelP = 'Briques' ORDER BY nom;

-- Question 13 :
SELECT DISTINCT nom FROM fournisseur JOIN produit ON fournisseur.id = produit.idF WHERE (label='Briques') OR (label='Parpaing');
SELECT DISTINCT nom FROM fournisseur WHERE id IN (SELECT idF FROM produit WHERE label IN ('Briques', 'Parpaing'));

-- Question 13 : (Doublon sur le Brief)
SELECT label FROM produit JOIN fournisseur ON produit.idF = fournisseur.id WHERE ville LIKE '%Paris';
SELECT label FROM produit, fournisseur WHERE produit.idF = fournisseur.id AND ville LIKE '%Paris';
SELECT label FROM produit WHERE idF IN (SELECT id FROM fournisseur WHERE ville LIKE '%Paris');

-- Question 14 :
SELECT nom, ville FROM client JOIN commande ON client.id = commande.idC WHERE (labelP = 'Briques') AND (quantite > 10) AND (quantite < 15);

-- Question 15 :
SELECT fournisseur.nom, label, prix
FROM fournisseur
JOIN produit ON fournisseur.id=produit.idF
JOIN commande ON produit.label=commande.labelF
JOIN client ON client.id=commande.idC
WHERE client.nom='Jean';
--
SELECT nom, label, prix FROM fournisseur
JOIN produit ON fournisseur.id = produit.idF
WHERE label IN (
  SELECT labelP FROM commande WHERE idC IN (
    SELECT id FROM client WHERE nom = 'Jean'));
--
SELECT fournisseur.nom, produit.label, produit.prix FROM fournisseur
WHERE id IN (
  SELECT idF FROM produit WHERE label IN (
    SELECT labelP FROM commande WHERE idC IN (
      SELECT id FROM client WHERE nom='JEAN')));

-- Question 16 :
SELECT DISTINCT fournisseur.nom, label, prix
FROM client, commande, produit, fournisseur
WHERE client.id=commande.idC AND fournisseur.id=produit.idF
AND produit.label=commande.labelP AND client.nom = 'Jean'
ORDER BY nom DESC,label;

-- Question 17 :
SELECT label, AVG(prix) FROM produit GROUP BY label;

-- Question 18 :
SELECT label, AVG(prix) FROM produit GROUP BY label HAVING AVG(prix)>1200;

-- Question 20 :
SELECT label, prix FROM produit WHERE prix < (SELECT AVG(prix) FROM produit);

-- Question 21 :
SELECT label, AVG(prix) FROM produit GROUP BY label HAVING COUNT(label)>=3;


-- =======
--   FIN
-- =======

-- Insertions dans la table parcoursRandonnee
INSERT INTO PARCOURSRANDONNEE (id_P, nom_P, description_P) VALUES (1, 'Parcours A', 'Parcours reliant Orléans à Vierzon via Tours, Bourges et Châteauroux');
INSERT INTO PARCOURSRANDONNEE (id_P, nom_P, description_P) VALUES (2, 'Parcours B', 'Parcours reliant Orléans à Blois via Villeloin-Coulangé et Chailles');

-- Insertions dans la table TYPESOL
INSERT INTO TYPESOL (id_Type_Sol, nom_Type_Sol, description_Type_Sol) VALUES (1, 'Terre', 'Type de sol composé de terre');
INSERT INTO TYPESOL (id_Type_Sol, nom_Type_Sol, description_Type_Sol) VALUES (2, 'Gravier', 'Type de sol composé de gravier');
INSERT INTO TYPESOL (id_Type_Sol, nom_Type_Sol, description_Type_Sol) VALUES (3, 'Bitume', 'Type de sol revêtu de bitume');

-- Insertions dans la table categorieConfort
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (1, 'Désert', 'Étape dans un environnement désertique');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (2, 'Vallée', 'Étape dans une vallée pittoresque');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (3, 'Campagne', 'Étape dans une région rurale');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (4, 'Rivière', 'Étape près d''une rivière ou d''un cours d''eau');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (5, 'Forêt', 'Étape au cœur de la forêt');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (6, 'Plage', 'Étape près d''une plage');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (7, 'Montagne', 'Étape en montagne avec des vues panoramiques');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (8, 'Camping', 'Étape dans une zone de camping');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (9, 'Refuge', 'Étape près d''un refuge ou d''un abri');
INSERT INTO CATEGORIECONFORT (id_Cat, nom_Cat, description_Cat) VALUES (10, 'Ville', 'Étape située dans une ville');

-- Insertions dans la table etape
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (1, 'Orléans', 47.9029, 1.9098, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (2, 'Villeloin-Coulangé', 47.1789, 0.9783, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (3, 'Tours', 47.3941, 0.6848, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (4, 'Aubigny-sur-Nère', 47.4734, 2.3944, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (5, 'Bourges', 47.0834, 2.3986, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (6, 'Chailles', 47.5842, 1.1888, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (7, 'Blois', 47.5886, 1.3327, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (8, 'Valençay', 47.1602, 1.5675, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (9, 'Châteauroux', 46.8108, 1.6911, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (10, 'Vierzon', 47.2224, 2.0747, 10);

-- Insertions dans la table troncon
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (1, 'Orléans - Villeloin-Coulangé', 58, 1, 20, 1, 2);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (2, 'Villeloin-Coulangé - Tours', 38, 1, 15, 2, 3);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (3, 'Tours - Aubigny-sur-Nère', 155, 2, 50, 3, 4);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (4, 'Aubigny-sur-Nère - Bourges', 35, 2, 10, 4, 5);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (5, 'Bourges - Chailles', 78, 2, 30, 5, 6);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (6, 'Chailles - Blois', 45, 1, 20, 6, 7);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (7, 'Blois - Valençay', 75, 3, 40, 7, 8);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (8, 'Valençay - Châteauroux', 54, 3, 25, 8, 9);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (9, 'Châteauroux - Vierzon', 85, 3, 40, 9, 10);


-- Insertions dans la table CONTIENT
INSERT INTO CONTIENT (id_T, id_P) VALUES (1, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (2, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (3, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (4, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (5, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (6, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (7, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (8, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (9, 1);

INSERT INTO CONTIENT (id_T, id_P) VALUES (1, 2);
INSERT INTO CONTIENT (id_T, id_P) VALUES (2, 2);
INSERT INTO CONTIENT (id_T, id_P) VALUES (6, 2);

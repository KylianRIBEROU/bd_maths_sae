-- Insertions dans la table parcoursRandonnee
INSERT INTO PARCOURSRANDONNEE (id_P, nom_P, description_P) VALUES (1, 'Parcours A', 'Parcours avec vue sur les montagnes');
INSERT INTO PARCOURSRANDONNEE (id_P, nom_P, description_P) VALUES (2, 'Parcours B', 'Parcours à travers la forêt');

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
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (1, 'Prati', 45.1234, -73.5678, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (2, 'L''Onda', 45.2345, -73.6789, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (3, 'La Jetee', 45.3456, -73.7890, 10);
INSERT INTO ETAPE (code_E, nom_E, latitude, longitude, id_Cat) VALUES (4, 'Bouscade', 45.4567, -73.8901, 10);

-- Insertions dans la table troncon
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (1, 'Tronçon 1', 5.7, 1, 200, 1, 2);
INSERT INTO TRONCON (id_T, nom_T, distance, id_Type_Sol, denivele_Moyen, code_E1, code_E2) VALUES (2, 'Tronçon 2', 8.2, 2, 300, 3, 4);

-- Insertions dans la table CONTIENT
INSERT INTO CONTIENT (id_T, id_P) VALUES (1, 1);
INSERT INTO CONTIENT (id_T, id_P) VALUES (2, 1);

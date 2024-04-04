INSERT INTO parcoursRandonnee (idP, nomP, descriptionP) VALUES (1, 'Parcours A', 'Parcours avec vue sur les montagnes');
INSERT INTO parcoursRandonnee (idP, nomP, descriptionP) VALUES (2, 'Parcours B', 'Parcours à travers la forêt');

-- Insertion dans la table categorieConfort
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (1, 'Désert', 'Étape dans un environnement désertique');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (2, 'Vallée', 'Étape dans une vallée pittoresque');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (3, 'Campagne', 'Étape dans une région rurale');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (4, 'Rivière', 'Étape près d''une rivière ou d''un cours d''eau');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (5, 'Forêt', 'Étape au cœur de la forêt');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (6, 'Plage', 'Étape près d''une plage');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (7, 'Montagne', 'Étape en montagne avec des vues panoramiques');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (8, 'Camping', 'Étape dans une zone de camping');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (9, 'Refuge', 'Étape près d''un refuge ou d''un abri');
INSERT INTO categorieConfort (idCat, nomCat, descriptionCat) VALUES (10, 'Ville', 'Étape située dans une ville');

-- Insertion dans la table etape
INSERT INTO etape (codeE, nomE, latitude, longitude, idCat) VALUES (1, 'Prati', 45.1234, -73.5678, 10);
INSERT INTO etape (codeE, nomE, latitude, longitude, idCat) VALUES (2, 'L''Onda', 45.2345, -73.6789, 10);
INSERT INTO etape (codeE, nomE, latitude, longitude, idCat) VALUES (3, 'La Jetee', 45.3456, -73.7890, 10);
INSERT INTO etape (codeE, nomE, latitude, longitude, idCat) VALUES (4, 'Bouscade', 45.4567, -73.8901, 10);

INSERT INTO troncon (idT, nomT, distance, typeSol, deniveleMoyen, codeE_depart, codeE_arrivee, idParcours) VALUES (1, 'Tronçon 1', 5.7, 'Terre', 200, 1, 2, 1);
INSERT INTO troncon (idT, nomT, distance, typeSol, deniveleMoyen, codeE_depart, codeE_arrivee, idParcours) VALUES (2, 'Tronçon 2', 8.2, 'Cailloux', 300, 3, 4, 1);

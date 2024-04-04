INSERT INTO Troncon (idTroncon, nomUsuel, pointDep, pointArrivee, distance, ptsInteret, indiceQualite)
VALUES 
(345, 'chemin vert', 'Orleans', 'Olivet', 10, 
        pointInteret(PointInteretType(1, 'Jardin de plantes', 'jardin public'),
                     PointInteretType(2, 'Monument aux morts', 'monument'),
                     PointInteretType(3, 'Eglise XX', 'lieu de culte')), 
        indiceQualiteList(IndiceQualiteType(1, 'difficulte', 3, 4),
                          IndiceQualiteType(2, 'Securité', 4, 5)));

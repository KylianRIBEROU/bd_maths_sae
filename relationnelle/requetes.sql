-- Donner les noms des étapes que nous pouvons atteindre directement en suivant les tronçons qui partent d'Orléans.

SELECT e.nom_E
FROM Etape e
INNER JOIN Troncon t ON e.code_E = t.code_E2
INNER JOIN Etape e_orleans ON e_orleans.code_E = t.code_E1
WHERE e_orleans.nom_E = 'Orléans';

-- Pour obtenir la liste des étapes accessibles depuis Orléans avec une seule étape intermédiaire

SELECT DISTINCT e3.nom_E
FROM Etape e1
INNER JOIN Troncon t1 ON e1.code_E = t1.code_E1
INNER JOIN Etape e2 ON t1.code_E2 = e2.code_E
INNER JOIN Troncon t2 ON e2.code_E = t2.code_E1
INNER JOIN Etape e3 ON t2.code_E2 = e3.code_E
WHERE e1.nom_E = 'Orléans' AND e3.nom_E != 'Orléans';

-- Pour obtenir la liste des étapes accessibles depuis Orléans avec un nombre quelconque d'étapes intermédiaires

SELECT DISTINCT nom_E
FROM (
    SELECT e.nom_E, CONNECT_BY_ROOT e_orleans.nom_E AS depart, LEVEL AS niveau
    FROM Troncon t
    JOIN Etape e ON t.code_E2 = e.code_E
    JOIN Etape e_orleans ON t.code_E1 = e_orleans.code_E
    START WITH e_orleans.nom_E = 'Orléans'
    CONNECT BY NOCYCLE PRIOR t.code_E2 = t.code_E1
)
WHERE depart = 'Orléans';

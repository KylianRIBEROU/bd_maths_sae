CREATE OR REPLACE TYPE PointInteretType AS OBJECT(
    idPI NUMBER,
    nom VARCHAR2(100),
    type VARCHAR2(100)
);
/
CREATE TYPE pointInteret as table of PointInteretType;
/
CREATE OR REPLACE TYPE IndiceQualiteType AS OBJECT (
    idIndiceQualite INT,
    nom VARCHAR(50),
    valeur INT,
    poids INT,
    MEMBER FUNCTION get_Impact RETURN NUMBER
);
/
CREATE OR REPLACE TYPE BODY IndiceQualiteType AS
    MEMBER FUNCTION get_Impact RETURN NUMBER IS
    BEGIN 
        RETURN self.valeur * self.poids;
    END;
END;
/
CREATE or replace TYPE indiceQualiteList as VARRAY(2) OF IndiceQualiteType;
/
CREATE TABLE Troncon (
    idTroncon INT PRIMARY KEY,
    nomUsuel VARCHAR(50),
    pointDep VARCHAR(50),
    pointArrivee VARCHAR(50),
    distance INT,
    ptsInteret pointInteret,    
    indiceQualite indiceQualiteList
) NESTED TABLE ptsInteret STORE AS pointsInteretTable;
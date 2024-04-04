CREATE TABLE parcoursRandonnee (
    idP INT PRIMARY KEY,
    nomP VARCHAR(50),
    descriptionP VARCHAR(200)
);

CREATE TABLE categorieConfort (
    idCat INT PRIMARY KEY,
    nomCat VARCHAR(50),
    descriptionCat VARCHAR(200)
);

CREATE TABLE etape (
    codeE INT PRIMARY KEY,
    nomE VARCHAR(50),
    latitude FLOAT,
    longitude FLOAT,
    idCat INT,
    FOREIGN KEY (idCat) REFERENCES categorieConfort(idCat)
);

CREATE TABLE troncon (
    idT INT PRIMARY KEY,
    nomT VARCHAR(50),
    distance FLOAT, 
    typeSol VARCHAR(50),
    deniveleMoyen FLOAT,
    codeE_depart INT NOT NULL,
    codeE_arrivee INT NOT NULL,
    idParcours INT,
    FOREIGN KEY (codeE_depart) REFERENCES etape(codeE),
    FOREIGN KEY (codeE_arrivee) REFERENCES etape(codeE),
    FOREIGN KEY (idParcours) REFERENCES parcoursRandonnee(idP)
);

CREATE TABLE CATEGORIECONFORT (
    id_Cat INT PRIMARY KEY,
    nom_Cat VARCHAR(50),
    description_Cat VARCHAR(200)
);

CREATE TABLE TYPESOL (
    id_Type_Sol INT PRIMARY KEY,
    nom_Type_Sol VARCHAR(50),
    description_Type_Sol VARCHAR(200)
);


CREATE TABLE ETAPE (
    code_E INT PRIMARY KEY,
    nom_E VARCHAR(50),
    latitude FLOAT,
    longitude FLOAT,
    id_Cat INT,
    FOREIGN KEY (id_Cat) REFERENCES CATEGORIECONFORT(id_Cat)
);

CREATE TABLE PARCOURSRANDONNEE (
    id_P INT PRIMARY KEY,
    nom_P VARCHAR(50),
    description_P VARCHAR(200)
);

CREATE TABLE TRONCON (
    id_T INT PRIMARY KEY,
    nom_T VARCHAR(50),
    distance FLOAT,
    denivele_Moyen FLOAT,
    id_Type_Sol INT,
    code_E1 INT,
    code_E2 INT,
    FOREIGN KEY (id_Type_Sol) REFERENCES TYPESOL(id_Type_Sol),
    FOREIGN KEY (code_E1) REFERENCES ETAPE(code_E),
    FOREIGN KEY (code_E2) REFERENCES ETAPE(code_E)
);



CREATE TABLE CONTIENT (
    id_T INT,
    id_P INT,
    FOREIGN KEY (id_T) REFERENCES TRONCON(id_T),
    FOREIGN KEY (id_P) REFERENCES PARCOURSRANDONNEE(id_P),
    PRIMARY KEY (id_T, id_P)
);

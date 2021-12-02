DROP TABLE IF EXISTS Bateaux;
DROP TABLE IF EXISTS Sauveteurs;
DROP TABLE IF EXISTS Sauves;
DROP TABLE IF EXISTS Sauvetage;
DROP TABLE IF EXISTS Decorations;
DROP TABLE IF EXISTS ActionSauvetages;

CREATE TABLE Bateaux(
    idBateau NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    idNomBateau VARCHAR(15),
    lienImageBateau VARCHAR(40),
    descriptionBateau VARCHAR(1000),
    CONSTRAINT pk_bateau PRIMARY KEY (idBateau)
);

CREATE TABLE Sauveteurs(
    idSauveteur NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur VARCHAR(15),
    descriptionSauveteur VARCHAR(1000),
    etatCivil VARCHAR(1000),
    donneesgenealogiques VARCHAR(1000),
    nbSauve INTEGER(3),
    Carrierre VARCHAR(1000),    
    CONSTRAINT pk_sauveteur PRIMARY KEY (idSauveteur)   
);

CREATE TABLE Decorations(
    idDecoration NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur VARCHAR(15),
    dateRemise Date,
    nom VARCHAR(50),
    CONSTRAINT pk_decorations PRIMARY KEY (idDecoration),
    CONSTRAINT fk_decorations_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)
);

CREATE TABLE ActionSauvetages(
    idActionSauvetage NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur VARCHAR(15),
    annee VARCHAR(4),
    descriptionAction VARCHAR(1000)
    CONSTRAINT pk_decorations PRIMARY KEY (idSauveteur),
    CONSTRAINT fk_decorations_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)
);

CREATE TABLE Sauvetages(
    idSauvetage NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur NUMERIC(4),
    titre VARCHAR(10),
    lieuSauvetage VARCHAR(20),
    dateSauvetage DATE,
    nbEquipageSauve INTEGER(3),
    nbSauve INTEGER(3),
    descriptionSauvetage VARCHAR(10000),
    CONSTRAINT pk_sauvetages PRIMARY KEY (idSauvetage),
    CONSTRAINT fk_decorations_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)
);

CREATE TABLE Sauves(
    idSauve NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauve VARCHAR(10),
    nomSauvetage VARCHAR(3),
    CONSTRAINT pk_sauve PRIMARY KEY (idSauve),
    CONSTRAINT fk_decorations_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)  
);
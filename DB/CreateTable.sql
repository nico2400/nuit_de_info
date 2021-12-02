DROP TABLE IF EXISTS Bateaux;
DROP TABLE IF EXISTS Sauveteurs;
DROP TABLE IF EXISTS Sauves;
DROP TABLE IF EXISTS Sauvetage;
DROP TABLE IF EXISTS Decorations;
DROP TABLE IF EXISTS ActionSauvetages;

CREATE TABLE Bateaux(
    idBateau NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomBateau VARCHAR(30),
    lienImageBateau VARCHAR(40),
    descriptionBateau VARCHAR(1000),
    CONSTRAINT pk_bateau PRIMARY KEY (idBateau),
    CONSTRAINT uk_bateau_nombateau UNIQUE (nomBateau)
);

CREATE TABLE Sauveteurs(
    idSauveteur NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur VARCHAR(30),
    imageSauveteur VARCHAR(40),
    anneeNaissance VARCHAR(4),
    anneeMort VARCHAR(4),
    descriptionSauveteur VARCHAR(1000),
    etatCivil VARCHAR(1000),
    donneesgenealogiques VARCHAR(1000),
    nbSauve INTEGER(10),
    Carrierre VARCHAR(1000),    
    CONSTRAINT pk_sauveteur PRIMARY KEY (idSauveteur) ,
    CONSTRAINT uk_sauveteur_nomsauveteur UNIQUE (nomSauveteur)  
);

CREATE TABLE Decorations(
    idDecoration NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur VARCHAR(30),
    dateRemise Date,
    nomDecoration VARCHAR(50),
    CONSTRAINT pk_decorations PRIMARY KEY (idDecoration),
    CONSTRAINT fk_decorations_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)
);

CREATE TABLE ActionSauvetages(
    idActionSauvetage NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur VARCHAR(30),
    annee VARCHAR(4),
    descriptionAction VARCHAR(1000)
    CONSTRAINT pk_actionsauvetages PRIMARY KEY (idActionSauvetage),
    CONSTRAINT fk_actionsauvetages_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)
);

CREATE TABLE Sauvetages(
    idSauvetage NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauveteur NUMERIC(30),
    titre VARCHAR(30),
    lieuSauvetage VARCHAR(20),
    dateSauvetage DATE,
    nbEquipageSauve INTEGER(3),
    nbSauve INTEGER(3),
    descriptionSauvetage VARCHAR(10000),
    nomBateau VARCHAR(15),
    CONSTRAINT pk_sauvetages PRIMARY KEY (idSauvetage),
    CONSTRAINT fk_sauvetages_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur),
    CONSTRAINT fk_sauvetages_nombateau FOREIGN KEY (nomBateau) REFERENCES Bateaux (nomBateau)
);

CREATE TABLE Sauves(
    idSauve NUMERIC(4) NOT NULL AUTO_INCREMENT START WITH 1,
    nomSauve VARCHAR(10),
    nomSauvetage VARCHAR(3),
    CONSTRAINT pk_sauve PRIMARY KEY (idSauve),
    CONSTRAINT fk_sauve_nomsauvetage FOREIGN KEY (nomSauvetage) REFERENCES Sauveteurs (nomSauvetage),
    CONSTRAINT uk_bateau_nombateau UNIQUE (nomBateau) 
);

DROP TABLE IF EXISTS Decorations;
DROP TABLE IF EXISTS ActionSauvetages;
DROP TABLE IF EXISTS Sauveteurs;
DROP TABLE IF EXISTS Sauves;
DROP TABLE IF EXISTS Sauvetage;
DROP TABLE IF EXISTS Bateaux;

CREATE TABLE Bateaux(
    nomBateau VARCHAR(30),
    lienImageBateau VARCHAR(40),
<<<<<<< Updated upstream
    descriptionBateau VARCHAR(10000),
=======
    descriptionBateau VARCHAR(2000),
>>>>>>> Stashed changes
    CONSTRAINT pk_bateau PRIMARY KEY (nomBateau)
);

CREATE TABLE Sauveteurs(
    nomSauveteur VARCHAR(30),
    imageSauveteur VARCHAR(40),
    anneeNaissance VARCHAR(4),
    anneeMort VARCHAR(4),
<<<<<<< Updated upstream
    descriptionSauveteur VARCHAR(10000),
    etatCivil VARCHAR(10000),
    donneesGenealogiques VARCHAR(10000),
    nbSauve INTEGER(10),
    Carriere VARCHAR(10000),    
=======
    descriptionSauveteur VARCHAR(2000),
    etatCivil VARCHAR(2000),
    donneesGenealogiques VARCHAR(2000),
    nbSauve INTEGER(10),
    Carriere VARCHAR(2000),    
>>>>>>> Stashed changes
    CONSTRAINT pk_sauveteur PRIMARY KEY (nomSauveteur)
);

CREATE TABLE Decorations(
    idDecoration int AUTO_INCREMENT PRIMARY KEY,
    nomSauveteur VARCHAR(30),
    dateRemise VARCHAR(20),
    nomDecoration VARCHAR(50),
    CONSTRAINT fk_decorations_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)
);

CREATE TABLE ActionSauvetages(
    idActionSauvetage int AUTO_INCREMENT PRIMARY KEY, 
    nomSauveteur VARCHAR(30),
    annee VARCHAR(4),
<<<<<<< Updated upstream
    descriptionAction VARCHAR(10000),
=======
    descriptionAction VARCHAR(2000),
>>>>>>> Stashed changes
    CONSTRAINT fk_actionsauvetages_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur)
);

CREATE TABLE Sauvetages(
    titre VARCHAR(30),
    nomSauveteur NUMERIC(30),    
    lieuSauvetage VARCHAR(20),
    dateSauvetage DATE,
    nbEquipageSauve INTEGER(3),
    nbSauve INTEGER(3),
<<<<<<< Updated upstream
    descriptionSauvetage VARCHAR(10000),
    nomBateau VARCHAR(15),
=======
    descriptionSauvetage VARCHAR(2000),
    nomBateau VARCHAR(30),
>>>>>>> Stashed changes
    CONSTRAINT pk_sauvetages PRIMARY KEY (titre),
    CONSTRAINT fk_sauvetages_nomsauveteur FOREIGN KEY (nomSauveteur) REFERENCES Sauveteurs (nomSauveteur),
    CONSTRAINT fk_sauvetages_nombateau FOREIGN KEY (nomBateau) REFERENCES Bateaux (nomBateau)
);

CREATE TABLE Sauves(
    nomSauve VARCHAR(10),
    nomSauvetage VARCHAR(3),
    CONSTRAINT pk_sauve PRIMARY KEY (nomSauve),
    CONSTRAINT fk_sauve_nomsauvetage FOREIGN KEY (nomSauvetage) REFERENCES Sauveteurs (nomSauvetage)
<<<<<<< Updated upstream
);
=======
);
>>>>>>> Stashed changes

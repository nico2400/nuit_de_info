INSERT INTO Bateaux (nomBateau, lienImageBateau, descriptionBateau ) VALUES ("ISS", "https://imgur.com/a/1yitCIC","La Station spatiale internationale, en abrégé SSI ou ISS, est un bateau spatial placé en orbite terrestre basse, occupée en permanence par un équipage international, notamment Thomas Pesquet, qui se consacre à la recherche scientifique dans l'environnement spatial." );

INSERT INTO Sauveteurs (nomSauveteur, imageSauveteur, anneeNaissance, anneeMort, descriptionSauveteur, etatCivil, donneesGenealogiques, nbSauve, Carriere) VALUES ("Thomas Pesquet", "https://imgur.com/Ya2B5Bo","1978", NULL, "Thomas Pesquet est l'astronaute français le plus connu du monde. Durant sa carrière il a effectué de nombreux sauvetages dont le plus connus est ", "Naissance le 27 février 1978 à Rouen", "Mariage avec Anne Mottet", 7753000000, "Ingénieur aéronotique <BR> Pilote de ligne <BR> Spationaute");

INSERT INTO Sauvetages (nomSauveteur, titre, lieuSauvetage, dateSauvetage, nbEquipageSauve, nbSauve, descriptionSauvetage, nomBateau) VALUES ("Thomas Pesquet", "Thomas Pesquet sauve l'ISS", "Espace", 2016-11-19, 1, 10, "Lors de son arrivée dans la station spatiale internationale, Thomas Pesquet sauve l'équipage d'un contact avec un iceberg spatial.", "ISS");

INSERT INTO Sauveteurs (nomSauveteur, imageSauveteur, anneeNaissance, anneeMort, descriptionSauveteur, etatCivil, nbSauve, Carriere) VALUES ("Albert Noël Eugène BENTEU","","1876","1914","Né le 2 décembre 1876 – Dunkerque (Nord) - Décédé", "Fils de Leon Fidele Amand BENTEU, né le 17 janvier 1848 – Esquelbecq (Nord) -Décédé le 13 juillet 1914 – Dunkerque (Nord) à l’âge de 66 ans - Eugénie Carolie Blanche CASTEUR, née vers 1847 – Dunkerque (Nord), décédée le 1er octobre 1905 – Dunkerque (Nord) à l’âge d’environ 58 ans - Marié le  2 mars 1903, Dunkerque (Nord), avec Gabrielle Alphonsine MARYN, née le 12 janvier 1880 – Dunkerque (Nord), décédée. - Il est le beau-fils de Frédéric Julien Maryn Pilote trois sauvetages en mer à son actif", 12, "1912  Officier en second sur le steamer Caravellas des Chargeurs Réunis - Albert Benteu commanda, après guerre, les paquebots mixtes Amiral-Latouche-Tréville et Cap-Lay – ex-Halgan –, de la Compagnie des chargeurs réunis. - Surpris par un typhon dans la nuit du 15 au 16 juillet 1928, alors que le Cap-Lay allait de Dunkerque à Haïphong, et se trouvait au mouillage en baie d’Along, à l’entrée de la rivière Haïphongle, le bâtiment fit naufrage dans le golfe du Tonkin. - Il y eut au total 52 victimes : 26 membres d’équipage et 26 passagers. - Poursuivi pour homicides involontaires, Albert Benteu fut finalement relaxé par la Cour d’appel d’Hanoï en Février 1929.");


INSERT INTO Sauveteurs (nomSauveteur, imageSauveteur, anneeNaissance, anneeMort, descriptionSauveteur, etatCivil, nbSauve, Carriere) VALUES ("Jacques Joseph Bommelaer","","1838","1908","Naissance le 11 février 1838 - 24 rue des Arbres à Dunkerque - Décès le 9 mars 1908 à Malo-les-Bains","Fils de Pierre Louis Bommelaer Pilote et de Corneille Pélagie Powels - Mariage le 15/03/1865 avec Catherine Petronille Garcia (1842 – 1925)",117,"17 septembre 1850 - à 11 ans et demi  il devient mousse à la petite pêche - 24 décembre 1856 - Cabotage au long cours - 13 octobre 1859 - Marine Nationale Transport BONITE et Frégate IRIS 3 ans et 5 mois - 21 mars 1863 - Marine de commerce long cours - 15 avril 1869 - Reçu comme pilote affecté à la station de Dunkerque - Marine commerce Cabotage  28 ans et 6 mois - Petite pêche  1 an et 3 mois - Adjoint au maire de Malo-les-Bains");

INSERT INTO Decorations VALUES (NULL,"Albert Noël Eugène BENTEU",06/1921,"Chevalier de la Légion d’honneur");

INSERT INTO Decorations VALUES (NULL,"Albert Noël Eugène BENTEU",22/05/1916,"Prix Henri Durand de Blois");

INSERT INTO Decorations VALUES (NULL,"Albert Noël Eugène BENTEU",31/10/1915,"Témoignage officiel de satisfaction"); 

INSERT INTO Decorations VALUES(NULL,"Jacques Joseph Bommelaer", 1891,"Chevalier de la Légion d'Honneur");

INSERT INTO Decorations VALUES(NULL,"Jacques Joseph Bommelaer", null,"Médaille Or annuelle de la Société des sauveteurs du Nord");

INSERT INTO Decorations VALUES(NULL,"Jacques Joseph Bommelaer", 12/06/1892,"Grand diplôme d'Honneur");

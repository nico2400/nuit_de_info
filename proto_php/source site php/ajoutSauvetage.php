<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Titre de la page</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="formdarkstyle.css">
    <script src="script.js"></script>
</head>
<body>

<header>
    <div class="navbar">
            <div class="container">
                <a class="logo" href="#">Logo</a>

                <nav>
                    <ul class="primary-nav">
                        <li class="current"><a href="#">Sauveteur</a></li>
                        <li><a href="#">Sortie en mer</a></li>
                        <li><a href="#">Stations</a></li>
                    </ul>

                    <ul class="secondary-nav">
                        <li><a href="#">Services du port</a></li>
                        <li class="go-premium-cta"><a href="#">Moyens maritimes</a></li>
                        <li><a href="#" onclick="changeStylelight()">Light mode</a></li>
                        <li><a href="#" onclick="changeStyledark()">Dark mode</a></li>
                    </ul>
                </nav>
            </div>
        </div>
</header>
<!-- date de sauvetage, nombre de personnes sauvés  -->
	<div class="form">
		<h2>Formulaire de renseignement de sauvetages</h2>
		<form action="" method="get" class="form-ajout">
			<div class="information">
				<label>Date: </label>
				<input type="text" name="date" required>
			</div>

			<div class="information">
				<label>Nombre de sauvés: </label>
				<input type="text" name="nbrSauves" required>
			</div>

			<div class="information">
				<label>Nom du bâteau: </label>
				<input type="text" name="bateau" required>
			</div>

			<div class="information">
				<input type="submit" value="Enregistrer">


            </div>


		</form>
        <script text="text/javascript" src="changerstyle.js"></script>
	</div>
</body>
</html>

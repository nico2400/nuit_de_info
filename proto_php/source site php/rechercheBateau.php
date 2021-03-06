<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bateaux</title>


    <!-- Bootstrap CSS -->
    <link href="css/vendors/bootstrap-5.1.3-dist/bootstrap.css" rel="stylesheet"/>

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="formlightside.css">


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

	<div class="contour-center">
		<div class="contour">
			<div class="card" style="width: 18rem;">
				<img class="card-img-top" src="img/img1.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Bâteau 1</h5>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img class="card-img-top" src="img/img1.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Bâteau 2</h5>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img class="card-img-top" src="img/img1.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Bâteau 3</h5>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img class="card-img-top" src="img/img1.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Bâteau 4</h5>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img class="card-img-top" src="img/img1.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Bâteau 5</h5>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

		</div>
	</div>

<!-- Bootstrap js -->
<script text="text/javascript" src="changerstyle.js"></script>
<script type="text/javascript" src="js/vendors/bootstrap-5.1.3-dist/bootstrap.bundle.js"></script>
</body>
</html>
<?php	
	try{
		$user = "admin";
		$pass = "DB4life!!";
		$conn = new PDO('mysql:host=localhost:8080;dbname=sauvetagedunkerquecsq;charset=UTF8', $user, $pass);
		echo '<p style="color:red"> ca marche</p>';
		
	} catch (PDOException $e){
		echo "Erreur : ".$e."<br>";
		die();
	}
?>
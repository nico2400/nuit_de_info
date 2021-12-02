<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Connexion</title>
</head>
    <body>
        <?php
            if (isset($_GET['msgErreur'])) {
                echo "<h2>".$_GET['msgErreur']."</h2><BR/>";
            }
            echo "Veuillez entrer les identifiants :<BR/>";
            echo "<form method='post' action='TraitConnexion.php'>";
            echo "<p>";
            // si un cookie est existant on préremplit le champs login avec sa valeur
            if(isset($_COOKIE['CnonneLaurent'])) {
                echo "Login : <input type='text' name='login' value='".$_COOKIE['Cadmin']."' /> <BR/><BR/>";
            }
            else {
                echo "Login : <input type='text'  name='login' /> <BR/><BR/>";
            }
            echo "Mot de passe : <input type='password' name='motPasse' /><BR/><BR/>";
            echo "Se souvenir de moi : <input type='checkbox' name='cb_souvenirMoi' /><BR/><BR/>";
            echo "<input type='submit' name='Envoyer' value='Valider' />";
            echo "</p>";
            echo "</form>";
        ?>
    </body>
</html>

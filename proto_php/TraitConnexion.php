<?php
    session_start();
    // Le formulaire a été soumis
    if (isset($_POST['Envoyer'])) {
        // Les identifiants n'ont pas été remplis ou ne sont pas corrects
        // on vérifiera ensuite dans le fichier LesLoginPassword.txt la justesse des identifiants plutot qu'en dur comme ci-dessous
        if (!isset($_POST['login']) OR !isset($_POST['motPasse']) OR htmlentities($_POST['login']) != "admin" OR htmlentities($_POST['motPasse']) != "Ni_2021!") {
            header('location: FormConnexion.php?msgErreur=Erreur d\'identification... Recommencez');
            exit();
        }
        // Les identifiants sont remplis et corrects
        else {
            $_SESSION['Sadmin']='OK';
            // si l'utilisateur a cliqué sur la case à cocher "se souvenir de moi" alors on lui envoie un cookie qui permettra de pré-remplir le login la prochaine fois
            if (isset($_POST['cb_souvenirMoi'])) {
                $valCookie='admin';
                // on met 600 sec de vie pour ce cookie afin de tester sa disparation
                setcookie('Cadmin', $valCookie, time()+600);
            }
            header('location: index.php');
            exit();
        }
    }
    // le formulaire n'a pas été soumis
    else {
        header('location: FormConnexion.php?msgErreur=Tentative d\'acces interdite');
    }
?>

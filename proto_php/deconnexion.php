<?php
    session_start();
    if (!isset($_SESSION['SnonneLaurent'])) {
        header('location: FormConnexion.php?msgErreur=Interdiction d\'acceder à l\'espace sécurisé sans identification !!!');
    }
    session_destroy();
    header('location: FormConnexion.php?msgErreur=Deconnexion effectuée !');
?>

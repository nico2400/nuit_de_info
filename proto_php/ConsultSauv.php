<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="include/bootstrap.min.css">
    <link rel="stylesheet" href="include/styles.css">
    <title>Mon site PWS en PHP!</title>
</head>
<body>

<?php include("./include/header.php"); ?>
<?php include("./include/menus.php"); ?>
<?php include("./connect.inc.php");?>

<div style="padding-top: 30px" id="main">
    <div style="text-align: center" class="col-md-12">
        <?php
        echo "<h1>Consulter les produits par tranche de prix</h1>";
        echo "<BR/><BR/>";
        echo "<form method='post'>";
        echo "<fieldset>";
        echo "<input type='radio' name='BR_choix' value='moins500' checked='checked'";
        if(isset($_POST['Afficher']) && isset($_POST['BR_choix']) && $_POST['BR_choix'] == "moins500") {echo "checked='checked'";}
        echo "/> Prix du produit inférieur à 500€<BR/><BR/>";
        echo "<input type='radio' name='BR_choix' value='plus500' ";
        if(isset($_POST['Afficher']) && isset($_POST['BR_choix']) && $_POST['BR_choix'] == "plus500") {echo "checked='checked'";}
        echo "/> Prix du produit supérieur ou égal à 500€<BR/><BR/>";
        echo "<input type='submit' name='Afficher' value='Afficher'/><BR/><BR/>";
        echo "</fieldset>";
        echo "</form>";

        $conn=new PDO();

        if(isset($_POST['Afficher']) && isset($_POST['BR_choix'])) {
            // echo $_POST['BR_choix'];
            switch($_POST['BR_choix']) {
                case "moins500":
                    $titre="Produits de prix inférieur à 500€";
                    $reqProduits = $conn->prepare("Select * From Produits Where prixProduits=<p");
                    $reqProduits->execute (array("p" => "500"));
                    while ($donneeProd = $reqProduits->fetch()){
                        echo "Prix : ".$donneeProd["prixProduits"]."\n";
                    }
                case "plus500":
                    $titre="Produits de prix supérieur ou égal à 500€";
                    $reqProduits = $conn->prepare("Select * From Produits Where prixProduits>=p");
                    $reqProduits->execute (array("p" => "500"));
                    while ($donneeProd = $reqProduits->fetch()){
                        echo "Prix : ".$donneeProd["prixProduits"]."\n";
                    }
            }
            echo "<BR/><BR/>";

            echo "<center><table border='2' >";
            //	echo "<caption>".$titre."</caption>";
            echo "<tr><th>IdProduit</th><th>Catégorie</th><th>Nom du Produit</th><th>Prix du Produit</th></tr>";
            foreach($result as $prod) {
                echo "<tr>";
                foreach($prod as $attribut => $valeur) {
                    echo "<td>".$valeur."</td>";
                }
                echo "</tr>";
            }
            echo "</table></center>";
            echo "<BR/><BR/>";
        }
        ?>
    </div>
</div>
<?php include("./include/footer.php"); ?>
</body>
</html>
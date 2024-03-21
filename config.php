<?php
$kasutaja = "mihkel";
$dbserver = "localhost";
$andmebaas = "muusikapood";
$pw = "1234!";

$yhendus = mysqli_connect($dbserver, $kasutaja, $pw, $andmebaas);

if(!$yhendus){
    die("sa jälle ebaõnnestusid!");
}





?>
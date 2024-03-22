<?php include("config.php"); ?>

<!doctype html>
<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>



    <body>
    <div class ="container">
        <h1>Maailma parimad albumid</h1>
    <h2>Uue albumi lisamine</h2>
    <form action="#" method="get">
    artist <input type="text" name="artist"><br>
    album <input type="text" name="album"><br>
    aasta <input type="text" name="aasta" min="1900"><br>
    hind <input type="text" name="hind" step="0.01"><br>
    <input type="submit" value=" + Lisa uus" name="Lisa">
</form>


<h2>Otsing</h2>
        <form action="" method="get">
            Otsi: <input type="text" name="s">
            <input type="submit" value="Otsi">
</form>
        <div class="row row-cols-1 row-cols-md-4 g-4 pt-4">
    <?php
    //lisamine
    if(!empty($_GET["lisa"])){
        $artist = $_GET["artist"];
        $album = $_GET["album"];
        $aasta = $_GET["aasta"];
        $hind = $_GET["hind"];

        $paring = "INSERT INTO albumid(artist, album, aasta, hind) VALUES ('$artist', '$album', '$aasta', '$hind')";
        //print_r($paring);
        $valjund = mysqli_query($yhendus, $paring);
            if($valjund){
                echo "Lisamine õnnestus";
            } else {
                echo "Lisamine ebaõnnestus";
            }
    }

    //kustutamine
    if(!empty($_GET["del"]) && !empty($_GET["id"])){
        $del = $_GET["del"];
        $id = $_GET["id"];

        $paring = "DELETE FROM albumid WHERE id=$id";
        $valjund = mysqli_query($yhendus, $paring);
        if($valjund){
            //echo "Kustutamine õnnestus!";
            header("Location: index.php?msg=true");
        }else{
            //echo "Kustutamine ebaõnnestus!";
            header("Location: index.php?msg=false");
        }
    }

    //otsing
    if (!empty($_GET["s"])){
        $s = $_GET["s"];
        $paring = ' SELECT id, album, hind FROM albumid WHERE album LIKE "%' .$s. '%"';
    } else {

    //päring mille saadan andmebaasi
        $paring = "SELECT id, album, hind FROM albumid order by artist ASC LIMIT 10";
    }
    //saadan soovitud ühendusele minu päringu
        $valjund = mysqli_query($yhendus, $paring);
    //sikutame andmebaasi vastuse
    //$rida = mysqli_fetch_assoc($valjund); 
    //test
        while($rida = mysqli_fetch_assoc($valjund)){
            //print_r($rida);
            //echo $rida['artist']." - ".$rida["album"]."<br>";
            echo '
            <div class="col">
    <div class="card">
      <img src="https://picsum.photos/400/400" alt="pildike">
      <div class="card-body">
        <h5 class="card-title">'.$rida['album'].'</h5>
        <p class="card-text">'.$rida['hind'].'€</p>
        <a href="#" class="btn btn-danger">Osta</a>
        <a href="index.php?del=kustuta&id='.$rida['id'].'" class="btn btn-warning">Kustuta</a>
      </div>
      </div>
    </div>
            ';
        }
        





    ?>
    </div>
    </div>
        
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

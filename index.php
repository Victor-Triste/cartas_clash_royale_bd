<html lang="es">
    <head>
        <title>Cartas de Clash Royale</title>
        <meta charset="UTF-8">
        <meta name="author" content="Victor Triste">
        <meta name="description" content="Cartas de clash royale usando framework Materialize y una base de datos">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <!--Librerias a utilizar de materialize y js-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link type="text/css" rel="stylesheet" href="css/estilos.css"  media="screen,projection"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
  
    <body>
        <div class = "contenedor-titulo container-fluid">
            <img class="titulo" src="imagenes/titulo.png">
            <!--Contenedor que tiene las formas de ordenación-->
            <div class="contenedor-ordenacion">
                <form action="#" method="POST">
                    <p>
                        <label>
                            <input name="ordenacion" id="tipo" value="1" type="radio" checked="checked"/>
                            <span>Tipo</span>
                        </label>
                    </p>
                    <p>
                        <label>
                            <input name="ordenacion" id="calidad" value="2" type="radio"/>
                            <span>Calidad</span>
                        </label>
                    </p>
                    <p>
                        <label>
                            <input name="ordenacion" id="elixir" value="3" type="radio"/>
                            <span>Elixir</span>
                        </label>
                    </p>
                    <p>
                        <button class="btn waves-effect waves-light" type="submit" name="btn-ordenar"id="btn-ordenar">Ordenar</button>
                    </p>
                </form>
            </div>
        </div>

        <!--Panel que contiene a todas las cartas-->
        <div class="panel-cartas container-fluid">
            <div class="row" id="cartas" name="defecto">
                <?php
                    include("conexionBD.php");
                    include("ordenarDatos.php");
                ?>
                <?php
                    //Con un bucle se recorren las cartas de la bd y se muestran.
                    for ($j = 0; $j < $numeroCartas; $j++) {
                ?>
                    <div class="col s12 m6 l4 xl3">
                        <div class="card">
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="<?php echo $imagen[$j]?>">
                            </div>
                            <div class="card-content">
                                <span class="card-title activator grey-text text-darken-4 valign-wrapper"><?php echo $nombreCarta[$j]?></span>
                            </div>
                            <div class="card-reveal">
                                <span class="card-title grey-text text-darken-4"><?php echo $nombreCarta[$j]?><i class="material-icons right">close</i></span>
                                <p>Calidad: <?php echo $calidad[$j]?></p>
                                <p>Tipo: <?php echo $tipo[$j]?></p>
                                Descripción:
                                <p> <?php echo $descripcion[$j]?></p>
                            </div>
                        </div>
                    </div>
                <?php
                    } //Fin del bucle
                ?>
            </div>
        </div>
        <img class="reyAzul" src="imagenes/reyAzul.png">
        <img class="reyRojo" src="imagenes/reyRojo.png">

        <!--Ordenación de las cartas-->
        <?php
            if(isset($_POST["btn-ordenar"])){
                require_once 'ordenarDatos.php';
            }
        ?>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </body>
</html>
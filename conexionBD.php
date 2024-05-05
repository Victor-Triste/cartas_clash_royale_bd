<?php
    $servidor = "localhost";
    $bd = "clash_royale";
    $user = "root";
    $password = "";

    $conexion = mysqli_connect($servidor, $user, $password) or die ("Error al intentar conectarse a la base de datos".$mysqli_error());
    mysqli_select_db($conexion, $bd) or die("No ha sido posible establecer una conexion con la base de datos.".$mysqli_error());
?>
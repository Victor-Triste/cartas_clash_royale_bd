<?php
    include("conexionBD.php");

    // Se crean los arrays para almacenar los datos
    $nombreCarta = array();
    $elixir = array();
    $descripcion = array();
    $calidad = array();
    $tipo = array();
    $imagen = array();

    //Si se ha seleccionado un radio button, entonces esa ordenación se establece.
    if(isset($_POST["ordenacion"])){
        $metodoOrdenacion = $_POST["ordenacion"];
    } else { //Se toma la ordenación por default
        $metodoOrdenacion = 1;
    }
    
    if($metodoOrdenacion == "1"){
        //Se ordena por el tipo de carta
        $result = mysqli_query($conexion, "SELECT * FROM cartas order by c_tipo");
    } else if($metodoOrdenacion == "2"){
        //Se ordena por la calidad de la carta
        $result = mysqli_query($conexion, "SELECT * FROM cartas order by FIELD(c_calidad, 'Legendaria','Épica','Especial', 'Común')");
    }else{ //Se ordena por la cantidad de elixir de mayor a menor
        $result = mysqli_query($conexion, "SELECT * FROM cartas order by c_elixir desc");
    }
    //Se obtiene el número de cartas totales de la bd
    $numeroCartas = mysqli_num_rows($result);    
    $i=0;
    //Se recorre las cartas para obtener los respectivos datos.
    while($carta = mysqli_fetch_assoc($result)){
        $nombreCarta[$i] = $carta['c_nombre'];
        $elixir[$i] = $carta['c_elixir'];
        $descripcion[$i] = $carta['c_descripcion'];
        $calidad[$i] = $carta['c_calidad'];
        $tipo[$i] = $carta['c_tipo'];
        $imagen[$i] = $carta['c_imagen'];
        $i++;
    }   
?>

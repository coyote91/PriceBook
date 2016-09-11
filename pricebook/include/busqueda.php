<?php
include'../bd/conexion.php';

 $q=$_POST['p'];


        $consultabuscador = " SELECT articulo, marca
	                            FROM articulos
	                            WHERE match(articulo, marca) against('$q') ";
      
      $query = $conexion->query($consultabuscador);
      while($array = $query->fetch(PDO::FETCH_LAZY) ) 
      { 
      	     
        echo $array->articulo." ".$array->marca."<br>";


      }

	
?>
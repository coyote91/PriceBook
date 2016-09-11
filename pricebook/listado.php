<?php

include'./bd/conexion.php';


  $consultabuscador = " SELECT articulo, precio, tienda
	                      FROM compras
	                    where articulo like'%naranja%' and date(fecha) = date(now()) and barrio = 'boston'
	                    group by precio
	                    order by precio  asc
	                    ";

	    $c = "          SELECT *                   
                        FROM compras
	                    where articulo like'%naranja%' and date(fecha) = date(now()) and barrio = 'boston' 
	             
	                    ";                 
      $query = $conexion->query($c);
      while($array = $query->fetch(PDO::FETCH_LAZY) ) 
      { 
      	 $consulta = "     
                        SELECT count(*)precio	                    
                        FROM compras
	                    where tienda = ".$array->$tienda."
	             
	                    ";

            $q = $conexion->query($consulta);
              while($ay = $query->fetch(PDO::FETCH_LAZY) ) 
              { 
                    echo $ay->articulo."<br>";
      	                         
      	        
      	     }
      
        


      }

?>
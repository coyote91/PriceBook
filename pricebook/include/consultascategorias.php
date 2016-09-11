<?php

include'./bd/conexion.php';

class Consultascategorias
{

    public static function categorias()
    {
         global $conexion, $data;


        $con = " SELECT *
                 FROM categorias
                 ORDER BY nombrecategoria ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
            ?>

           <li>      
         
      
     <?php echo " <a  href=".$_SERVER['PHP_SELF'].'?'.http_build_query($data).'&categoria='.$array->id_categoria . "> $array->nombrecategoria </a> "; ?>
           </li> <br> 
       <?php

        } 


    }



}

?>
<?php

function grabar($titulo, $cx, $cy)
{
     global $conexion;

     $titulo = mysql_real_escape_string($titulo);
     $cx = mysql_real_escape_string($cx);
     $cy = mysql_real_escape_string($cy);
     $q = "INSERT INTO puntos (titulo, cx, cy )
           VALUES ('".addslashes($titulo)."' , '".addslashes($cx)."' , '".addcslashes($cy)."' )";

      $rpta = mysql_query($q);
       
        
}




?>
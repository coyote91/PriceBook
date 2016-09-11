<?php
include'./bd/conexion.php';



class Consultasfechas
{

    public static function hoy($categoria='')
    {
         global $conexion, $datados;


        $hoy = " SELECT *
                 FROM comprashechas 
                 WHERE  date(fecha) = date(now())  
                  ORDER BY articulo ASC ";

                           $query = $conexion->query($hoy);    
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
            ?>  
            
            <a id="producto" href=<?php echo $_SERVER['PHP_SELF'].'?'.http_build_query($datados).'&vista=detallearticulo' ?> >
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >     
            <div id="contnombreproducto">                
<?php         
           echo $array->articulo." ".$array->nombrearticulo." ".$array->marca."<br> $ ".$array->preciounidad." (".
                $array->volumen." ".$array->unidadmedida.")";
          ?> 
           
           </div>
           </a>
           <?php
        }

        
  
    }

    public static function hoyconcategoria($categoria='')
    {
         global $conexion;

        $hoyconcategoria = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND  date(fecha) = date(now())   
                  ORDER BY articulo ASC ";
          
                    
                          $query = $conexion->query($hoyconcategoria);    
                 
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >     
            <div id="contnombreproducto">                
<?php         
           echo $array->articulo." ".$array->nombrearticulo." ".$array->marca."<br> $ ".$array->preciounidad." (".
                $array->volumen." ".$array->unidadmedida.")";
          ?> 
           
           </div>
           </div>
           <?php
        }

        
  
    }
     

     

 public static function ayer($categoria=" ")
    {
         global $conexion;
 
   


        $ayer = " SELECT *
                 FROM comprashechas 
                 WHERE  fecha = DATE_SUB(CONCAT(CURDATE(), ' 00:00:00'), INTERVAL 1 DAY)
                 ORDER BY articulo ASC 

                 ";
     
             $query = $conexion->query($ayer);        
     

        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >
               <div id="contnombreproducto">                     
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca."<br> $ ".$array->preciounidad;
                 if(!$array->volumen == 0 && !empty($array->unidadmedida))
                 { 
                    /*El campo volumen es int de 255  mientras que el campo unidadmedida es varchar 255*/
                    echo " (".$array->volumen." ".$array->unidadmedida.")";    

                 }     
 ?>
                 </div>
           </div>
                
           <?php
        } 
        
        
        
  
    }

public static function ayerconcategoria($categoria=" ")
    {
         global $conexion;
 
   

        $ayerconcategoria = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND fecha = DATE_SUB(CONCAT(CURDATE(), ' 00:00:00'), INTERVAL 1 DAY)
                 ORDER BY articulo ASC 

                 "; 
   
               $query = $conexion->query($ayerconcategoria);        
               
         

        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >
               <div id="contnombreproducto">                     
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca."<br> $ ".$array->preciounidad;
                 if(!$array->volumen == 0 && !empty($array->unidadmedida))
                 { 
                    /*El campo volumen es int de 255  mientras que el campo unidadmedida es varchar 255*/
                    echo " (".$array->volumen." ".$array->unidadmedida.")";    

                 }     
 ?>
                 </div>
           </div>
                
           <?php
        } 
        
        
        
  
    }


   
   
  

   public static function antier()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE  fecha = DATE_SUB(CONCAT(CURDATE(), ' 00:00:00'), INTERVAL 2 DAY)
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }

     public static function antierconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND fecha = DATE_SUB(CONCAT(CURDATE(), ' 00:00:00'), INTERVAL 2 DAY)
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }
  


 
    public static function ultimostresdias()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE  date_sub(curdate(), interval 3 day ) <= fecha 
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }


      public static function ultimostresdiasconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND date_sub(curdate(), interval 3 day ) <= fecha
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }
  
 public static function ultimossietedias()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE  date_sub(curdate(), interval 7 day ) <= fecha
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }

  public static function ultimossietediasconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND date_sub(curdate(), interval 7 day ) <= fecha
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }

    public static function ultimosquincedias()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE  date_sub(curdate(), interval 15 day ) <= fecha
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }

    public static function ultimosquincediasconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND date_sub(curdate(), interval 15 day ) <= fecha
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }

      public static function ultimosveintedias()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE  date_sub(curdate(), interval 20 day ) <= fecha
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }

    public static function ultimosveintediasconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND date_sub(curdate(), interval 20 day ) <= fecha
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }

   public static function haceunmes()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE  MONTH(fecha) = MONTH(DATE_ADD(CURDATE(),INTERVAL -1 MONTH))
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }

     public static function haceunmesconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND MONTH(fecha) = MONTH(DATE_ADD(CURDATE(),INTERVAL -1 MONTH))
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }

    public static function hacedosmeses()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE MONTH(fecha) = MONTH(DATE_ADD(CURDATE(),INTERVAL -2 MONTH))
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }

      public static function hacedosmesesconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND MONTH(fecha) = MONTH(DATE_ADD(CURDATE(),INTERVAL -2 MONTH))
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }

public static function hacedocemeses()
    {
         global $conexion;
 
   


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE fecha >= date_sub(curdate(), interval 12 month) 
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {

            ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> >                     
         <div id="contnombreproducto">
         
<?php
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div> 
         </div>
           <?php
        } 
        
        
        
  
    }

      public static function hacedocemesesconcategoria($categoria='')
    {
         global $conexion;


        $con = " SELECT *
                 FROM comprashechas 
                 WHERE categoria = $categoria AND  fecha >= date_sub(curdate(), interval 12 month)
                 ORDER BY articulo ASC 

                 ";
         $query = $conexion->query($con);        
        
        while($array = $query->fetch(PDO::FETCH_LAZY))
        {
           ?>  
            <div id="producto">
            <img class="fotoproducto" SRC=./<?php echo $array->fotoproducto ?> > 
            <div id="contnombreproducto">                    
<?php         
           echo   $array->articulo." ". $array->nombrearticulo." ".$array->marca;     
 ?>
           
           </div>
            </div>
           <?php 

        } 
        
  
    }




}



?>
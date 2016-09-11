<?php
include '../bd/conexion.php';
extract($_REQUEST);



   $data = array( 
                  /*'articulo'  => @$_GET['articulo'],*/

                );    

   function listaproductos($articulo,$ciudad, $barrio)
   {

   	  global $conexion;

   $f = ( !empty($ciudad) || !empty($barrio)  ? "AND match(c.ciudad, c.barrio) against('$ciudad, $barrio') " : " " ) ;   

$consulta = " SELECT DISTINCT a.peso, a.unidadpeso,
                     a.id_articulo, 
                     a.articulo, 
                     a.nombrearticulo, 
                     a.marca, 
                     a.fotoproducto,
                     h.id_comercio
                     ".(!empty($ciudad) || !empty($barrio) ? ", c.ciudad , c.barrio " : " "  )."
              FROM articulos a
              INNER JOIN  historialcompras h  ON h.id_articulo = a.id_articulo
              inner join comercio c ON  h.id_comercio = c.id_comercio 
              WHERE match(a.articulo, a.nombrearticulo, a.marca) against('".$articulo."') ".$f." 
                group by h.id_articulo  ";
            	
    
                   $query = $conexion->query($consulta);     
 
                 
               while($array = $query->fetch(PDO::FETCH_LAZY))
                 {        

                ?>
                  <div id="info">
                 
     <a href=<?php echo $_SERVER['PHP_SELF'].'?op=search&vista=detallearticulo&idarticulo='.$array->id_articulo.'&key='.$articulo.'&ciudad='.$ciudad.'&kbarrio='.$barrio ?> >
                     <img class="fotoproducto" SRC=../<?php echo $array->fotoproducto ?> >     
                      <div id="contnombreproducto">                
               <?php         
                         echo $array->articulo." ".$array->nombrearticulo." ".$array->marca." ".$array->peso." ".$array->unidadpeso;
                 ?> 
           
                      </div>
                    </a>
                  </div>

                <?php
                  
                 
                 }  

      }

             ?>                

                 
             

             <?php

             
           

           /***************************/
            /** DETALLE ARTICULO   **/
 
     
        function detallearticulo($idarticulo, $ciudad,$kbarrio)
        {
            	global $conexion;
       ?>

     
      

         <div id="contenedordetallearticulo" class="clearfix" >	

         <?php

               $con = " 
                                SELECT a.articulo, a.nombrearticulo, a.peso, a.unidadpeso, a.fotoproducto
	                            FROM articulos a 
	                            WHERE a.id_articulo = $idarticulo
                               

                           ";

                   $query = $conexion->query($con);     

                 $array = $query->fetch(PDO::FETCH_LAZY);
                  

          ?>   
                 <div id="contgeneralarticulo">
                    
                     <div id="contarticulo" >
                        
                       <div id="imagen">
                       	
                       	<img  SRC=../<?php echo $array->fotoproducto ?> > 
 

                       </div>


                      </div>
       

                      <div id="detallearticulo">
                      	
                      	<?php 

                         echo $array->articulo." ".$array->nombrearticulo."<br>";

                         echo $array->peso." ".$array->unidadpeso."<br>";
                      	       

                      	 ?>

                      </div>
                 </div>


                     <div id="menuperfilarticulo">
                     	
                        <div id="filamenuarticulo">
                      	 
                      	   <div id="contopciones"> 
                              <div class="opm">Supermercados </div>
                              <div class="opm">Tiempo de compra </div>
                              <div class="opm">Precio articulo </div> 
                              <div class="opm2">N° de ventas</div>
                           </div>
                        </div>

                        <div id="filaresultados">
                        	
                       <?php 
           
           $f = (!empty($ciudad) || !empty($kbarrio) ? "AND match(c.ciudad, c.barrio) against('$ciudad, $kbarrio') " : " "  );   
                       
                       $historialcompras = "    SELECT c.nombrecomercio as supermercados, h.precio, a.id_articulo
												FROM articulos a 
												inner join historialcompras h ON  h.id_articulo = a.id_articulo  
												inner join comercio c ON  h.id_comercio = c.id_comercio 
												WHERE a.id_articulo =  $idarticulo $f
												order by h.precio ASC    ";      


				                   $query = $conexion->query($historialcompras);     

				                 while($array = $query->fetch(PDO::FETCH_LAZY))
				                 {        
                              
                              ?>
				                 		      <div id="contresultados"> 
				                              <div class="r1"><?php  echo $array->supermercados ?> </div>
				                              <div class="r1">  </div>
				                              <div class="r1"><?php  echo $array->precio ?> </div> 
				                              <div class="r1"> <?php  ?></div>
                           </div>
				              <?php  
				                 
				                 }               
                
                ?>




                        </div>
                     	
                     </div>


       </div>

<?php 

            }

         
   ?>




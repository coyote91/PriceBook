<?php 

include './include/consultasfechas.php';
include './include/consultascategorias.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

<link rel="stylesheet" href="./css/estilo.css">
<script src="./js/intervalotiempo.js"></script>

<link href='https://fonts.googleapis.com/css?family=Nosifer' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Wallpoet' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Fontdiner+Swanky' rel='stylesheet' type='text/css'>

</head>
<body>
	
 <div id="contenedorglobal" class="clearfix">
 	
         <div id="contenedorizquierdo">
           
           <div id="contenedorrangofechas">

               <div id="tituloconsultafecha" >Consulta por fechas </div>
               
               
                  <ul id="menuconsultafechas" >
                     <li>
                  
                    <?php  echo " <a href='?tiempo=hoy&vista=listaproductos '> Hoy </a>"; ?>

                    </li>
                  
                    <li>
                            <?php  echo " <a href='?tiempo=ayer&vista=listaproductos '> Ayer </a>"; ?>
                    </li>
                     <li>
                      <?php  echo " <a href='?tiempo=antier&vista=listaproductos '> Antier </a>"; ?>

                    </li>
                     <li>
                      <?php  echo " <a href='?tiempo=ultimostresdias&vista=listaproductos '> Ultimos 3 dias </a>"; ?>

                    </li>
                    <li>
                      <?php  echo " <a href='?tiempo=ultimossietedias&vista=listaproductos '> Ultimos 7 dias </a>"; ?>

                    </li>
                     <li>
                      <?php  echo " <a href='?tiempo=ultimosquincedias&vista=listaproductos '> Ultimos 15 dias </a>"; ?>

                    </li>
                     <li>
                     <?php  echo " <a href='?tiempo=ultimosveintedias&vista=listaproductos '> Ultimos 20 dias </a>"; ?>

                    </li>
                      <li>
                     <?php  echo " <a href='?tiempo=haceunmes&vista=listaproductos '> Hace 1 mes </a>"; ?>

                    </li>
                     <li>
                         <?php  echo " <a href='?tiempo=hacedosmeses&vista=listaproductos '> Hace 2 meses </a>"; ?>

                    </li>
                    
                     <li>
                       <?php  echo " <a href='?tiempo=hacedocemeses&vista=listaproductos '> Hace 12 meses </a>"; ?>
                                  
                    </li>
                </ul>
                         
               </form>     
         	       

          </div>
          
          <div id="contenedorcategorias">
              <div id="titulocategoria">Categorias</div>
                  <ul id="menucategorias">
                    <?php  
                      
               $data = array( 
               'tiempo'  => @$_GET['tiempo'],
               'vista' =>@$_GET['vista']
                );
               
                 $datados = array( 
                     'tiempo'  => @$_GET['tiempo'],
          
                );
                            

                      consultascategorias::categorias($data);  
                    ?>
                  </ul>
          </div>
        
         </div>

          
         <div id="contenedorderecho"> 
               <div id="titulocomprashechas"> </div>
         	 <div id="contenedorarticulo" class="clearfix">
      <?php
                  $categoria = @$_GET['categoria'];
                  $tiempo = @$_GET['tiempo'];
                  if ($tiempo == "hoy") 
                  { 
                    

                     if (isset($categoria))
                     {
                       consultasfechas::hoyconcategoria($categoria);   
                     }
                     else
                       consultasfechas::hoy(); 

                  
                  }
                 
                
                 if ($tiempo == "ayer") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::ayerconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::ayer(); 
  
                     }
                     
                  
                  }


                 if ($tiempo == "antier") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::antierconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::antier(); 
  
                     }
                     
                  
                  }

               
                    
                  if ($tiempo == "ultimostresdias") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::ultimostresdiasconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::ultimostresdias(); 
  
                     }
                     
                  
                  }

                  if ($tiempo == "ultimossietedias") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::ultimossietediasconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::ultimossietedias(); 
  
                     }
                     
                  
                  }

                   if ($tiempo == "ultimosquincedias") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::ultimosquincediasconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::ultimosquincedias(); 
  
                     }
                     
                  
                  }
                 
                  if ($tiempo == "ultimosveintedias") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::ultimosveintediasconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::ultimosveintedias(); 
  
                     }
                     
                  
                  }

                   if ($tiempo == "haceunmes") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::haceunmesconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::haceunmes(); 
  
                     }
                     
                  
                  }

                  
                   if ($tiempo == "hacedosmeses") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::hacedosmesesconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::hacedosmeses(); 
  
                     }
                     
                  
                  }
                  

                   if ($tiempo == "hacedocemeses") 
                  { 
                     if (isset($categoria)) 
                     {
                       consultasfechas::hacedocemesesconcategoria($categoria); 
  
                     }
                     else{
                          
                       consultasfechas::hacedocemeses(); 
  
                     }
                     
                  
                  }



     

     

     
     
             ?>

        </div>
         </div>


 </div>
</div> <!--- END CONTENEDOR GLOBAL  -->


		<div id="formulariologin">
				
				
				<form action="./php/login.php" method="post">
			
			  <span>Entrar</span>
			  <br />
			  <br />
			  
			  <label for="nombre">Usuario</label>
			  <input type="text" name="nombre" />
  			  <br />
  			  <br />
  			  
  			  <label for="clave">Clave</label>
  			  <br />
			  <input type="password" name="clave"/>
			  <br />
			  <br />
			  <input type="submit" name="btnenviar" value="Enviar" />
			
			
			</form>
			
				
				
				
			</div>

<div id="respuesta">
        
      </div>

</body>
</html>
<?php
include'listaproductos.php';
extract($_REQUEST);



?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

 <link rel="stylesheet" type="text/css" href="../css/resultados.css">

<link href="https://fonts.googleapis.com/css?family=Codystar|Denk+One|Eater|Fontdiner+Swanky|Hanalei|Julee|Kranky|Lakki+Reddy|Londrina+Sketch|Metal+Mania|Monoton|Mystery+Quest|Nosifer|Ribeye+Marrow|Sonsie+One|Zeyada" rel="stylesheet">



</head>
<body>

 
		  <div id="barra">
			
			<div id="contenedorlogo">

		    <a href="http://localhost/cotizacion/index.php"><h3 id="titulopricebook"><span id="pr">PR</span><span id="signodolar" >$</span><span id="ce">CE</span> <span id="book">BOOK</span></h3>
		   </a>

		  </div>

		</div>
		    


 <div id="contenedorglobal"  >

    <div id="contenedorglobalinfo">
    	 
    	 <div id="contformulario">

            <div id="contformulariodos" >
            
        <form name="form"  id="form" action=<?php echo $_SERVER['PHP_SELF'].'?op=search&vista=articulos' ?> method="POST" >
         <input type="text" name="articulo" id="articulo" class="input" placeholder="Buscar por articulo, marca" value=<?php echo @$articulo ?> >
     <input type="text" name="ciudad" id="ciudad" class="input" placeholder="Ingresa tu ciudad " value=<?php echo @$ciudad ?> >
            <input type="text" name="barrio" id="barrio" class="input" placeholder="Ingresa tu  barrio" value=<?php echo @$barrio ?> >
	     <input type="submit" name="env" id="env" class="env" value="Enviar"  />

		</form>
 

    
            </div>

            
   </div>

   


   <div id="contenedorizquierdo">
      
          
          <div id="contenedorcategorias">
              <div id="titulocategoria">Categorias Disponibles</div>
                  <ul id="menucategorias">
       
                  </ul>
          </div>
        
   </div>
      

      <div id="contenedorderecho"> 
              
       
       
        

        <?php 
                

if(@$vista == "articulos" )
{

listaproductos($articulo,$ciudad,$barrio);


}
         

if (@$vista == "detallearticulo")
 {
    detallearticulo($idarticulo,@$ciudad,@$kbarrio);


  }           

         

         ?>

         </div>
              
       

    </div> <!--- END CONTENEDOR GLOBAL INFO  -->

 </div> <!--- END CONTENEDOR GLOBAL  -->
	
</body>
</html>
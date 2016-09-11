
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

<link rel="stylesheet" type="text/css" href="./css/style.css">

<link href="https://fonts.googleapis.com/css?family=Codystar|Denk+One|Eater|Fontdiner+Swanky|Hanalei|Julee|Kranky|Lakki+Reddy|Londrina+Sketch|Metal+Mania|Monoton|Mystery+Quest|Nosifer|Ribeye+Marrow|Sonsie+One|Zeyada" rel="stylesheet">



<script>
	 

        

         //this.form.action="somethingelse";
         

       function z()
	  {
          
          var articulo = document.getElementById("articulo").value;
          var ciudad = document.getElementById("ciudad").value;
          var barrio = document.getElementById("barrio").value;


	  	 // document.getElementById("enviar").preventDefault();
	  	 if(articulo == "" && ciudad == "" && barrio == "" /* .length == 0  */ )
          {
              alert("Debe ingresar algun dato");

              /*document.getElementById("env").addEventListener("click", function(event)
                   {
                      event.preventDefault()
                    });*/
          }
          else
          { 
          	
          	document.getElementById('form').action = './include/resultados.php?op=search&vista=articulos';

          }
          	
	  
	  }


       function y()
	  {
          
          var articulo_dos = document.getElementById("articulodos").value;
          var ciudad_dos = document.getElementById("ciudadybarriodos").value;


	  	 // document.getElementById("enviar").preventDefault();
	  	 if(articulo_dos == "" && ciudad_dos == ""  /* .length == 0  */ )
          {
              alert("Debe ingresar algun dato");

              /*document.getElementById("env").addEventListener("click", function(event)
                   {
                      event.preventDefault()
                    });*/
          }  


  
	  
	  }
           
	 
           
	 

</script>

</head>
<body>

 <div id="barra">
			
			<div id="contenedorlogo">

		    <a href="http://localhost/cotizacion/index.php"><h3 id="titulopricebook"><span id="pr">PR</span><span id="signodolar" >$</span><span id="ce">CE</span> <span id="book">BOOK</span></h3>
		   </a>

		  </div>

		</div>
  
		 
		    
    
              <div id="contenedorglobal"   class="clearfix" >


	  
        <div id="contenedorglobalinfo">
      
                 <div id="contenedorbusqueda">

       
                    <h3 id="titulobusqueda">! Realiza  tu  búsqueda  aquí !</h3> 
        
                        <div id="forminput">
             


                             <form action="" method="POST" id="form" name="form" >
                             <input type="text" name="articulo"  id="articulo" class="input" placeholder="Buscar por articulo, marca"/>
                              <input type="text" name="ciudad" id="ciudad" class="input" placeholder="Ingresa tu ciudad " />
                              <input type="text" name="barrio" id="barrio" class="input" placeholder="Ingresa tu barrio" />
                           <input type="submit" name="env" id="env" class="env" value="Enviar" onclick="z();" />

                        </form>
                         
                        </div>  

                   </div>
	    		
 	
          </div>
        

 </div> <!--- END CONTENEDOR GLOBAL  -->
  	
</body>
</html>
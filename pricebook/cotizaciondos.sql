select count(articulo) as total_comprado
from comprashechas
where tienda = 'D1' and articulo like'%jugo de naranja%'


select DISTINCT tienda, preciounidad, articulo 
from comprashechas
where articulo like'%jugo de naranja%' 
order by preciounidad  asc


select DISTINCT c.tienda, c.preciounidad
from compras as c
where articulo like'%naranja%' and date(fecha) = date(now())
order by c.preciounidad  asc


SELECT articulo, precio, tienda
	                      FROM compras
	                    where articulo like'%naranja%' and date(fecha) = date(now()) 
	                    group by precio
	                    order by precio  asc
					
				
	ALTER TABLE articulos ADD FULLTEXT (articulo, nombrearticulo, marca);   /*forma con campos individuales*/
    ALTER TABLE comercio ADD FULLTEXT `localization`(ciudad, barrio );   /*forma para index con campos unidos */
    ALTER TABLE historialcompras DROP INDEX `FullText`;                 
                        
                  SELECT *
				  FROM articulos
			      WHERE match(articulo, nombrearticulo, marca) against('papel higienico acolchomax familia ') 
                                
                                
  select  c.nombrecomercio, h.precio
  from historialcompras h
  inner join comercio c ON c.id_comercio = h.id_comercio 
  where id_articulo = 8
                                

  
/***********************************************/
/**  CONSULTAS CORRECTAS PERFIL DEL PRODUCTO  */

SELECT a.id_articulo, h.precio, h.id_comercio, nombrecomercio   /*le quite id del comercio*/
FROM articulos a 
inner join historialcompras h ON  h.id_articulo = a.id_articulo  
inner join comercio c ON  h.id_comercio = c.id_comercio 
WHERE match(articulo, nombrearticulo, marca) against('aguila')                       
   
SELECT DISTINCT a.peso, a.unidadpeso, a.articulo, a.nombrearticulo, a.marca, a.fotoproducto, h.ciudad, h.barrio
FROM articulos a
INNER JOIN  historialcompras h  ON h.id_articulo = a.id_articulo
WHERE match(a.articulo, a.nombrearticulo, a.marca) against('aguila') AND match(h.ciudad, h.barrio) against('Medellin Boston')
   
                                
 SELECT c.nombrecomercio as supermercados, h.precio, a.id_articulo
FROM articulos a 
inner join historialcompras h ON  h.id_articulo = a.id_articulo  
inner join comercio c ON  h.id_comercio = c.id_comercio 
WHERE match(a.articulo, a.nombrearticulo, a.marca) against('aguila') AND match(c.ciudad, c.barrio) against('medellin boston')  
order by h.precio  desc                            
                               
                                


            SELECT DISTINCT h.id_articulo, a.peso, a.unidadpeso, 
                     a.id_articulo, 
                     a.articulo, 
                     a.nombrearticulo, 
                     a.marca, 
                     a.fotoproducto,
                     h.id_comercio,
                     h.precio
              FROM articulos a
              INNER JOIN  historialcompras h  ON h.id_articulo = a.id_articulo
              inner join comercio c ON  h.id_comercio = c.id_comercio
              WHERE match(a.articulo, a.nombrearticulo, a.marca) against('ego') AND match(c.ciudad, c.barrio) against('medellin boston')
              group by h.id_articulo 
            	
                                         
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
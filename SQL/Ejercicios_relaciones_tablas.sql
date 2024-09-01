
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select a."Title" as "titulo_album", t."Name" as "nombre_pistas"
from "Album" as a 
inner join "Track" as t 
on a."AlbumId" = t."AlbumId"

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select ar."Name" as "nombre_artistas", al."Title" as "titulo_album"
from "Artist" as ar 
inner join "Album" as al 
on ar."ArtistId" = al."ArtistId"
order by ar."Name"

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select CONCAT(c."FirstName", ' ', c."LastName") as "nombre_cliente"  , SUM(i."Total") as "factura total"
from "Customer" as c 
inner join "Invoice" as i
on c."CustomerID" = i."CustomerId"
group by CONCAT(c."FirstName", ' ', c."LastName")
order by SUM(i."Total") desc
limit 5

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select CONCAT(e."FirstName", ' ' ,e."LastName") AS nombres_empleados, 
       CONCAT(c."FirstName", ' ', c."LastName") AS nombres_clientes  
from "Customer" as c 
inner join "Employee" as e 
on c."SupportRepId" = e."EmployeeId"

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select il."InvoiceId" as "ID_facturas"  , t."Name" as "nombres_pistas"
from "InvoiceLine" as il
inner join "Track" as t 
on il."TrackId" = t."TrackId"

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select ar."Name" as mombre_del_artista, g."Name" as genero_de_la_pista
from "Artist" as ar
inner join "Album" as al
on ar."ArtistId"=al."ArtistId"
inner join "Track" as t
on al."AlbumId" =t."AlbumId"
inner join "Genre" as g
on t."GenreId" = g."GenreId" 

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select t."Name" as mombre_de_la_pista, m."Name" as "tipo_de_medio"
from "Track" as t
inner join "MediaType" as m
on t."MediaTypeId" = m."MediaTypeId"

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select t."Name" as mombre_de_la_pista, g."Name" as genero_de_la_pista
from "Track" as t
left join "Genre" as g -- Usamos el left join de manera que se cogen todas las filas de la comumna de la izquierda, es decir, cogemos todas las pistas tengan género o no. 
on t."GenreId" = g."GenreId"
--NOTA: Este ejercicio en concreto se podría haber hecho con inner join ya que todas lsa pistas tienen género asignado
  
-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select c."CustomerID", CONCAT(c."FirstName", ' ', c."LastName") as nombre_cliente, i."InvoiceId" as numero_factura, i."InvoiceDate" as "fecha_factura", i."Total" as "Importe_factura"
from "Customer" as c
left join "Invoice" as i
on c."CustomerID" = i."CustomerId"
order by c."CustomerID", "fecha_factura"

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).


-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 


--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.


-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.


-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.




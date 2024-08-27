
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
select MIN("Milliseconds")
from "Track"

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
select MAX("Milliseconds")
from "Track"

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
select MIN("UnitPrice")
from "Track"

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
select MAX("UnitPrice")
from "Track"

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
select MIN("InvoiceDate")
from "Invoice"

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
select MAX("InvoiceDate")
from "Invoice"

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select COUNT("TrackId")
from "Track"   

-- Ejercicio 8: Contar el número de clientes en Brasil.
select COUNT("CustomerID")
from "Customer"
where "Country" = 'Brazil'   

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select SUM("Milliseconds")
from "Track"   

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select COUNT("Title")
from "Employee"
where "Title"  = 'Sales Support Agent'    

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
    

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select AVG("Milliseconds")
from "Track"    

-- Ejercicio 13: Calcular el precio medio de las pistas.
select AVG("UnitPrice")
from "Track"    

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select STDDEV("Milliseconds")
from "Track"        

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select VARIANCE("Milliseconds")
from "Track"        

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select STDDEV("UnitPrice")
from "Track"

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.

select CONCAT("FirstName", ' ', "LastName") as "nombre_y_apellidos" 
from "Customer";

# Consultas en SQL

## Consultas a Server

> Para hacer consultas a nuestro server tenemos varias palabras reservadas: 

    SELECT  
    SHOW  
    DESCRIBE

## Consultas a tablas
> Para hacer consultas a las tablas des una base de datos utilizamos
la palabra reservada ***SELECT*** en conjunto con ***FROM***

> Si quiero traer todos los campos de una tabla: 
    
> Sintáxis 

    SELECT * FROM nombreTabla;  

> Ejemplo

    SELECT * FROM destinos;  

> Si queremos traer sólo datos de algunos campos de la tabla, la sintáxis es la siguiente  

    SELECT nCampo2, nCampo4  
      FROM nombreTabla;  

> Ejemplo  

    SELECT destNombre, destPrecio 
      FROM destinos;

> Para ordenar registros, utilizamos la palabra
> ***ORDER BY***  
> Sintáxis:  

    SELECT nCampo2, nCampo4, nCampo5    
        FROM nombreTabla  
        ORDER BY nCampo3;

> Ejemplo: 

    SELECT destNombre, destPrecio   
      FROM destinos
      ORDER BY destNombre;

    SELECT destNombre, destPrecio, idRegion
      FROM destinos
      ORDER BY idRegion desc, destPrecio;

## Filtrado de registros

> Filtrar registros significa traer sólamente los registros que cumplan alguna condicion dada  

> Para especificar condiciones de filtrado usamos la palabra ***WHERE***  

> Traer nombre y precio de destinos  
> dónde el precio no supere los 8000

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio <= 8000;  

> Traer nombre y precio de destinos
> dónde el precio esté en el rango de 6500 y 8000

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio >= 6500  
        AND destPrecio <= 8000; 

> Misma consulta con la palabra reservada ***BETWEEN*** 

    select destNombre, destPrecio  
       from destinos  
       where destPrecio BETWEEN 6500 and 8000;   

> Traer nombre y precio de la región 5

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion = 5;

> Traer nombre y precio de la región 5 
> y de la región 3

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion = 5
      OR idRegion = 3;



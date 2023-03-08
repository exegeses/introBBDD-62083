# Relaciones entre tablas

> Cuando quertes traer información de más de una tabla, debemos hacer relaciones entre dos o mas de ellas 

> La técnica ***table relation*** se logra mencionando
> las tablas en el table list ( después de FROM )
> y luego igualando la columna en com´un (columna relacionada)

> Ejemplo 

> traer nombre, precio y nombre de la marca 
> de productos

   SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos, marcas  
    WHERE productos.idMarca = marcas.idMarca;   

> traer nombre, precio, 
> nombre de la marca, nombre de la categoría
> de productos 

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
        FROM productos, marcas, categorias  
        WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;

> La técnica ***JOIN*** tambien se utiliza para traer datos de dos o más tablas 

> Ejemplo 

    SELECT prdNombre, prdPrecio, mkNombre  
        FROM productos  
        JOIN marcas  
        ON productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
        FROM productos  
        JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
        JOIN categorias  
        ON  productos.idCategoria = categorias.idCategoria;  



--  generando alias
-- palabra as

-- nombre, precio y marca (alias)
SELECT prdNombre AS Producto,
       prdPrecio AS Precio,
       prdPrecio * 1.05 AS 'Precio nuevo',
       mkNombre AS Marca
FROM productos, marcas
WHERE productos.idMarca = marcas.idMarca;


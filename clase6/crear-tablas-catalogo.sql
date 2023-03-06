-- Creación de tablas

-- categorías
create table categorias
(
    idCategoria TINYINT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    catNombre VARCHAR(45) UNIQUE NOT NULL
);

-- marcas
create table marcas
(
    idMarca TINYINT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mkNombre VARCHAR(45) UNIQUE NOT NULL
);

-- productos
CREATE TABLE productos (
               idProducto MEDIUMINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
               prdNombre VARCHAR(45) NOT NULL,
               prdPrecio FLOAT(8,2) NOT NULL,
               idMarca TINYINT UNSIGNED NOT NULL,
               idCategoria TINYINT UNSIGNED NOT NULL,
               prdDescricion VARCHAR(1000) NOT NULL,
               prdImagen VARCHAR(45) NOT NULL,
               prdActivo TINYINT(1) NOT NULL,
               FOREIGN KEY (idMarca)
                   REFERENCES marcas (idMarca),
               FOREIGN KEY (idCategoria)
                   REFERENCES categorias (idCategoria)
);

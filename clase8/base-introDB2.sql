CREATE DATABASE introDB2;
USE introDB2;

-- zona catálogo
-- tabla marcas
CREATE TABLE marcas
(
    idMarca tinyint unsigned not null auto_increment primary key,
    mkNombre varchar(45) unique not null
);

-- tabla categor´´ias
CREATE TABLE categorias
(
    idCategoria tinyint unsigned not null auto_increment primary key,
    catNombre varchar(45) unique not null
);

-- tabla productos
CREATE TABLE productos
(
    idProducto int unsigned not null auto_increment primary key,
    prdNombre  varchar(45) not null unique,
    prdPrecio  float(9, 2) unsigned not null,
    idMarca tinyint unsigned not null,
    constraint productos_marcas
        foreign key (idMarca) references marcas (idMarca)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    idCategoria tinyint unsigned not null,
    constraint productos_categorias
        foreign key (idCategoria) references categorias (idCategoria)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null default 'no-disponible.png',
    prdActivo boolean default '1'
);

-- zona business
-- tabla personas
CREATE TABLE personas
(
    idPersona int unsigned not null auto_increment primary key,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    dni int unsigned unique not null,
    cuitl int unsigned unique not null,
    direccion varchar(100) not null,
    telefono int unsigned not null,
    activo boolean default '1' not null
);
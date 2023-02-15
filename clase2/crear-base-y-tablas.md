# Creación de bases de datos y tablas

## Creación de una base de datos 

> Para crear una base da datos utilizamos 
> el comando "CREATE DATABASE" 

    CREATE DATABASE introDB;  

> Para interactuar con una base de datos, debemos activarla. 
> Para activarla utilizamos el comando "USE"  

    USE introDB;  

## Creación de una tabla  

> Para crear una tabla uzamos el comando "CREATE TABLE"

> *** Fórmula *** 

    CREATE TABLE nombreTabla (  
        campo tipoDato características,
        campo tipoDato características,
        campo tipoDato características
    );  

    CREATE TABLE billeteras (
        id tinyint unsigned auto_increment primary key not null,  
        nombre varchar(30) not null,  
        precio float(8,2) not null,  
        stock smallint unsigned not null
    )


    
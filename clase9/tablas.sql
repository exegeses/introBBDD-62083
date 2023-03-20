create table personas (
                          idPersona int unsigned not null auto_increment primary key,
                          nombre varchar(45) not null,
                          apellido varchar(45) not null,
                          dni int unsigned unique not null,
                          cuitl int unsigned unique not null,
                          direccion varchar(100) not null,
                          telefono int unsigned not null,
                          activo boolean default(1)
);
create table roles (
                       idRol tinyint unsigned not null auto_increment primary key,
                       rol varchar(45) not null
);

create table clientes (
                          idCliente mediumint unsigned not null auto_increment primary key,
                          idPersona int unsigned not null,
                          CONSTRAINT clientes_personas
                              foreign key (idPersona) references personas (idPersona)
                              ON DELETE NO ACTION
                              ON UPDATE NO ACTION
);

CREATE TABLE empleados (
                           idEmpleado mediumint unsigned not null auto_increment primary key,
                           idPersona int unsigned not null,
                           CONSTRAINT empleados_personas
                               foreign key (idPersona) references personas (idPersona)
                               ON DELETE NO ACTION
                               ON UPDATE NO ACTION,
                           idRol tinyint unsigned not null,
                           CONSTRAINT empleados_roles
                               foreign key (idRol) references roles (idRol)
                               ON DELETE NO ACTION
                               ON UPDATE NO ACTION,
                           sueldo float(10,2) unsigned not null
);


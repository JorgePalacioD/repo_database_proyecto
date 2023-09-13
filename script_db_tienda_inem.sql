create database db_comidad_rapidas_inem;
use db_comidad_rapidas_inem;

 create table empleado(
id_empleado int primary key not null,
nombre_empleado varchar(100) not null,
apellido_empleado varchar(100) not null,
roll_empleado varchar(100) not null 
);

insert into empleado (id_empleado,nombre_empleado,apellido_empleado,roll_empleado) values 
(1, "José", "Gómez", "Vendedor"),
(2, "María", "Rodríguez", "Cocinero"),
(3, "Pedro", "López", "Repartidor"),
(4, "Ana", "García", "Ingeniera"),
(5, "Carlos", "Sánchez", "Estudiante"),
(6, "Laura", "Martínez", "Médica"),
(7, "Juan", "Fernández", "Abogado"),
(8, "Sofía", "Díaz", "Arquitecta"),
(9, "Luis", "Pérez", "Programador"),
(10, "Andrea", "Torres", "Diseñadora");


create table cliente(
id_cliente int primary key not null,
nombre_cliente varchar(100) not null,
apellido_cliente varchar(100) not null,
edad_cliente smallint not null,
grado_cliente smallint not null
);

insert into cliente (id_cliente,nombre_cliente,apellido_cliente,edad_cliente,grado_cliente) values (1, 'Juan', 'Pérez', 15, 10),(2, 'María', 'Rodríguez', 16, 11),(3, 'Pedro', 'López', 17, 12),(4, 'Sofía', 'Gómez', 18, 1),(5,'José', 'Hernández', 19, 2),(6, 'Ana', 'García', 20, 3),(7, 'Carlos', 'Sánchez', 21, 4),(8, 'Isabel', 'Torres', 22, 5),(9, 'David', 'González', 23, 6),(10, 'Lucía', 'Fernández', 24, 7);

create table proveedor(
id_proveedor int primary key not null,
nombre_proveedor varchar(100),
contacto varchar(100),
tipo_de_producto varchar(100)
);


insert into proveedor (id_proveedor,nombre_proveedor,contacto,tipo_de_producto) values (1, "El Gran Sabor", 3123456789 , "Comida rápida"),
(2, "La Cantina Feliz", 3156789234, "Restaurante Mexicano"),
(3, "Pizzeria Bella Napoli", 3109876543, "Pizzería"),
(4, "SushiExpress", 3178901234, "Sushi"),
(5, "Café Aromático", 3145678901, "Cafetería"),
(6, "Burger Town", 3189012345, "Hamburguesas"),
(7, "La Trattoria", 3123456789, "Restaurante Italiano"),
(8, "Asian Wok", 3190123456, "Comida Asiática"),
(9, "FrescoSalad", 3156789012, "Ensaladas"),
(10, "Sweet Delights Bakery", 3101234567, "Panadería");


create table producto(
id_producto int primary key not null,
nombre_producto varchar(100),
precio float not null,
tipo_producto varchar(100),
cod_proveedor int not null,
foreign key(cod_proveedor) references proveedor(id_proveedor)
);

insert into producto (id_producto,nombre_producto,precio,tipo_producto,cod_proveedor) values
(1, "Hamburguesa", 2000, "Comida rápida",1),
(2, "Perro caliente", 1500, "Comida rápida",2),
(3, "Arepa con queso", 1000, "Comida rápida",3),
(4, "Pizza", 3000, "Comida rápida",4),
(5, "Sandwich", 2500, "Comida rápida",5),
(6, "Churro", 1000, "Comida rápida",6),
(7, "Helado", 2000, "Postre",7),
(8, "Fruta", 1500, "Postre",8),
(9, "Jugo", 1000, "Bebida",9),
(10, "Refresco", 1500, "Bebida",10);
 

select * from cliente;
select * from empleado;
select * from producto;
select * from proveedor;
select * from venta;




create table venta(
id_venta int primary key not null,
fecha date not null,
hora time not null,
cantidad varchar(120),
cod_empleado int not null,
cod_cliente int not null,
cod_producto int not null,
foreign key(cod_producto) references producto(id_producto),
foreign key(cod_empleado) references empleado (id_empleado),
foreign key (cod_cliente) references cliente (id_cliente) 
);

insert into venta(id_venta,fecha,hora,cantidad,cod_empleado,cod_cliente,cod_producto) values 
(1,"2023-07-20","12:00", 4, 1, 1, 1),
(2, "2023-07-21", "13:30", 2, 2, 2, 2),
(3, "2023-07-22", "14:45", 3, 3, 3, 3),
(4, "2023-07-23", "10:15", 4, 4, 4, 4),
(5, "2023-07-24", "09:00", 5, 5, 5, 5),
(6, "2023-07-25", "16:20", 6, 6, 6, 6),
(7, "2023-07-26", "11:10", 7, 7, 7, 7),
(8, "2023-07-27", "08:45", 8, 8, 8, 8),
(9, "2023-07-28", "15:00", 9, 9, 9, 9),
(10, "2023-07-29", "14:30", 10, 10, 10, 10);


select* from cliente;
show tables;


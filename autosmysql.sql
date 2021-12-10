DROP DATABASE IF EXISTS autos;
CREATE DATABASE IF NOT EXISTS autos;

USE autos;

#----------------------------------Tablas--------------------------------------
CREATE TABLE sucursal
(
   idSucursal int NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (idSucursal),

   nombre varchar(25),
   direccion VARCHAR(50) NOT NULL,
   telefono VARCHAR(20) NOT NULL,
   estatus bit NOT NULL DEFAULT 1
);

CREATE TABLE cliente
(
   idCliente int NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (idCliente),
   
   nombre VARCHAR(20),
   apellidos VARCHAR(50),
   telefono VARCHAR(20) NOT NULL,
   calle VARCHAR(20) NOT NULL,
   numero VARCHAR(20) NOT NULL,
   colonia VARCHAR(20) NOT NULL,
   estatus bit NOT NULL DEFAULT 1
);

CREATE TABLE empleado
(
   idEmpleado int NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (idEmpleado),
   
   nombre VARCHAR(20),
   apellidos VARCHAR(50),
   direccion VARCHAR(70),
   fechaIngreso DATE,
   
   idPuestoEmpleado INT NOT NULL,
   idSucursal INT NOT NULL,
   estatus bit NOT NULL DEFAULT 1
);

CREATE TABLE venta
(
   idVenta int NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (idVenta),
   
   fechaFactura DATE NOT NULL,
   cantidad int,
   descuento INT,
   
   idEmpleado INT NOT NULL,
   idFormaPago INT NOT NULL,
   idCliente INT NOT NULL,
   idSucursal INT NOT NULL,
   estatus bit NOT NULL DEFAULT 1
);

CREATE TABLE producto
(
   idProducto int NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (idProducto),
   
   precioVenta decimal,
   precioCompra decimal,
   color varchar(20),
   modelo varchar(20),
   cantidad INT,
   
   estatus bit NOT NULL DEFAULT 1
);

CREATE TABLE puestoEmpleado
(
   idPuestoEmpleado int NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (idPuestoEmpleado),
   
   nombre varchar(25),
   
   estatus bit NOT NULL DEFAULT 1
);

CREATE TABLE formaPago
(
   idFormaPago int NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (idFormaPago),

   nombre varchar(25),
   estatus bit NOT NULL DEFAULT 1
);

CREATE TABLE productoVenta
(
   idProductoVenta int NULL AUTO_INCREMENT,
   PRIMARY KEY (idProductoVenta),

   idProducto int NOT NULL,
   idVenta int NOT NULL,
   estatus bit NOT NULL DEFAULT 1
);
#----------------------------------Index--------------------------------------

CREATE INDEX IX_sucursal ON sucursal(idSucursal);
CREATE INDEX IX_cliente ON cliente(idCliente);
CREATE INDEX IX_empleado ON empleado(idEmpleado);
CREATE INDEX IX_venta ON venta(idVenta);
CREATE INDEX IX_producto ON producto(idProducto);
CREATE INDEX IX_puestoEmpleado ON puestoEmpleado(idPuestoEmpleado);
CREATE INDEX IX_formaPago ON formaPago(idFormaPago);
CREATE INDEX IX_productoVenta ON productoVenta(idProductoVenta);

#----------------------------------Relaciones--------------------------------------

ALTER TABLE empleado
ADD CONSTRAINT FK_empleadoSucursal
FOREIGN KEY (idSucursal) REFERENCES sucursal(idSucursal);

ALTER TABLE empleado
ADD CONSTRAINT FK_empleadoPuestoEmpleado
FOREIGN KEY (idPuestoEmpleado) REFERENCES puestoEmpleado(idPuestoEmpleado);

ALTER TABLE venta
ADD CONSTRAINT FK_ventaEmpleado
FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado);

ALTER TABLE venta
ADD CONSTRAINT FK_ventaSucursal
FOREIGN KEY (idSucursal) REFERENCES sucursal(idSucursal);

ALTER TABLE venta
ADD CONSTRAINT FK_ventaCliente
FOREIGN KEY (idCliente) REFERENCES cliente(idCliente);

ALTER TABLE venta
ADD CONSTRAINT FK_ventaFormaPago
FOREIGN KEY (idFormaPago) REFERENCES formaPago(idFormaPago);


ALTER TABLE productoVenta
ADD CONSTRAINT FK_ProductoVenta_Venta
FOREIGN KEY (idVenta) REFERENCES venta(idVenta);

ALTER TABLE productoVenta
ADD CONSTRAINT FK_ProductoVenta_Producto
FOREIGN KEY (idProducto) REFERENCES producto(idProducto);
#----------------------------------Poblacion--------------------------------------
Insert into sucursal (nombre, direccion, telefono)values 
("pape", "blvd pape 505 guadalupe", "8661234567"),
("madero","blvd madero 403 tecnológico","8669876543"),
("juarez","blvd juarez 301 roma","8664567891");    

Insert into cliente (nombre, apellidos, telefono, calle, numero, colonia)values
("raul","jimenez espriu","7894561333","manzana","85","matilda"),
("maria","alvarez garza","8665214698","pizza","45","brujilda"),
("perla","dieguez vazquez","8719632587","hidalgo","96","centro");

Insert into puestoEmpleado (nombre)values
("promotor"),
("vendedor"),
("cajero");

Insert into empleado (nombre, apellidos, direccion, fechaIngreso,idPuestoEmpleado, idSucursal)values
("juan","perez garza","anaconda 89 atenas","1998/12/05",3,1),
("jaime","leon sada","pelicano 54 venecia","1954/05/31",1,2),
("raul","enriquez ramirez","avestruz 87 las aves","1974/06/08",2,3);

Insert into formaPago (nombre)values
("debito"),
("credito"),
("efectivo");

Insert into producto (precioVenta, precioCompra, color, modelo, cantidad)values
(120000,100000,"marron","cavalier",2),
(152000,134000,"azul","sonic",3),
(254000,232000,"rojo","crv",1);

Insert into venta (fechaFactura, cantidad, descuento, idEmpleado,idFormaPago,idCliente,idSucursal)values
("1997/04/15",4,20,1,3,2,3),
("1984/07/06",3,45,2,2,1,1),
("1965/02/18",6,05,3,1,3,2);

Insert into productoVenta (idProducto,idVenta)values
(2,1),
(3,3),
(1,2);
#----------------------------------Select--------------------------------------
select * from sucursal;
select * from cliente;
select * from empleado;
select * from venta;
select * from producto;
select * from puestoEmpleado;
select * from formaPago;
select * from productoVenta ;
--BASE DE DATOS HECHA POR ANDRÉS IVAN RODRIGUEZ HERNANDEZ Y CARLOS DANIEL ZUÑIGA CORONADO
--TECNOLOGICO NACIONAL DE MEXICO CAMPUS MONCLOVA 
--PROGRAMACION EN AMBIENTE CLIENTE SERVIDOR Profesor: RUBEN MIGUEL RIOJAS RDZ

CREATE DATABASE ferretera
USE ferretera

---------------------------------Tablas----------------------------------------------
Create table Sucursal(
idCompania int IDENTITY(1,1),
nombre varchar(200)NOT NULL,
direccion varchar(200)NOT NULL,
telefono varchar(200)NOT NULL,
estatus BIT DEFAULT 1,
CONSTRAINT PK_compania PRIMARY KEY(idCompania)
);

Create table Empleado(
idEmpleado int IDENTITY(1,1),
nombre varchar(200)NOT NULL,
apellidos varchar(200)NOT NULL,
fechaingreso datetime,
estatus BIT DEFAULT 1,
idCompania int NOT NULL,
idPuesto int not null,
idVentas int not null,
CONSTRAINT PK_empleado PRIMARY KEY(idEmpleado)
);

create table PuestoEmpleado(
idPuesto int IDENTITY(1,1),
nombre varchar(200)NOT NULL,
estatus BIT DEFAULT 1,
CONSTRAINT PK_PuestoEmpleado PRIMARY KEY(idPuesto)
);

create table Cliente(
idCliente int IDENTITY(1,1),
nombre varchar(200)NOT NULL,
apellidos varchar(200)NOT NULL,
telefono varchar(20)NOT NULL,
calle varchar(30)NOT NULL,
numeroCasa varchar(10)NOT NULL,
colonia varchar(200)NOT NULL,
estatus BIT DEFAULT 1,
CONSTRAINT PK_Cliente PRIMARY KEY(idCliente)
);

create table Ventas(
idVentas int IDENTITY(1,1),
fechaFactura datetime,
cantidad varchar(200),
estatus BIT DEFAULT 1,
idEmpleado int not null,
idFormaDePago int not null,
idCliente int not null,
idProductoVenta int not null,
CONSTRAINT PK_Ventas PRIMARY KEY(idVentas)
);

create table FormaDePago(
idFormaDePago int IDENTITY(1,1),
nombrePago varchar(100),
estatus BIT DEFAULT 1,
CONSTRAINT PK_Formadepago PRIMARY KEY(idFormaDePago)
);

 create table Producto (
 idProducto int IDENTITY(1,1),
 modelo varchar(100)NOT NULL,
 precioVenta varchar(100)NOT NULL,
 precioCompra varchar(100)NOT NULL,
 color varchar(10)NOT NULL,
 cantidad varchar(100)NOT NULL,
 estatus BIT DEFAULT 1,
CONSTRAINT PK_Producto PRIMARY KEY(idProducto)
 );


 -----------------INDICES---------------------
 CREATE INDEX IX_Sucursal ON Sucursal (idCompania);
 GO
 CREATE INDEX IX_Empleado ON Empleado (idEmpleado);
 GO
 CREATE INDEX IX_PuestoEmpleado ON PuestoEmpleado(idPuesto);
 GO
 CREATE INDEX IX_Cliente ON Cliente(idCliente);
 GO
 CREATE INDEX IX_Ventas ON Ventas(idVentas);
 GO
 CREATE INDEX IX_FormaDePago ON FormaDePago(idFormaDePago);
 GO
 CREATE INDEX IX_Producto ON Producto(idProducto);
 GO

------------------RELACIONES--------------------------
ALTER TABLE Sucursal
ADD CONSTRAINT FK_SucursalEmpleado
FOREIGN KEY (idEmpleado) REFERENCES Empleado(idEmpleado);
GO

ALTER TABLE Empleado
ADD CONSTRAINT FK_PuestoEmpleado
FOREIGN KEY (idPuesto) REFERENCES PuestoEmpleado(idPuesto);
GO
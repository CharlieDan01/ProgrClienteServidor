PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: cliente
DROP TABLE IF EXISTS cliente;

CREATE TABLE cliente (
    idCliente,
    nombre,
    apellidos,
    telefono,
    calle,
    numero,
    colonia,
    estatus
);

INSERT INTO cliente (
                        idCliente,
                        nombre,
                        apellidos,
                        telefono,
                        calle,
                        numero,
                        colonia,
                        estatus
                    )
                    VALUES (
                        '1',
                        'raul',
                        'jimenez espriu',
                        '7894561333',
                        'manzana',
                        '85',
                        'matilda',
                        '1'
                    );

INSERT INTO cliente (
                        idCliente,
                        nombre,
                        apellidos,
                        telefono,
                        calle,
                        numero,
                        colonia,
                        estatus
                    )
                    VALUES (
                        '2',
                        'maria',
                        'alvarez garza',
                        '8665214698',
                        'pizza',
                        '45',
                        'brujilda',
                        '1'
                    );

INSERT INTO cliente (
                        idCliente,
                        nombre,
                        apellidos,
                        telefono,
                        calle,
                        numero,
                        colonia,
                        estatus
                    )
                    VALUES (
                        '3',
                        'perla',
                        'dieguez vazquez',
                        '8719632587',
                        'hidalgo',
                        '96',
                        'centro',
                        '1'
                    );


-- Table: empleado
DROP TABLE IF EXISTS empleado;

CREATE TABLE empleado (
    idEmpleado,
    nombre,
    apellidos,
    direccion,
    fechaIngreso,
    idPuestoEmpleado,
    idSucursal,
    estatus
);

INSERT INTO empleado (
                         idEmpleado,
                         nombre,
                         apellidos,
                         direccion,
                         fechaIngreso,
                         idPuestoEmpleado,
                         idSucursal,
                         estatus
                     )
                     VALUES (
                         '1',
                         'juan',
                         'perez garza',
                         'anaconda 89 atenas',
                         '1998-12-05',
                         '3',
                         '1',
                         '1'
                     );

INSERT INTO empleado (
                         idEmpleado,
                         nombre,
                         apellidos,
                         direccion,
                         fechaIngreso,
                         idPuestoEmpleado,
                         idSucursal,
                         estatus
                     )
                     VALUES (
                         '2',
                         'jaime',
                         'leon sada',
                         'pelicano 54 venecia',
                         '1954-05-31',
                         '1',
                         '2',
                         '1'
                     );

INSERT INTO empleado (
                         idEmpleado,
                         nombre,
                         apellidos,
                         direccion,
                         fechaIngreso,
                         idPuestoEmpleado,
                         idSucursal,
                         estatus
                     )
                     VALUES (
                         '3',
                         'raul',
                         'enriquez ramirez',
                         'avestruz 87 las aves',
                         '1974-06-08',
                         '2',
                         '3',
                         '1'
                     );


-- Table: formaPago
DROP TABLE IF EXISTS formaPago;

CREATE TABLE formaPago (
    idFormaPago,
    nombre,
    estatus
);

INSERT INTO formaPago (
                          idFormaPago,
                          nombre,
                          estatus
                      )
                      VALUES (
                          '1',
                          'debito',
                          '1'
                      );

INSERT INTO formaPago (
                          idFormaPago,
                          nombre,
                          estatus
                      )
                      VALUES (
                          '2',
                          'credito',
                          '1'
                      );

INSERT INTO formaPago (
                          idFormaPago,
                          nombre,
                          estatus
                      )
                      VALUES (
                          '3',
                          'efectivo',
                          '1'
                      );


-- Table: producto
DROP TABLE IF EXISTS producto;

CREATE TABLE producto (
    idProducto,
    precioVenta,
    precioCompra,
    color,
    modelo,
    cantidad,
    estatus
);

INSERT INTO producto (
                         idProducto,
                         precioVenta,
                         precioCompra,
                         color,
                         modelo,
                         cantidad,
                         estatus
                     )
                     VALUES (
                         '1',
                         '120000',
                         '100000',
                         'marron',
                         'cavalier',
                         '2',
                         '1'
                     );

INSERT INTO producto (
                         idProducto,
                         precioVenta,
                         precioCompra,
                         color,
                         modelo,
                         cantidad,
                         estatus
                     )
                     VALUES (
                         '2',
                         '152000',
                         '134000',
                         'azul',
                         'sonic',
                         '3',
                         '1'
                     );

INSERT INTO producto (
                         idProducto,
                         precioVenta,
                         precioCompra,
                         color,
                         modelo,
                         cantidad,
                         estatus
                     )
                     VALUES (
                         '3',
                         '254000',
                         '232000',
                         'rojo',
                         'crv',
                         '1',
                         '1'
                     );


-- Table: productoVenta
DROP TABLE IF EXISTS productoVenta;

CREATE TABLE productoVenta (
    idProductoVenta,
    idProducto,
    idVenta,
    estatus
);

INSERT INTO productoVenta (
                              idProductoVenta,
                              idProducto,
                              idVenta,
                              estatus
                          )
                          VALUES (
                              '1',
                              '2',
                              '1',
                              '1'
                          );

INSERT INTO productoVenta (
                              idProductoVenta,
                              idProducto,
                              idVenta,
                              estatus
                          )
                          VALUES (
                              '2',
                              '3',
                              '3',
                              '1'
                          );

INSERT INTO productoVenta (
                              idProductoVenta,
                              idProducto,
                              idVenta,
                              estatus
                          )
                          VALUES (
                              '3',
                              '1',
                              '2',
                              '1'
                          );


-- Table: puestoEmpleado
DROP TABLE IF EXISTS puestoEmpleado;

CREATE TABLE puestoEmpleado (
    idPuestoEmpleado,
    nombre,
    estatus
);

INSERT INTO puestoEmpleado (
                               idPuestoEmpleado,
                               nombre,
                               estatus
                           )
                           VALUES (
                               '1',
                               'promotor',
                               '1'
                           );

INSERT INTO puestoEmpleado (
                               idPuestoEmpleado,
                               nombre,
                               estatus
                           )
                           VALUES (
                               '2',
                               'vendedor',
                               '1'
                           );

INSERT INTO puestoEmpleado (
                               idPuestoEmpleado,
                               nombre,
                               estatus
                           )
                           VALUES (
                               '3',
                               'cajero',
                               '1'
                           );


-- Table: sucursal
DROP TABLE IF EXISTS sucursal;

CREATE TABLE sucursal (
    idSucursal,
    nombre,
    direccion,
    telefono,
    estatus
);

INSERT INTO sucursal (
                         idSucursal,
                         nombre,
                         direccion,
                         telefono,
                         estatus
                     )
                     VALUES (
                         '1',
                         'pape',
                         'blvd pape 505 guadalupe',
                         '8661234567',
                         '1'
                     );

INSERT INTO sucursal (
                         idSucursal,
                         nombre,
                         direccion,
                         telefono,
                         estatus
                     )
                     VALUES (
                         '2',
                         'madero',
                         'blvd madero 403 tecnológico',
                         '8669876543',
                         '1'
                     );

INSERT INTO sucursal (
                         idSucursal,
                         nombre,
                         direccion,
                         telefono,
                         estatus
                     )
                     VALUES (
                         '3',
                         'juarez',
                         'blvd juarez 301 roma',
                         '8664567891',
                         '1'
                     );


-- Table: venta
DROP TABLE IF EXISTS venta;

CREATE TABLE venta (
    idVenta,
    fechaFactura,
    cantidad,
    descuento,
    idEmpleado,
    idFormaPago,
    idCliente,
    idSucursal,
    estatus
);

INSERT INTO venta (
                      idVenta,
                      fechaFactura,
                      cantidad,
                      descuento,
                      idEmpleado,
                      idFormaPago,
                      idCliente,
                      idSucursal,
                      estatus
                  )
                  VALUES (
                      '1',
                      '1997-04-15',
                      '4',
                      '20',
                      '1',
                      '3',
                      '2',
                      '3',
                      '1'
                  );

INSERT INTO venta (
                      idVenta,
                      fechaFactura,
                      cantidad,
                      descuento,
                      idEmpleado,
                      idFormaPago,
                      idCliente,
                      idSucursal,
                      estatus
                  )
                  VALUES (
                      '2',
                      '1984-07-06',
                      '3',
                      '45',
                      '2',
                      '2',
                      '1',
                      '1',
                      '1'
                  );

INSERT INTO venta (
                      idVenta,
                      fechaFactura,
                      cantidad,
                      descuento,
                      idEmpleado,
                      idFormaPago,
                      idCliente,
                      idSucursal,
                      estatus
                  )
                  VALUES (
                      '3',
                      '1965-02-18',
                      '6',
                      '5',
                      '3',
                      '1',
                      '3',
                      '2',
                      '1'
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

CREATE DATABASE POS 
USE POS 

CREATE TABLE Usuarios (
idUsuario int  NOT NULL PRIMARY KEY IDENTITY(1,1),
nombreUsuario varchar (20)   ,
contrasena varchar (20)   );

CREATE TABLE Productos (
idProducto int  NOT NULL PRIMARY KEY IDENTITY(1,1),
nombreProducto varchar (50)   ,
categoria varchar (20)   ,
porcentajeIVA float    );

CREATE TABLE Movimientos (
idMovimiento int  NOT NULL PRIMARY KEY IDENTITY(1,1),
idProducto int  NOT NULL , CONSTRAINT fk_Productos_Movimientos FOREIGN KEY (idProducto) REFERENCES Productos (idProducto) ,
idRecibo int    ,
fechaMovimiento date    ,
cantidad int    ,
valorUnitarioProducto float    ,
valorUnitarioIVA float    ,
tipoMovimiento varchar (10)   );


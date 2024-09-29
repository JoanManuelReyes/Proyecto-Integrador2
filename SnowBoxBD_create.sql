USE mysql;
DROP DATABASE IF EXISTS bdIntegradorII;
CREATE DATABASE bdIntegradorII;
USE bdIntegradorII;

-- Tablas
CREATE TABLE Entradas (
    id int  PRIMARY KEY,
    fecha date  NOT NULL,
    cantidad int  NOT NULL,
    Producto_id int  NOT NULL
);

CREATE TABLE Pedidos (
    id int  PRIMARY KEY,
    Usuario_id int  NOT NULL,
    Producto_id int  NOT NULL,
    cantidad int  NOT NULL
);

CREATE TABLE Producto (
    id int  PRIMARY KEY,
    nombre varchar(35)  NOT NULL,
    descripcion varchar(150)  NOT NULL,
    categoria varchar(25)  NOT NULL,
    subcategoria varchar(25)  NOT NULL,
    stock int  NOT NULL
);

CREATE TABLE Proveedor (
    id int  PRIMARY KEY,
	Nombre varchar(50)  NOT NULL,
    RUC char(11)  NOT NULL,
    telefono char(9)  NOT NULL,
    correo varchar(35)  NOT NULL,
    Producto_id int  NOT NULL
);

CREATE TABLE Salidas (
    id int  PRIMARY KEY,
    fecha date  NOT NULL,
    cantidad int  NOT NULL,
    Producto_id int  NOT NULL
);

CREATE TABLE Usuario (
    id int  PRIMARY KEY,
    nombre_completo varchar(50)  NOT NULL,
	contrasenia varchar(15)  NOT NULL,
    dni char(8)  NOT NULL,
    telefono char(9)  NOT NULL
);

-- Foreign Keyss
ALTER TABLE Entradas ADD CONSTRAINT Entradas_Producto FOREIGN KEY Entradas_Producto (Producto_id)
    REFERENCES Producto (id);

-- Reference: Pedidos_Producto (table: Pedidos)
ALTER TABLE Pedidos ADD CONSTRAINT Pedidos_Producto FOREIGN KEY Pedidos_Producto (Producto_id)
    REFERENCES Producto (id);

-- Reference: Pedidos_Usuario (table: Pedidos)
ALTER TABLE Pedidos ADD CONSTRAINT Pedidos_Usuario FOREIGN KEY Pedidos_Usuario (Usuario_id)
    REFERENCES Usuario (id);

-- Reference: Proveedor_Producto (table: Proveedor)
ALTER TABLE Proveedor ADD CONSTRAINT Proveedor_Producto FOREIGN KEY Proveedor_Producto (Producto_id)
    REFERENCES Producto (id);

-- Reference: Salidas_Producto (table: Salidas)
ALTER TABLE Salidas ADD CONSTRAINT Salidas_Producto FOREIGN KEY Salidas_Producto (Producto_id)
    REFERENCES Producto (id);
	
	
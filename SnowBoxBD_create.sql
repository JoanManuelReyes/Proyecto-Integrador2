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

CREATE TABLE Producto (
    id int  PRIMARY KEY,
    Nombre varchar(35)  NOT NULL,
    Descripcion varchar(150)  NOT NULL,
    Categoria varchar(25)  NOT NULL,
    SubCategoria varchar(25)  NOT NULL,
    Stock int  NOT NULL
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

CREATE TABLE Solicitud (
    id int  PRIMARY KEY,
    Usuario_id int  NOT NULL,
    Producto_id int  NOT NULL,
    Tipo varchar(20)  NOT NULL,
    Descripcion varchar(250)  NOT NULL,
    cantidad int  NOT NULL,
    fecha date  NOT NULL
);

CREATE TABLE Usuario (
    id int  PRIMARY KEY,
    nombre_completo varchar(50)  NOT NULL,
    dni char(8)  NOT NULL,
    contrasenia varchar(100)  NOT NULL,
    telefono char(9)  NOT NULL
);

-- Foreign Keys
ALTER TABLE Entradas ADD CONSTRAINT Entradas_Producto FOREIGN KEY Entradas_Producto (Producto_id)
    REFERENCES Producto (id);

ALTER TABLE Solicitud ADD CONSTRAINT Pedidos_Producto FOREIGN KEY Pedidos_Producto (Producto_id)
    REFERENCES Producto (id);

ALTER TABLE Solicitud ADD CONSTRAINT Pedidos_Usuario FOREIGN KEY Pedidos_Usuario (Usuario_id)
    REFERENCES Usuario (id);

ALTER TABLE Proveedor ADD CONSTRAINT Proveedor_Producto FOREIGN KEY Proveedor_Producto (Producto_id)
    REFERENCES Producto (id);

ALTER TABLE Salidas ADD CONSTRAINT Salidas_Producto FOREIGN KEY Salidas_Producto (Producto_id)
    REFERENCES Producto (id);


-- Usuarios
INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('1','José Luis Morales','18523367','3ddb7cffe21964c54f62ea0a85cf29ff2578d7be8f6378020f038aa70c2c1231','947141321');

INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('2','Lucía Rodríguez','23456789','641a8cb7c13d3917151cb13d1c942c76d91a59a5bf3f53ee67990380dd68d8bd','976543210');
INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('3','Miguel Ángel Ruiz','34567890','b72f711bb9efdffe85b847933f4c6fa6f5182cd4e6a384446e69b53ede9ed01f','965432109');
INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('4','Mariana Salas','45678901','16892d8766f61401e4e66a5fe669eecc0c64ba2fcd32f34ac59a5f2dde050223','954321098');
INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('5','Ricardo Gómez','56789012','926fb15b032f6fd5dda1ec0c788ffe4436fc7ff77dd0217a6160f128cc69443e','943210987');
INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('6','Carmen Castillo','67890123','bbbb36be904f7925aa3701a35e5d1ac0d35ca7d9389437e73dcd173fb17e9010','932109876');
INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('7','Fernando Herrera','78901234','4fb9966c6cc48c67487d118c60477764975a2acb745d96a57aa84ead8d1f6323','921098765');
INSERT INTO Usuario (id,nombre_completo,dni,contrasenia,telefono) VALUES ('8','Patricia Fernández','89012345','9c56cc51b374c3ba189210d5b6d4bf57790d351c96c47c02190ecf1e430635ab','910987654');


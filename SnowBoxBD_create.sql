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
    Stock int  NOT NULL,
    Proveedor_id int  NOT NULL
);

CREATE TABLE Proveedor (
    id int  PRIMARY KEY,
    Nombre varchar(50)  NOT NULL,
    RUC char(11)  NOT NULL,
    telefono char(9)  NOT NULL,
    correo varchar(35)  NOT NULL
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

ALTER TABLE Producto ADD CONSTRAINT Producto_Proveedor FOREIGN KEY Producto_Proveedor (Proveedor_id)
    REFERENCES Proveedor (id);

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

-- Proveedores
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('1','JBL','20123456781','987654321','negocios@JBL.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('2','Sony','20123456782','923456789','negocios@Sony.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('3','Bose','20123456783','912345678','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('4','Sennheiser','20123456784','934567890','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('5','Samsung','20123456785','956789012','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('6','Apple','20123456786','978901234','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('7','Xiaomi','20123456787','901234567','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('8','Huawei','20123456788','923456781','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('9','Anker','20123456789','945678901','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('10','Wacom','20123456790','967890123','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('11','HP','20123456791','989012345','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('12','Dell','20123456792','901234569','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('13','ASUS','20123456793','923456784','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('14','Kingston','20123456794','945678903','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('15','Amazon','20123456795','967890125','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('16','Google','20123456796','989012347','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('17','Philips','20123456797','901234571','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('18','TP-Link','20123456798','923456786','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('19','Insta360','20123456799','945678905','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('20','GoPro','20123456800','967890127','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('21','DJI','20123456801','989012349','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('22','LG','20123456802','901234573','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('23','Microsoft','20123456803','923456788','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('24','CantonImportsPeru','20123456804','945678907','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('25','Rode','20123456805','967890129','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('26','Focusrite','20123456806','989012351','negocios@Bose.com');
INSERT INTO Proveedor (id,Nombre,RUC,telefono,correo) VALUES ('27','TechImports','20123456807','901234575','negocios@Bose.com');

-- Productos
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('1','Sony WH-1000XM4', 'Audífonos inalámbricos con cancelación de ruido y calidad de sonido excepcional','Audio','Audifonos','20','2');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('2','Bose QuietComfort 35 II', 'Audífonos Bluetooth con cancelación activa de ruido y micrófono integrado','Audio','Audifonos','20','3');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('3','Apple AirPods Pro', 'Audífonos inalámbricos con ajuste personalizado y cancelación activa de ruido','Audio','Audifonos','20','6');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('4','JBL Flip 5', 'Parlante portátil resistente al agua con sonido potente y batería de larga duración','Audio','Parlantes','20','1');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('5','Sony SRS-XB43', 'Parlante Bluetooth con extra bass y resistencia al agua y al polvo','Audio','Parlantes','20','2');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('6','Bose SoundLink Color II', 'Parlante Bluetooth compacto con sonido envolvente y diseño elegante','Audio','Parlantes','20','3');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('7','Blue Yeti', 'Micrófono USB versátil con calidad de grabación profesional y múltiples patrones de captación','Audio','Microfonos','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('8','Sennheiser XS 1', 'Micrófono dinámico de mano, con patrón polar cardioide, interruptor de silencio silencioso, clip de micrófono y bolsa de transporte.','Audio','Microfonos','20','4');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('9','Rode NT-USB', 'Micrófono USB con calidad de estudio y filtro pop integrado para grabaciones claras','Audio','Microfonos','20','25');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('10','Amazon Basics 3.5mm Male to Male Stereo Audio Cable', 'Cable de audio de 1.2 metros para conectar dispositivos','Audio','Accesorios de Audio','20','15');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('11','Bose SoundLink Flex', 'Funda de transporte para parlantes Bose con protección y estilo','Audio','Accesorios de Audio','20','3');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('12','Focusrite Scarlett Solo', 'Interfaz de audio USB para grabación de alta calidad en estudios caseros','Audio','Accesorios de Audio','20','26');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('13','Samsung HW-Q80R', 'Barra de sonido con tecnología Dolby Atmos y sonido envolvente','Audio','Equipos y Barras de Sonido','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('14','LG SN6Y', 'Barras de sonido con potencia de 420W y sonido envolvente 3.1','Audio','Equipos y Barras de Sonido','20','22');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('15','Bose Soundbar 500', 'Barra de sonido inteligente con Amazon Alexa y sonido de calidad superior','Audio','Equipos y Barras de Sonido','20','3');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('16','Apple iPhone 14', 'Smartphone de alta gama con cámara dual y chip A15 Bionic','Celulares y Accesorios','Celulares','20','6');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('17','Samsung Galaxy S23', 'Celular insignia con pantalla AMOLED y rendimiento potente','Celulares y Accesorios','Celulares','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('18','Google Pixel 7', 'Smartphone con cámara avanzada y experiencia Android pura','Celulares y Accesorios','Celulares','20','16');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('19','Spigen Tough Armor', 'Funda protectora resistente para iPhone con diseño elegante','Celulares y Accesorios','Cases para celular','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('20','OtterBox Defender', 'Funda robusta para Samsung Galaxy que ofrece máxima protección','Celulares y Accesorios','Cases para celular','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('21','Case-Mate Tough Clear', 'Funda transparente y duradera para resaltar el diseño original del celular','Celulares y Accesorios','Cases para celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('22','ZAGG InvisibleShield', 'Protector de pantalla de alta definición que previene rayones','Celulares y Accesorios','Micas para celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('23','Spigen Glas.tr', 'Cristal templado de 9H para máxima protección de pantalla','Celulares y Accesorios','Micas para celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('24','Belkin InvisiGlass Ultra', 'Mica para pantalla ultra delgada y resistente a los impactos','Celulares y Accesorios','Micas para celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('25','Apple Watch Series 8', 'Reloj inteligente con monitoreo de salud y seguimiento de actividad','Celulares y Accesorios','Relojes Inteligentes','20','6');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('26','Samsung Galaxy Watch 5', 'Smartwatch con GPS y funciones avanzadas de salud y fitness','Celulares y Accesorios','Relojes Inteligentes','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('27','Fitbit Versa 4', 'Reloj inteligente con seguimiento de actividad y notificaciones','Celulares y Accesorios','Relojes Inteligentes','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('28','Anker PowerCore 10000', 'Cargador portátil compacto con capacidad de 10000mAh','Celulares y Accesorios','Cargadores Portátiles','20','9');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('29','RAVPower 26800mAh', 'Batería externa de gran capacidad con múltiples puertos de carga','Celulares y Accesorios','Cargadores Portátiles','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('30','Xiaomi Mi Power Bank 3', 'Cargador portátil con doble salida USB y carga rápida','Celulares y Accesorios','Cargadores Portátiles','20','7');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('31','UGREEN Soporte para teléfono', 'Soporte ajustable para escritorio, ideal para videollamadas','Celulares y Accesorios','Soporte para Celular','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('32','Anker Soporte para celular', 'Base de carga con soporte para smartphone y tablet','Celulares y Accesorios','Soporte para Celular','20','9');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('33','OMOTON Soporte Ajustable', 'Soporte ergonómico para celular, compatible con la mayoría de modelos','Celulares y Accesorios','Soporte para Celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('34','Apple 20W USB-C Power Adapter', 'Cargador rápido para iPhone y dispositivos compatibles','Celulares y Accesorios','Cargadores','20','6');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('35','Anker 30W USB-C Charger', 'Cargador compacto de alta velocidad para varios dispositivos','Celulares y Accesorios','Cargadores','20','9');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('36','Samsung Adaptive Fast Charger', 'Cargador rápido compatible con la mayoría de smartphones Samsung','Celulares y Accesorios','Cargadores','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('37','Amazon Basics USB-C to USB-A Cable', 'Cable USB de 1.8 metros para transferencia de datos','Celulares y Accesorios','Cables','20','15');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('38','Anker Powerline II Lightning Cable', 'Cable Lightning de 1 metro con garantía de por vida','Celulares y Accesorios','Cables','20','9');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('39','Belkin Mixit DuraTek Lightning Cable', 'Cable de carga Lightning duradero y flexible','Celulares y Accesorios','Cables','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('40','SanDisk Ultra microSDXC', 'Tarjeta de memoria de 128GB para almacenamiento en dispositivos móviles','Celulares y Accesorios','Tarjetas de Memoria','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('41','Samsung EVO Select 64GB', 'Tarjeta microSD con alta velocidad de lectura y escritura','Celulares y Accesorios','Tarjetas de Memoria','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('42','Kingston Canvas Select Plus 32GB', 'Tarjeta de memoria con rendimiento confiable para fotografías y videos','Celulares y Accesorios','Tarjetas de Memoria','20','14');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('43','Moment Lens M-Cap', 'Protector de lente para evitar rayones en cámaras de smartphones','Celulares y Accesorios','Protectores de cámaras','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('44','K&F Concept Protector de Lente', 'Funda de protección para cámaras DSLR y mirrorless','Celulares y Accesorios','Protectores de cámaras','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('45','Neewer Protector para Cámaras', 'Protección de cámara universal para la mayoría de modelos', 'Celulares y Accesorios','Protectores de cámaras','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('46','PopSocket', 'Soporte para celular que proporciona un mejor agarre y se puede usar como soporte','Celulares y Accesorios','Accesorios de Celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('47','Belkin Car Vent Mount', 'Soporte para celular que se adhiere a la rejilla de ventilación del auto','Celulares y Accesorios','Accesorios de Celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('48','Razer Phone Cooler Chroma', 'Ventilador para celular diseñado para gaming, reduce la temperatura','Celulares y Accesorios','Accesorios de Celular','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('49','Alienware M15 R6', 'Laptop gamer con pantalla de 15.6 pulgadas, procesador Intel Core i7 y gráfica NVIDIA RTX 3060','Gamer','Laptops Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('50','ASUS ROG Zephyrus G14', 'Laptop gamer ultradelgada con procesador AMD Ryzen 9 y gráfica NVIDIA RTX 3060','Gamer','Laptops Gamer','20','13');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('51','MSI GF65 Thin', 'Laptop gamer con procesador Intel Core i5 y gráfica NVIDIA GTX 1660 Ti','Gamer','Laptops Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('52','LG UltraGear 27GN950', 'Monitor gamer de 27 pulgadas con resolución 4K y tasa de refresco de 144Hz','Gamer','Monitores Gamer','20','22');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('53','Samsung Odyssey G9', 'Monitor curvo de 49 pulgadas con resolución Dual QHD y tasa de refresco de 240Hz','Gamer','Monitores Gamer','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('54','ASUS TUF Gaming VG27AQ', 'Monitor de 27 pulgadas con resolución 1440p y 165Hz, ideal para juegos de alta velocidad','Gamer','Monitores Gamer','20','13');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('55','Razer BlackWidow V3', 'Teclado mecánico gamer con iluminación RGB y switches táctiles de alto rendimiento','Gamer','Accesorios Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('56','Logitech G502 HERO', 'Ratón gamer con sensor HERO de 25,600 DPI, personalizable y con pesos ajustables','Gamer','Accesorios Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('57','HyperX Cloud Alpha', 'Audífonos gamer con sonido envolvente y almohadillas de cuero para mayor comodidad','Gamer','Accesorios Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('58','AMD Ryzen 7 5800X', 'Procesador de 8 núcleos y 16 hilos, ideal para gaming de alto rendimiento','Gamer','Componentes Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('59','NVIDIA GeForce RTX 3080', 'Tarjeta gráfica con arquitectura Ampere y 10GB de VRAM, ideal para gaming en 4K','Gamer','Componentes Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('60','Corsair Vengeance RGB Pro 16GB', 'Memoria RAM de alta velocidad con iluminación RGB para una experiencia de juego superior','Gamer','Componentes Gamer','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('61','DXRacer Master', 'Silla gamer ergonómica con soporte lumbar y reposabrazos ajustables','Gamer','Sillas y Mesas','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('62','Secretlab Titan EVO 2022', 'Silla gamer con soporte lumbar integrado y múltiples ajustes para comodidad','Gamer','Sillas y Mesas','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('63','Arozzi Arena', 'Mesa gamer con superficie espaciosa y resistente al agua, ideal para setups gaming','Gamer','Sillas y Mesas','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('64','PlayStation 5', 'Consola de última generación con soporte para juegos 4K y ray tracing','Gamer','Consolas y Videojuegos','20','2');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('65','Xbox Series X', 'Consola de alto rendimiento con soporte para juegos en 4K y almacenamiento SSD de 1TB','Gamer','Consolas y Videojuegos','20','23');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('66','Nintendo Switch OLED', 'Consola híbrida con pantalla OLED y soporte para modo portátil y de sobremesa','Gamer','Consolas y Videojuegos','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('67','Oculus Quest 2', 'Casco de realidad virtual autónomo con pantalla de alta resolución y 128GB de almacenamiento','Gamer','Realidad Virtual','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('68','HTC Vive Pro', 'Sistema de realidad virtual con tracking de precisión y alta resolución para PC','Gamer','Realidad Virtual','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('69','PlayStation VR2', 'Casco de realidad virtual compatible con la consola PS5 y gráficos avanzados','Gamer','Realidad Virtual','20','2');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('70','Control Inalámbrico DualSense', 'Control inalámbrico para PS5 con retroalimentación háptica y gatillos adaptativos','Gamer','Accesorios de Consolas','20','2');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('71','Xbox Elite Wireless Controller Series 2', 'Controlador premium con personalización avanzada y batería de larga duración','Gamer','Accesorios de Consolas','20','23');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('72','Nintendo Switch Pro Controller', 'Controlador inalámbrico para Nintendo Switch con diseño ergonómico','Gamer','Accesorios de Consolas','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('73','Elgato Stream Deck', 'Panel de control personalizable para streaming y productividad','Gamer','Streaming','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('74','Blue Yeti X', 'Micrófono USB de alta calidad ideal para streaming y grabación de voz','Gamer','Streaming','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('75','Logitech C920 Pro', 'Cámara web HD 1080p ideal para streaming y videollamadas','Gamer','Streaming','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('76','Funko Pop! Geralt of Rivia', 'Figura coleccionable de Geralt de Rivia de la serie The Witcher','Gamer','Coleccionables','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('77','Figura Nendoroid Link', 'Figura articulada de Link, basada en el juego The Legend of Zelda','Gamer','Coleccionables','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('78','Amiibo Mario', 'Figura coleccionable Amiibo de Mario compatible con múltiples juegos de Nintendo','Gamer','Coleccionables','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('79','Apple iPad Air 10.9"', 'Tablet con pantalla de 10.9 pulgadas, chip A14 Bionic, ideal para productividad y entretenimiento','Cómputo','Tablets y Tabletas Gráficas','20','6');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('80','Wacom Intuos Pro M', 'Tableta gráfica profesional de tamaño mediano con sensibilidad a la presión','Cómputo','Tablets y Tabletas Gráficas','20','10');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('81','Samsung Galaxy Tab S7', 'Tablet con pantalla de 11 pulgadas, procesador Snapdragon 865+ y lápiz S Pen incluido','Cómputo','Tablets y Tabletas Gráficas','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('82','Dell XPS 13', 'Laptop ultradelgada de 13 pulgadas con procesador Intel Core i7 y pantalla InfinityEdge','Cómputo','Laptops y Accesorios','20','12');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('83','HP Spectre x360', 'Laptop convertible con pantalla táctil de 13.3 pulgadas, ideal para trabajo y entretenimiento','Cómputo','Laptops y Accesorios','20','11');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('84','Lenovo ThinkPad X1 Carbon', 'Laptop de 14 pulgadas, diseño ligero y duradero con procesador Intel Core i5','Cómputo','Laptops y Accesorios','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('85','HP Pavilion Desktop', 'PC de escritorio con procesador Intel Core i5 y almacenamiento de 1TB','Cómputo','PC de escritorio','20','11');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('86','Acer Aspire TC', 'Computadora de escritorio con 8GB RAM, ideal para uso en el hogar y oficina','Cómputo','PC de escritorio','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('87','Apple iMac 24"', 'PC de escritorio todo en uno con pantalla Retina 4.5K de 24 pulgadas y chip M1','Cómputo','PC de escritorio','20','6');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('88','Canon PIXMA G3110', 'Impresora multifuncional con sistema de tinta recargable, ideal para alta calidad','Cómputo','Impresoras y Escaners','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('89','HP DeskJet 3755', 'Impresora compacta y todo en uno con capacidad de impresión inalámbrica','Cómputo','Impresoras y Escaners','20','11');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('90','Epson EcoTank L3150', 'Impresora multifuncional con sistema de tanque de tinta de alta capacidad','Cómputo','Impresoras y Escaners','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('91','Samsung Odyssey G5', 'Monitor curvo de 27 pulgadas, resolución WQHD y frecuencia de actualización de 144Hz','Cómputo','Monitores','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('92','LG UltraFine 27UL850-W', 'Monitor 4K UHD de 27 pulgadas, compatible con HDR10 y USB-C','Cómputo','Monitores','20','22');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('93','Dell P2419H', 'Monitor de 24 pulgadas, diseño sin bordes y calidad de imagen Full HD','Cómputo','Monitores','20','12');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('94','Logitech MX Master 3', 'Ratón ergonómico inalámbrico con precisión avanzada y control por gestos','Cómputo','Accesorios de Cómputo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('95','Razer BlackWidow V3', 'Teclado mecánico para gaming con teclas retroiluminadas personalizables','Cómputo','Accesorios de Cómputo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('96','Microsoft Surface Pen', 'Lápiz digital compatible con dispositivos Surface, sensible a la presión','Cómputo','Accesorios de Cómputo','20','23');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('97','Sabrent HDD Docking Station', 'Estación de acoplamiento para discos duros, compatible con SSD y HDD de 2.5/3.5 pulgadas','Cómputo','Accesorios de discos duros','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('98','ORICO 2.5" Enclosure', 'Carcasa para discos duros de 2.5 pulgadas con conexión USB 3.0','Cómputo','Accesorios de discos duros','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('99','UGREEN USB to SATA', 'Adaptador USB a SATA para conectar discos duros externos','Cómputo','Accesorios de discos duros','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('100','Sandisk Ultra Fit 64GB', 'Unidad flash USB 3.1 de tamaño compacto y alta velocidad de transferencia','Cómputo','Memorias usb','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('101','Kingston DataTraveler 128GB', 'Memoria USB de alta capacidad con diseño duradero y seguro','Cómputo','Memorias usb','20','14');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('102','Corsair Flash Voyager GTX 256GB', 'Unidad USB de alta velocidad, ideal para transferir archivos grandes','Cómputo','Memorias usb','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('103','WD My Passport 1TB', 'Disco duro externo con protección de contraseña y software de respaldo automático','Cómputo','Disco duro externo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('104','Seagate Backup Plus Slim 2TB', 'Disco portátil de alta capacidad, compatible con Mac y Windows','Cómputo','Disco duro externo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('105','Toshiba Canvio Advance 4TB', 'Disco duro externo con diseño elegante y gran capacidad de almacenamiento','Cómputo','Disco duro externo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('106','Samsung EVO Select 128GB', 'Tarjeta microSD de alta velocidad, ideal para smartphones y cámaras','Cómputo','Tarjetas de memoria','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('107','Sandisk Extreme Pro 64GB', 'Tarjeta SD con alta velocidad de lectura/escritura, ideal para video 4K','Cómputo','Tarjetas de memoria','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('108','Lexar Professional 1000x 32GB', 'Tarjeta SD de alto rendimiento, ideal para fotografía profesional','Cómputo','Tarjetas de memoria','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('109','Screen Mom Cleaner Kit', 'Kit de limpieza para pantallas de dispositivos electrónicos, sin químicos agresivos','Cómputo','Limpieza de Cómputo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('110','WHOOSH! Screen Shine', 'Limpiador de pantalla antibacteriano, seguro para todo tipo de dispositivos','Cómputo','Limpieza de Cómputo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('111','Endust for Electronics', 'Aerosol limpiador para pantallas y equipos electrónicos con paño antiestático','Cómputo','Limpieza de Cómputo','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('112','Microsoft Office 365', 'Licencia anual con aplicaciones de productividad para escritorio y en la nube','Cómputo','Software y Licencias','20','23');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('113','Norton 360 Deluxe', 'Suite de seguridad digital completa con protección antivirus y VPN','Cómputo','Software y Licencias','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('114','Adobe Creative Cloud', 'Licencia anual para software de diseño y edición profesional, con acceso a múltiples aplicaciones','Cómputo','Software y Licencias','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('115','Amazon Fire TV Stick 4K', 'Convertidor de streaming en 4K con control por voz Alexa y acceso a múltiples plataformas','Smart Home','Convertidores Smart','20','15');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('116','Google Chromecast with Google TV', 'Convertidor de streaming con soporte para 4K, con interfaz de Google TV','Smart Home','Convertidores Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('117','Roku Express 4K+', 'Dispositivo de streaming 4K con control remoto y compatibilidad con asistentes de voz','Smart Home','Convertidores Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('118','Amazon Echo Dot 4th Gen', 'Parlante inteligente con Alexa y diseño compacto','Smart Home','Parlantes Inteligentes','20','15');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('119','Google Nest Audio', 'Parlante inteligente con Google Assistant y sonido de alta calidad','Smart Home','Parlantes Inteligentes','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('120','Apple HomePod mini', 'Parlante inteligente con Siri y sonido envolvente en un tamaño compacto','Smart Home','Parlantes Inteligentes','20','6');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('121','iRobot Roomba i7+', 'Robot aspirador con auto-vaciado y control por aplicación','Smart Home','Aspiradoras y Trapeadores Robot','20','8');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('122','Xiaomi Mi Robot Vacuum Mop 2', 'Aspiradora y trapeadora robot con mapeo láser y control remoto','Smart Home','Aspiradoras y Trapeadores Robot','20','7');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('123','Ecovacs Deebot OZMO T8 AIVI', 'Robot aspirador con detección de objetos y trapeado avanzado','Smart Home','Aspiradoras y Trapeadores Robot','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('124','Etekcity Smart Scale ESF37', 'Balanza inteligente con Bluetooth y aplicación para monitoreo de peso y salud','Smart Home','Balanzas Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('125','Withings Body+', 'Balanza inteligente Wi-Fi que mide peso, grasa y composición corporal','Smart Home','Balanzas Smart','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('126','RENPHO Body Fat Scale', 'Balanza inteligente con análisis de composición corporal y conectividad Bluetooth','Smart Home','Balanzas Smart','20','25');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('127','Philips Hue White and Color Ambiance', 'Bombilla inteligente con ajuste de color y control por aplicación','Smart Home','Iluminación Smart','20','17');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('128','Yeelight Smart LED Bulb 1S', 'Bombilla inteligente LED con control por app y compatibilidad con asistentes','Smart Home','Iluminación Smart','20','24');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('129','TP-Link Kasa Smart Light Bulb', 'Bombilla inteligente con ajuste de brillo y compatibilidad con Alexa y Google','Smart Home','Iluminación Smart','20','18');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('130','Nanoleaf Shapes Hexagons', 'Paneles de luz LED modulares que permiten crear diseños personalizados','Smart Home','Decoración Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('131','Govee Glide Wall Light', 'Luz de pared LED personalizable con control por app y modos de escena','Smart Home','Decoración Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('132','LIFX Beam Kit', 'Sistema de iluminación modular y ajustable, controlable a través de app y asistentes de voz','Smart Home','Decoración Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('133','TP-Link Kasa Smart Plug', 'Enchufe inteligente con control remoto y compatibilidad con Alexa y Google Assistant','Smart Home','Enchufes inteligentes','20','18');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('134','Amazon Smart Plug', 'Enchufe inteligente diseñado para Alexa y fácil configuración','Smart Home','Enchufes inteligentes','20','15');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('135','Gosund Smart Plug', 'Enchufe inteligente con control remoto y temporizador, compatible con asistentes de voz','Smart Home','Enchufes inteligentes','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('136','Leviton Decora Smart', 'Interruptor inteligente compatible con Alexa y Google Assistant','Smart Home','Interruptores Inteligentes','20','1');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('137','Lutron Caseta Wireless', 'Interruptor inteligente con control remoto y compatibilidad con asistentes de voz','Smart Home','Interruptores Inteligentes','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('138','TP-Link Kasa Smart Switch', 'Interruptor inteligente de fácil instalación y control remoto','Smart Home','Interruptores Inteligentes','20','18');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('139','Ring Video Doorbell 4', 'Timbre inteligente con cámara HD y comunicación bidireccional','Smart Home','Seguridad Inteligente','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('140','Google Nest Cam (Indoor, Wired)', 'Cámara de seguridad para interiores con detección de movimiento y audio','Smart Home','Seguridad Inteligente','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('141','Eufy Security SoloCam E40', 'Cámara de seguridad inalámbrica con visión nocturna y almacenamiento local','Smart Home','Seguridad Inteligente','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('142','Netgear Orbi Mesh WiFi System', 'Sistema de WiFi en malla con cobertura extendida y control por app','Smart Home','Conectividad Inteligente','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('143','TP-Link Deco X60', 'Sistema de WiFi 6 en malla, ideal para cobertura en todo el hogar','Smart Home','Conectividad Inteligente','20','18');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('144','Google Nest WiFi', 'Sistema de WiFi en malla con asistente Google integrado en algunos nodos','Smart Home','Conectividad Inteligente','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('145','Insta360 ONE X2', 'Cámara de acción de 360 grados con estabilización avanzada y resistente al agua','Cámaras de Acción y Drones','Insta360','20','19');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('146','Insta360 GO 2', 'Mini cámara de acción portátil, ideal para capturar momentos en primera persona','Cámaras de Acción y Drones','Insta360','20','19');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('147','Insta360 ONE R', 'Cámara modular con opciones de lente intercambiables, incluyendo 360 grados y gran angular','Cámaras de Acción y Drones','Insta360','20','19');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('148','GoPro HERO11 Black', 'Cámara de acción con grabación en 5.3K y estabilización avanzada','Cámaras de Acción y Drones','Go Pro','20','20');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('149','GoPro HERO10 Black', 'Cámara de acción con procesador rápido y grabación en 5.3K Ultra HD','Cámaras de Acción y Drones','Go Pro','20','20');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('150','GoPro MAX', 'Cámara de 360 grados con modo de cámara HERO y estabilización de nivel profesional','Cámaras de Acción y Drones','Go Pro','20','20');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('151','DJI Osmo Action 3', 'Cámara de acción con doble pantalla y grabación 4K HDR','Cámaras de Acción y Drones','Cámaras de Acción','20','21');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('152','Sony RX0 II', 'Cámara de acción ultra compacta con lente Zeiss y grabación en 4K','Cámaras de Acción y Drones','Cámaras de Acción','20','2');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('153','Akaso Brave 7 LE', 'Cámara de acción resistente al agua con estabilización EIS y pantalla dual','Cámaras de Acción y Drones','Cámaras de Acción','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('154','GoPro Media Mod', 'Accesorio modular para HERO que incluye micrófono direccional','Cámaras de Acción y Drones','Accesorios de Cámaras de Acción','20','20');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('155','DJI Osmo Action Chest Mount', 'Montura para el pecho compatible con DJI Osmo Action','Cámaras de Acción y Drones','Accesorios de Cámaras de Acción','20','21');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('156','Insta360 Selfie Stick Invisible', 'Palo selfie invisible compatible con cámaras Insta360 para tomas en 360 grados','Cámaras de Acción y Drones','Accesorios de Cámaras de Acción','20','19');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('157','DJI Mini 3 Pro', 'Drone compacto con cámara 4K, sensores de detección y modo inteligente','Cámaras de Acción y Drones','Drones','20','21');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('158','DJI Air 2S', 'Drone con cámara de 1 pulgada y grabación en 5.4K, ideal para fotografía aérea','Cámaras de Acción y Drones','Drones','20','21');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('159','Holy Stone HS720E', 'Drone plegable con estabilización EIS y cámara Ultra HD 4K','Cámaras de Acción y Drones','Drones','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('160','DJI Fly More Kit', 'Kit de accesorios para DJI Mini 3 Pro con baterías adicionales y cargador','Cámaras de Acción y Drones','Accesorios de Drones','20','21');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('161','Propel Zipp Nano', 'Mini drone con repuestos y accesorios para entrenamiento','Cámaras de Acción y Drones','Accesorios de Drones','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('162','Sunnylife Landing Pad', 'Alfombra de aterrizaje portátil para drones, compatible con varias marcas','Cámaras de Acción y Drones','Accesorios de Drones','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('163','Sandisk Extreme 128GB', 'Tarjeta microSD de alta velocidad, ideal para cámaras de acción y drones','Cámaras de Acción y Drones','Tarjetas de Memoria','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('164','Samsung EVO Select 256GB', 'Tarjeta microSD con velocidad de lectura rápida, resistente al agua y temperaturas extremas','Cámaras de Acción y Drones','Tarjetas de Memoria','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('165','Lexar Professional 1000x 64GB', 'Tarjeta de memoria microSD con velocidad UHS-II, ideal para grabaciones en 4K','Cámaras de Acción y Drones','Tarjetas de Memoria','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('166','WD My Passport 2TB', 'Disco duro portátil con copia de seguridad automática y encriptación','Cámaras de Acción y Drones','Discos Duros Externos','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('167','Seagate Expansion Portable 1TB', 'Disco duro externo portátil, compatible con múltiples dispositivos','Cámaras de Acción y Drones','Discos Duros Externos','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('168','Lacie Rugged Mini 4TB', 'Disco duro externo portátil con resistencia a caídas y conectividad USB-C','Cámaras de Acción y Drones','Discos Duros Externos','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('169','Samsung QN90A', 'Televisor 4K QLED de 55 pulgadas con tecnología Neo QLED y Dolby Atmos','TV y Video','Televisores','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('170','Sony A80J', 'Televisor OLED 4K de 65 pulgadas con sonido acústico y diseño elegante','TV y Video','Televisores','20','2');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('171','LG OLED C1', 'Televisor OLED 4K de 55 pulgadas, con compatibilidad HDR y gaming optimizado','TV y Video','Televisores','20','22');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('172','Epson Home Cinema 2150', 'Proyector de 1080p con tecnología de proyección 3LCD y conectividad inalámbrica','TV y Video','Proyectores','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('173','BenQ HT3550', 'Proyector 4K HDR con calidad de imagen cinematográfica y brillo potente','TV y Video','Proyectores','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('174','Anker Nebula Capsule', 'Proyector portátil con batería y conectividad inalámbrica, ideal para entretenimiento en movimiento','TV y Video','Proyectores','20','9');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('175','Zinus Tessa TV Stand', 'Rack de TV de madera con diseño moderno, adecuado para pantallas de hasta 55 pulgadas','TV y Video','Racks de TV','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('176','Furinno Turn-S-Tube', 'Rack de TV de estilo contemporáneo, fácil de ensamblar y compacto','TV y Video','Racks de TV','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('177','Walker Edison Furniture Company', 'Rack de TV de 58 pulgadas, de estilo industrial con estantes de vidrio','TV y Video','Racks de TV','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('178','Amazon Fire TV Stick 4K', 'Dispositivo de streaming 4K con control remoto y acceso a múltiples plataformas','TV y Video','Convertidores Smart','20','15');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('179','Google Chromecast with Google TV', 'Convertidor inteligente con control remoto y acceso a aplicaciones de streaming','TV y Video','Convertidores Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('180','Roku Streaming Stick+', 'Convertidor de streaming 4K con acceso a miles de canales de entretenimiento','TV y Video','Convertidores Smart','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('181','Sanus VLT6-B1', 'Soporte de pared para TV de hasta 90 pulgadas, con inclinación y ajuste de altura','TV y Video','Accesorios de TV','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('182','Mount-It! MI-43111', 'Soporte de pared para TV de 32 a 70 pulgadas, con giro y ajuste de inclinación','TV y Video','Accesorios de TV','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('183','AVF BTV100-B', 'Soporte de TV de mesa con diseño moderno, ideal para pantallas planas','TV y Video','Accesorios de TV','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('184','AmazonBasics High-Speed HDMI Cable', 'Cable HDMI de 2 metros, compatible con todas las versiones HDMI','TV y Video','Cables HDMI y de Video','20','15');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('185','Cable Matters Active HDMI to HDMI Cable', 'Cable HDMI activo de 3 metros, ideal para largas distancias','TV y Video','Cables HDMI y de Video','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('186','Ultra Clarity Cables HDMI Cable', 'Cable HDMI de 1.8 metros, con soporte para 4K y 3D','TV y Video','Cables HDMI y de Video','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('187','Logitech Harmony Elite', 'Control remoto universal con pantalla táctil y compatibilidad con dispositivos inteligentes','TV y Video','Controles Remoto y Fundas','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('188','GE Universal Remote Control', 'Control remoto universal compatible con la mayoría de los dispositivos de TV','TV y Video','Controles Remoto y Fundas','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('189','Inateck TV Remote Cover', 'Funda protectora para control remoto, con diseño antideslizante','TV y Video','Controles Remoto y Fundas','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('190','Samsung HW-Q950A', 'Barras de sonido 11.1.4 con Dolby Atmos y conectividad Bluetooth','TV y Video','Barras de Sonido','20','5');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('191','Bose Soundbar 700', 'Barra de sonido premium con cancelación de ruido y control por voz','TV y Video','Barras de Sonido','20','3');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('192','LG SN11RG', 'Barra de sonido 7.1.4 con Dolby Atmos y DTS:X para un sonido envolvente','TV y Video','Barras de Sonido','20','22');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('193','APC BE600M1', 'Estabilizador de voltaje y protector de sobretensiones para equipos electrónicos','TV y Video','Transformadores, Estabilizadores y Extensiones','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('194','Sansui Power Strip', 'Extensión de corriente con 6 tomas y protección contra sobrecargas','TV y Video','Transformadores, Estabilizadores y Extensiones','20','27');
INSERT INTO Producto (id,Nombre,Descripcion,Categoria,SubCategoria,Stock,Proveedor_id) VALUES ('195','Tripp Lite Isobar Surge Protector', 'Protector contra sobrecargas con 8 tomas y filtrado de ruido','TV y Video','Transformadores, Estabilizadores y Extensiones','20','27');




-- Entradas
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('1','2022-03-15','4','1');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('2','2023-05-25','6','1');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('3','2023-06-13','6','1');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('4','2024-02-11','7','1');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('5','2024-06-18','7','1');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('6','2022-04-13','5','2');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('7','2023-02-21','7','2');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('8','2023-04-13','4','2');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('9','2024-02-14','3','2');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('10','2024-03-15','1','2');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('11','2022-07-14','3','3');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('12','2023-05-22','5','3');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('13','2023-08-16','2','3');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('14','2024-03-28','5','3');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('15','2024-06-08','5','3');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('16','2022-06-05','10','4');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('17','2023-05-15','6','4');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('18','2023-07-03','4','4');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('19','2024-04-05','8','4');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('20','2024-07-18','2','4');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('21','2022-01-22','4','5');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('22','2023-11-07','5','5');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('23','2023-12-05','1','5');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('24','2024-03-02','5','5');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('25','2024-06-13','5','5');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('26','2022-07-11','4','6');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('27','2023-10-23','3','6');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('28','2023-12-11','3','6');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('29','2024-05-04','4','6');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('30','2024-06-06','6','6');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('31','2022-04-05','4','7');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('32','2023-04-25','3','7');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('33','2023-09-13','9','7');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('34','2024-02-01','2','7');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('35','2024-06-18','12','7');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('36','2022-03-13','4','8');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('37','2023-03-11','6','8');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('38','2023-10-15','6','8');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('39','2024-04-04','7','8');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('40','2024-06-16','7','8');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('41','2022-07-11','4','9');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('42','2023-05-23','8','9');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('43','2023-06-04','4','9');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('44','2024-05-15','3','9');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('45','2024-06-07','11','9');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('46','2022-04-17','5','10');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('47','2023-10-30','8','10');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('48','2023-12-05','3','10');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('49','2024-01-11','7','10');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('50','2024-06-08','7','10');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('51','2022-03-05','4','185');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('52','2023-05-04','6','185');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('53','2023-06-14','2','185');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('54','2024-03-04','11','185');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('55','2024-06-13','7','185');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('56','2022-06-13','4','186');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('57','2023-11-24','6','186');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('58','2023-12-06','10','186');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('59','2024-01-18','7','186');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('60','2024-06-19','3','186');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('61','2022-02-14','2','187');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('62','2023-04-06','2','187');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('63','2023-12-14','6','187');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('64','2024-03-02','7','187');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('65','2024-06-14','3','187');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('66','2022-05-13','4','188');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('67','2023-04-22','6','188');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('68','2023-06-05','6','188');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('69','2024-02-16','7','188');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('70','2024-06-11','7','188');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('71','2022-12-13','4','189');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('72','2023-02-02','5','189');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('73','2023-03-14','7','189');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('74','2024-02-05','3','189');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('75','2024-06-07','11','189');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('76','2022-01-17','3','190');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('77','2023-03-25','6','190');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('78','2023-05-02','1','190');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('79','2024-03-04','7','190');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('80','2024-06-16','3','190');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('81','2022-02-02','8','191');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('82','2023-03-25','6','191');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('83','2023-04-13','3','191');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('84','2024-05-14','3','191');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('85','2024-06-06','10','191');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('86','2022-03-13','4','192');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('87','2023-05-02','9','192');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('88','2023-06-15','3','192');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('89','2024-02-12','4','192');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('90','2024-06-11','10','192');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('91','2022-12-14','4','193');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('92','2023-03-12','6','193');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('93','2023-04-21','2','193');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('94','2024-01-05','11','193');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('95','2024-05-24','7','193');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('96','2022-03-15','4','194');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('97','2023-04-25','6','194');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('98','2023-05-03','6','194');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('99','2024-05-01','7','194');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('100','2024-05-18','7','194');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('101','2022-06-13','3','195');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('102','2023-11-05','9','195');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('103','2023-12-07','7','195');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('104','2024-02-01','7','195');
INSERT INTO Entradas (id,fecha,cantidad,Producto_id) VALUES ('105','2024-06-18','4','195');



-- Salidas
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('1','2023-03-09','15','1');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('2','2023-04-13','7','1');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('3','2023-05-16','8','1');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('4','2023-03-05','10','2');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('5','2023-05-05','5','2');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('6','2023-12-06','5','2');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('7','2023-04-23','8','3');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('8','2023-05-03','2','3');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('9','2023-06-05','10','3');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('10','2023-03-05','13','4');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('11','2023-07-04','7','4');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('12','2023-10-01','10','4');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('13','2023-02-13','5','5');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('14','2023-11-14','5','5');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('15','2023-12-15','10','5');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('16','2023-12-14','3','6');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('17','2023-12-26','4','6');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('18','2023-12-04','13','6');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('19','2023-11-09','12','7');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('20','2023-11-13','10','7');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('21','2023-11-16','8','7');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('22','2023-10-04','12','8');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('23','2023-10-03','10','8');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('24','2023-10-12','8','8');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('25','2023-06-01','15','9');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('26','2023-07-13','10','9');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('27','2023-09-15','5','9');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('28','2023-03-04','14','10');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('29','2023-06-02','8','10');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('30','2023-07-16','8','10');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('31','2023-01-09','15','185');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('32','2023-02-14','11','185');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('33','2023-05-12','4','185');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('34','2023-03-20','10','186');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('35','2023-04-11','12','186');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('36','2023-05-02','8','186');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('37','2023-03-17','4','187');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('38','2023-03-14','10','187');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('39','2023-03-23','6','187');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('40','2023-05-02','15','188');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('41','2023-05-15','7','188');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('42','2023-05-19','8','188');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('43','2023-06-09','8','189');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('44','2023-06-13','14','189');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('45','2023-06-16','8','189');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('46','2023-03-03','4','190');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('47','2023-02-12','15','190');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('48','2023-04-15','1','190');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('49','2023-03-02','6','191');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('50','2023-04-16','10','191');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('51','2023-06-18','14','191');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('52','2023-03-02','5','192');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('53','2023-04-03','12','192');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('54','2023-05-16','13','192');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('55','2023-08-09','3','193');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('56','2023-08-13','13','193');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('57','2023-08-06','14','193');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('58','2023-09-09','15','194');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('59','2023-09-13','7','194');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('60','2023-09-16','8','194');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('61','2023-03-09','5','195');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('62','2023-03-13','17','195');
INSERT INTO Salidas (id,fecha,cantidad,Producto_id) VALUES ('63','2023-03-16','8','195');



-- Solicitudes se solicita 10 dias antes de la fecha de entrada
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('1','2','1','Pedido','Estimado se le solicita el producto: ','4','2022-03-05');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('2','2','1','Pedido','Estimado se le solicita el producto: ','6','2023-05-15');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('3','2','1','Pedido','Estimado se le solicita el producto: ','6','2023-06-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('4','2','1','Pedido','Estimado se le solicita el producto: ','7','2024-02-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('5','2','1','Pedido','Estimado se le solicita el producto: ','7','2024-06-08');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('6','2','2','Pedido','Estimado se le solicita el producto: ','5','2022-04-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('7','2','2','Pedido','Estimado se le solicita el producto: ','7','2023-02-11');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('8','2','2','Pedido','Estimado se le solicita el producto: ','4','2023-04-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('9','2','2','Pedido','Estimado se le solicita el producto: ','3','2024-02-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('10','2','2','Pedido','Estimado se le solicita el producto: ','1','2024-03-05');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('11','3','3','Pedido','Estimado se le solicita el producto: ','3','2022-07-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('12','3','3','Pedido','Estimado se le solicita el producto: ','5','2023-05-12');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('13','3','3','Pedido','Estimado se le solicita el producto: ','2','2023-08-06');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('14','3','3','Pedido','Estimado se le solicita el producto: ','5','2024-03-18');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('15','3','3','Pedido','Estimado se le solicita el producto: ','5','2024-05-29');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('16','4','4','Pedido','Estimado se le solicita el producto: ','10','2022-05-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('17','4','4','Pedido','Estimado se le solicita el producto: ','6','2023-05-05');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('18','4','4','Pedido','Estimado se le solicita el producto: ','4','2023-06-23');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('19','4','4','Pedido','Estimado se le solicita el producto: ','8','2024-03-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('20','4','4','Pedido','Estimado se le solicita el producto: ','2','2024-07-08');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('21','5','5','Pedido','Estimado se le solicita el producto: ','4','2022-01-12');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('22','5','5','Pedido','Estimado se le solicita el producto: ','5','2023-10-28');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('23','5','5','Pedido','Estimado se le solicita el producto: ','1','2023-11-25');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('24','5','5','Pedido','Estimado se le solicita el producto: ','5','2024-02-21');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('25','5','5','Pedido','Estimado se le solicita el producto: ','5','2024-06-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('26','4','6','Pedido','Estimado se le solicita el producto: ','4','2022-07-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('27','4','6','Pedido','Estimado se le solicita el producto: ','3','2023-10-13');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('28','4','6','Pedido','Estimado se le solicita el producto: ','3','2023-12-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('29','4','6','Pedido','Estimado se le solicita el producto: ','4','2024-04-24');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('30','4','6','Pedido','Estimado se le solicita el producto: ','6','2024-05-27');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('31','5','7','Pedido','Estimado se le solicita el producto: ','4','2022-03-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('32','5','7','Pedido','Estimado se le solicita el producto: ','3','2023-04-15');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('33','5','7','Pedido','Estimado se le solicita el producto: ','9','2023-09-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('34','5','7','Pedido','Estimado se le solicita el producto: ','2','2024-01-22');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('35','5','7','Pedido','Estimado se le solicita el producto: ','12','2024-06-08');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('36','6','8','Pedido','Estimado se le solicita el producto: ','4','2022-03-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('37','6','8','Pedido','Estimado se le solicita el producto: ','6','2023-03-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('38','6','8','Pedido','Estimado se le solicita el producto: ','6','2023-10-05');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('39','6','8','Pedido','Estimado se le solicita el producto: ','7','2024-03-25');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('40','6','8','Pedido','Estimado se le solicita el producto: ','7','2024-06-06');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('41','6','9','Pedido','Estimado se le solicita el producto: ','4','2022-07-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('42','6','9','Pedido','Estimado se le solicita el producto: ','8','2023-05-13');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('43','6','9','Pedido','Estimado se le solicita el producto: ','4','2023-05-25');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('44','6','9','Pedido','Estimado se le solicita el producto: ','3','2024-05-05');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('45','6','9','Pedido','Estimado se le solicita el producto: ','11','2024-05-28');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('46','7','10','Pedido','Estimado se le solicita el producto: ','5','2022-04-07');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('47','7','10','Pedido','Estimado se le solicita el producto: ','8','2023-10-20');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('48','7','10','Pedido','Estimado se le solicita el producto: ','3','2023-11-25');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('49','7','10','Pedido','Estimado se le solicita el producto: ','7','2024-01-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('50','7','10','Pedido','Estimado se le solicita el producto: ','7','2024-05-29');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('51','7','185','Pedido','Estimado se le solicita el producto: ','4','2022-02-24');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('52','7','185','Pedido','Estimado se le solicita el producto: ','6','2023-04-24');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('53','7','185','Pedido','Estimado se le solicita el producto: ','2','2023-06-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('54','7','185','Pedido','Estimado se le solicita el producto: ','11','2024-02-23');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('55','7','185','Pedido','Estimado se le solicita el producto: ','7','2024-06-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('56','7','186','Pedido','Estimado se le solicita el producto: ','4','2022-06-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('57','7','186','Pedido','Estimado se le solicita el producto: ','6','2023-11-14');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('58','7','186','Pedido','Estimado se le solicita el producto: ','10','2023-11-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('59','7','186','Pedido','Estimado se le solicita el producto: ','7','2024-01-08');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('60','7','186','Pedido','Estimado se le solicita el producto: ','3','2024-06-09');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('61','8','187','Pedido','Estimado se le solicita el producto: ','2','2022-02-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('62','8','187','Pedido','Estimado se le solicita el producto: ','2','2023-03-27');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('63','8','187','Pedido','Estimado se le solicita el producto: ','6','2023-12-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('64','8','187','Pedido','Estimado se le solicita el producto: ','7','2024-02-21');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('65','8','187','Pedido','Estimado se le solicita el producto: ','3','2024-06-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('66','1','188','Pedido','Estimado se le solicita el producto: ','4','2022-05-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('67','1','188','Pedido','Estimado se le solicita el producto: ','6','2023-04-12');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('68','1','188','Pedido','Estimado se le solicita el producto: ','6','2023-05-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('69','1','188','Pedido','Estimado se le solicita el producto: ','7','2024-02-06');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('70','1','188','Pedido','Estimado se le solicita el producto: ','7','2024-06-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('71','2','189','Pedido','Estimado se le solicita el producto: ','4','2022-12-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('72','2','189','Pedido','Estimado se le solicita el producto: ','5','2023-01-23');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('73','2','189','Pedido','Estimado se le solicita el producto: ','7','2023-03-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('74','2','189','Pedido','Estimado se le solicita el producto: ','3','2024-01-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('75','2','189','Pedido','Estimado se le solicita el producto: ','11','2024-05-28');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('76','3','190','Pedido','Estimado se le solicita el producto: ','3','2022-01-07');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('77','3','190','Pedido','Estimado se le solicita el producto: ','6','2023-03-15');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('78','3','190','Pedido','Estimado se le solicita el producto: ','1','2023-04-22');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('79','3','190','Pedido','Estimado se le solicita el producto: ','7','2024-02-23');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('80','3','190','Pedido','Estimado se le solicita el producto: ','3','2024-06-06');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('81','4','191','Pedido','Estimado se le solicita el producto: ','8','2022-01-23');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('82','4','191','Pedido','Estimado se le solicita el producto: ','6','2023-03-15');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('83','4','191','Pedido','Estimado se le solicita el producto: ','3','2023-04-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('84','4','191','Pedido','Estimado se le solicita el producto: ','3','2024-05-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('85','4','191','Pedido','Estimado se le solicita el producto: ','10','2024-05-27');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('86','4','192','Pedido','Estimado se le solicita el producto: ','4','2022-03-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('87','4','192','Pedido','Estimado se le solicita el producto: ','9','2023-04-22');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('88','4','192','Pedido','Estimado se le solicita el producto: ','3','2023-06-05');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('89','4','192','Pedido','Estimado se le solicita el producto: ','4','2024-02-02');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('90','4','192','Pedido','Estimado se le solicita el producto: ','10','2024-06-01');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('91','6','193','Pedido','Estimado se le solicita el producto: ','4','2022-12-04');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('92','6','193','Pedido','Estimado se le solicita el producto: ','6','2023-03-02');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('93','6','193','Pedido','Estimado se le solicita el producto: ','2','2023-04-11');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('94','6','193','Pedido','Estimado se le solicita el producto: ','11','2023-12-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('95','6','193','Pedido','Estimado se le solicita el producto: ','7','2024-05-14');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('96','5','194','Pedido','Estimado se le solicita el producto: ','4','2022-03-05');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('97','5','194','Pedido','Estimado se le solicita el producto: ','6','2023-04-15');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('98','5','194','Pedido','Estimado se le solicita el producto: ','6','2023-04-23');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('99','5','194','Pedido','Estimado se le solicita el producto: ','7','2024-04-21');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('100','5','194','Pedido','Estimado se le solicita el producto: ','7','2024-05-08');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('101','7','195','Pedido','Estimado se le solicita el producto: ','3','2022-06-03');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('102','7','195','Pedido','Estimado se le solicita el producto: ','9','2023-10-26');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('103','7','195','Pedido','Estimado se le solicita el producto: ','7','2023-11-27');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('104','7','195','Pedido','Estimado se le solicita el producto: ','7','2024-01-22');
INSERT INTO Solicitud (id,Usuario_id,Producto_id,Tipo,Descripcion,cantidad,fecha) VALUES ('105','7','195','Pedido','Estimado se le solicita el producto: ','4','2024-06-08');
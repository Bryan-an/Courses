--Un comercio que vende art�culos de computaci�n registra los datos de sus art�culos en una tabla con 
--ese nombre.
--1- Elimine la tabla si existe:
IF OBJECT_ID('articulos') IS NOT NULL
	DROP TABLE articulos;

--2- Cree la tabla:
CREATE TABLE articulos(
	codigo INT IDENTITY PRIMARY KEY,
	nombre VARCHAR(20),
	descripcion VARCHAR(30),
	precio SMALLMONEY,
	cantidad TINYINT DEFAULT 0,
);

GO 

--3- Ingrese algunos registros:
INSERT INTO articulos (nombre, descripcion, precio, cantidad)
	VALUES ('impresora','Epson Stylus C45',400.80,20);
INSERT INTO articulos (nombre, descripcion, precio)
	VALUES ('impresora','Epson Stylus C85',500);
INSERT INTO articulos (nombre, descripcion, precio)
	VALUES ('monitor', 'Samsung 14', 800);
INSERT INTO articulos (nombre, descripcion, precio, cantidad)
	VALUES ('teclado','ingles Biswal',100,50);

--4- El comercio quiere aumentar los precios de todos sus art�culos en un 15%. Actualice todos los 
--precios empleando operadores aritm�ticos.
UPDATE articulos SET precio = precio * 1.15;

--5- Vea el resultado:
SELECT * FROM articulos;

--6- Muestre todos los art�culos, concatenando el nombre y la descripci�n de cada uno de ellos 
--separados por coma.
SELECT nombre + ', ' + descripcion FROM articulos;

--7- Reste a la cantidad de todos los teclados, el valor 5, empleando el operador aritm�tico menos ("-")
UPDATE articulos SET cantidad = cantidad - 5 WHERE nombre = 'teclado';
SELECT * FROM articulos;
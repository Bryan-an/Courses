-- Elimine "articulos", si existe:
IF OBJECT_ID('articulos') IS NOT NULL
	DROP TABLE articulos;

-- Cree la tabla, con la siguiente estructura:
CREATE TABLE articulos(
	codigo INT IDENTITY,
	nombre VARCHAR(20),
	descripcion VARCHAR(30),
	precio FLOAT
);

-- Ingrese algunos registros:
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('impresora','Epson Stylus C45',400.80);
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('impresora','Epson Stylus C85',500);

SELECT * FROM articulos;

-- Elimine todos los registros con "truncate table".
TRUNCATE TABLE articulos;

-- Ingrese algunos registros y muéstrelos para ver que la secuencia de códigos se reinicia:
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('monitor','Samsung 14',800);
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('teclado','ingles Biswal',100);
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('teclado','español Biswal',90);

SELECT * FROM articulos;

-- Elimine todos los registros con "delete"
DELETE FROM articulos;

-- Ingrese algunos registros y muéstrelos para ver que la secuencia de códigos continua:
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('monitor','Samsung 14',800);
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('teclado','ingles Biswal',100);
INSERT INTO articulos(nombre, descripcion, precio)
	VALUES('teclado','español Biswal',90);

SELECT * FROM articulos;
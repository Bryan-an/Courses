IF OBJECT_ID('articulos') IS NOT NULL
	DROP TABLE articulos;

CREATE TABLE articulos(
	codigo INT,
	nombre VARCHAR(20),
	descripcion VARCHAR(30),
	precio FLOAT,
	cantidad INT
);

GO 

EXEC sp_columns articulos;

INSERT INTO articulos(codigo, nombre, descripcion, precio, cantidad)
	VALUES(1, 'impresora', 'Epson Stylus C45', 400.80, 20);
INSERT INTO articulos(codigo, nombre, descripcion, precio, cantidad)
	VALUES(2, 'impresora', 'Epson Stylus C85', 500, 30);
INSERT INTO articulos(codigo, nombre, descripcion, precio, cantidad)
	VALUES(3, 'monitor', 'Samsung 14', 800, 10);
INSERT INTO articulos(codigo, nombre, descripcion, precio, cantidad)
	VALUES(4, 'teclado', 'ingles Biswal', 100, 50);
INSERT INTO articulos(codigo, nombre, descripcion, precio, cantidad)
	VALUES(5, 'teclado', 'español Biswal', 90, 50);

DELETE FROM articulos WHERE precio >= 500;
SELECT * FROM articulos;

DELETE FROM articulos WHERE nombre = 'impresora';
SELECT * FROM articulos;

DELETE FROM articulos WHERE codigo <> 4;
SELECT * FROM articulos;
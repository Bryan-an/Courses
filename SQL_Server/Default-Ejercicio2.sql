--Segundo problema:
--Una pequeña biblioteca de barrio registra los préstamos de sus libros en una tabla llamada 
--"prestamos". En ella almacena la siguiente información: título del libro, documento de identidad del 
--socio a quien se le presta el libro, fecha de préstamo, fecha en que tiene que devolver el libro y 
--si el libro ha sido o no devuelto.
--1- Elimine la tabla "prestamos" si existe:
IF OBJECT_ID('prestamos') IS NOT NULL
	DROP TABLE prestamos;

-- 2- Cree la tabla:
CREATE TABLE prestamos(
	titulo VARCHAR(40) NOT NULL,
	documento CHAR(8) NOT NULL,
	fecha_prestamo DATETIME NOT NULL,
	fecha_devolucion DATETIME,
	devuelto CHAR(1) DEFAULT 'n'
);

SET DATEFORMAT ymd;

-- 3- Ingrese algunos registros omitiendo el valor para los campos que lo admiten:
INSERT INTO prestamos(titulo, documento, fecha_prestamo, fecha_devolucion)
	VALUES ('Manual de 1 grado', '23456789', '2006-12-15', '2005-12-18');
INSERT INTO prestamos (titulo, documento, fecha_prestamo)
	VALUES ('Alicia en el pais de las maravillas', '23456789', '2006-12-16');
INSERT INTO prestamos (titulo, documento, fecha_prestamo, fecha_devolucion)
	VALUES ('El aleph', '22543987', '2006-12-16', '2006-08-19');
INSERT INTO prestamos (titulo, documento, fecha_prestamo, devuelto)
	VALUES ('Manual de geografia 5 grado', '25555666', '2006-12-18', 's');

-- 4- Seleccione todos los registros:
SELECT * FROM prestamos;

-- 5- Ingrese un registro colocando "default" en los campos que lo admiten y vea cómo se almacenó.
INSERT INTO prestamos
	VALUES ('Cosmos', '12345678', '2021-3-2', DEFAULT, DEFAULT);

SELECT * FROM prestamos;

-- 6- Intente ingresar un registro con "default values" y analice el mensaje de error (no se puede)
--INSERT INTO prestamos DEFAULT VALUES;
--Una empresa almacena los datos de sus empleados en una tabla "empleados" que guarda los siguientes 
--datos: nombre, documento, sexo, domicilio, sueldobasico.
--1- Elimine la tabla, si existe:

IF OBJECT_ID('empleados') IS NOT NULL
	DROP TABLE empleados;

-- 2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
CREATE TABLE empleados(
	nombre VARCHAR(30),
	documento CHAR(8),
	sexo CHAR(1),
	domicilio VARCHAR(30),
	sueldo_basico DECIMAL(7, 2),
	cantidad_hijos TINYINT
);

GO

-- 3- Ingrese algunos registros:
INSERT INTO empleados
	VALUES ('Juan Perez','22333444','m','Sarmiento 123',500,2);
INSERT INTO empleados
	VALUES ('Ana Acosta','24555666','f','Colon 134',850,0);
INSERT INTO empleados
	VALUES ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

-- 4- Ingrese un valor de "sueldobasico" con más decimales que los definidos (redondea los decimales al 
-- valor más cercano 800.89):
INSERT INTO empleados 
	VALUES ('Susana Molina','29000555','f','Salta 876',800.888,3);

-- 5- Intente ingresar un sueldo que supere los 7 dígitos (no lo permite)
--INSERT INTO empleados
--	VALUES ('Bryan Andagoya', '12345678', 'm', 'Calle 25', 150480.99, 0);

-- 6- Muestre todos los empleados cuyo sueldo no supere los 900 pesos (3 registros):
SELECT * FROM empleados WHERE sueldo_basico <= 900;

-- 7- Seleccione los nombres de los empleados que tengan hijos (3 registros):
SELECT * FROM empleados WHERE cantidad_hijos > 0;
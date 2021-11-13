-- Una empresa almacena los datos de sus clientes en una tabla llamada "clientes".
-- 1- Elimine la tabla "clientes" si existe:
IF OBJECT_ID('clientes') IS NOT NULL
	DROP TABLE clientes;

-- 2- Créela eligiendo el tipo de dato más adecuado para cada campo:
CREATE TABLE clientes(
	documento CHAR(8),
	apellido VARCHAR(20),
	nombre VARCHAR(20),
	domicilio VARCHAR(30),
	telefono VARCHAR(11)
);

-- 3- Analice la definición de los campos. Se utiliza char(8) para el documento porque siempre constará 
-- de 8 caracteres. Para el número telefónico se usar "varchar" y no un tipo numérico porque si bien es 
-- un número, con él no se realizarán operaciones matemáticas.

-- 4- Ingrese algunos registros:
INSERT INTO clientes 
	VALUES ('2233344','Perez','Juan','Sarmiento 980','4342345');
INSERT INTO clientes 
	VALUES ('2333344','Perez','Ana','Colon 234', '43434');
INSERT INTO clientes 
	VALUES ('2433344','Garcia','Luis','Avellaneda 1454','4558877');
INSERT INTO clientes 
	VALUES ('2533344','Juarez','Ana','Urquiza 444','4789900');

-- 5- Seleccione todos los clientes de apellido "Perez" (2 registros):
SELECT * FROM clientes WHERE apellido = 'Perez';
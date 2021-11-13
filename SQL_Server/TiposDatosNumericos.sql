IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo SMALLINT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(30),
	editorial VARCHAR(15),
	precio SMALLMONEY,
	catidad TINYINT
);

GO

-- Intentemos ingresar un valor fuera del rango definido, una cantidad 
-- que supera el rango del tipo "tinyint", el valor 260 (genera error):
--INSERT INTO libros
--	VALUES ('El aleph','Borges','Emece',25.60,260);

-- Intentamos ingresar un precio que supera el rango del tipo "smallmoney",
-- el valor 250000 (genera error):
--INSERT INTO libros 
--	VALUES ('El aleph','Borges','Emece',250000,100);

-- Intentamos ingresar una cadena que SQL Server no pueda convertir a valor 
-- numérico en el campo "precio" (genera error):
--INSERT INTO libros
--	VALUES ('Uno','Richard Bach','Planeta','a50.30',100);

-- Ingresamos una cadena en el campo "cantidad" (lo convierte a valor numérico):
INSERT INTO libros
	VALUES ('Uno','Richard Bach','Planeta',50.30,'100');

SELECT * FROM libros;
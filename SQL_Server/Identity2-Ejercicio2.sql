-- Elimine la tabla si existe:
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

-- Créela definiendo un campo "codigo" autoincrementable que 
-- comience en 50 y se incremente en 3:
CREATE TABLE peliculas(
	codigo INT IDENTITY(50, 3),
	titulo VARCHAR(40),
	actor VARCHAR(20),
	duracion INT
);

-- Ingrese los siguientes registros:
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('Mision imposible','Tom Cruise',120);
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('Harry Potter y la piedra filosofal','Daniel R.',180);
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('Harry Potter y la camara secreta','Daniel R.',190);

-- Seleccione todos los registros y verifique la carga automática de los códigos:
SELECT * FROM peliculas;

-- Setee la opción "identity_insert" en "on"
SET IDENTITY_INSERT peliculas ON;

-- Ingrese un registro con valor de código menor a 50.
INSERT INTO peliculas(codigo, titulo)
	VALUES(10, 'Up');

-- Ingrese un registro con valor de código mayor al último generado.
INSERT INTO peliculas(codigo, titulo)
	VALUES(20, 'Spiderman');

-- Averigue el valor de inicio del campo "identity" de la tabla "peliculas".
SELECT IDENT_SEED('peliculas');

-- Averigue el valor de incremento del campo "identity" de "peliculas".
SELECT IDENT_INCR('peliculas');

-- Intente ingresar un registro sin valor para el campo código.
--INSERT INTO peliculas(titulo)
--	VALUES('Iron-man');

-- Desactive la opción se inserción para el campo de identidad.
SET IDENTITY_INSERT peliculas OFF;

-- Ingrese un nuevo registro y muestre todos los registros para ver cómo SQL 
-- Server siguió la secuencia tomando el último valor del campo como referencia.
INSERT INTO peliculas(titulo)
	VALUES('Iron-man');
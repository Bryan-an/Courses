-- Elimine la tabla si existe:
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

-- Cr�ela definiendo un campo "codigo" autoincrementable que 
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

-- Seleccione todos los registros y verifique la carga autom�tica de los c�digos:
SELECT * FROM peliculas;

-- Setee la opci�n "identity_insert" en "on"
SET IDENTITY_INSERT peliculas ON;

-- Ingrese un registro con valor de c�digo menor a 50.
INSERT INTO peliculas(codigo, titulo)
	VALUES(10, 'Up');

-- Ingrese un registro con valor de c�digo mayor al �ltimo generado.
INSERT INTO peliculas(codigo, titulo)
	VALUES(20, 'Spiderman');

-- Averigue el valor de inicio del campo "identity" de la tabla "peliculas".
SELECT IDENT_SEED('peliculas');

-- Averigue el valor de incremento del campo "identity" de "peliculas".
SELECT IDENT_INCR('peliculas');

-- Intente ingresar un registro sin valor para el campo c�digo.
--INSERT INTO peliculas(titulo)
--	VALUES('Iron-man');

-- Desactive la opci�n se inserci�n para el campo de identidad.
SET IDENTITY_INSERT peliculas OFF;

-- Ingrese un nuevo registro y muestre todos los registros para ver c�mo SQL 
-- Server sigui� la secuencia tomando el �ltimo valor del campo como referencia.
INSERT INTO peliculas(titulo)
	VALUES('Iron-man');
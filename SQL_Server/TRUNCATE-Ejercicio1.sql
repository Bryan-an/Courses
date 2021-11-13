-- Elimine la tabla "alumnos" si existe:
IF OBJECT_ID('alumnos') IS NOT NULL
	DROP TABLE alumnos;

-- Cree la tabla con la siguiente estructura:
CREATE TABLE alumnos(
	legajo INT IDENTITY,
	documento VARCHAR(8),
	nombre VARCHAR(30),
	domicilio VARCHAR(30)
);

-- Ingrese los siguientes registros y muéstrelos para ver la secuencia de códigos:
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('22345345','Perez Mariana','Colon 234');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('23545345','Morales Marcos','Avellaneda 348');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('24356345','Gonzalez Analia','Caseros 444');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('25666777','Torres Ramiro','Dinamarca 209');

SELECT * FROM alumnos;

-- Elimine todos los registros con "delete".
DELETE FROM alumnos;

-- Ingrese los siguientes registros y selecciónelos para ver cómo SQL Server generó los códigos:
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('22345345','Perez Mariana','Colon 234');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('23545345','Morales Marcos','Avellaneda 348');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('24356345','Gonzalez Analia','Caseros 444');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('25666777','Torres Ramiro','Dinamarca 209');

SELECT * FROM alumnos;

-- Elimine todos los registros con "truncate table".
TRUNCATE TABLE alumnos;

-- Ingrese los siguientes registros y muestre todos los registros para 
-- ver que SQL Server reinició la secuencia del campo "identity":
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('22345345','Perez Mariana','Colon 234');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('23545345','Morales Marcos','Avellaneda 348');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('24356345','Gonzalez Analia','Caseros 444');
INSERT INTO alumnos(documento, nombre, domicilio)
	VALUES('25666777','Torres Ramiro','Dinamarca 209');

SELECT * FROM alumnos;
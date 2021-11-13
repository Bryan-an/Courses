IF OBJECT_ID('alumnos') IS NOT NULL
	DROP TABLE alumnos;

--CREATE TABLE alumnos(
--	legajo VARCHAR(4) NOT NULL,
--	documento VARCHAR(8),
--	nombre VARCHAR(30),
--	domicilio VARCHAR(30),
--	PRIMARY KEY(documento, legajo)
--);

CREATE TABLE alumnos(
	legajo VARCHAR(4) NOT NULL,
	documento VARCHAR(8),
	nombre VARCHAR(30),
	domicilio VARCHAR(30),
	PRIMARY KEY(documento)
);

EXEC sp_columns alumnos;

GO 

INSERT INTO alumnos(legajo, documento, nombre, domicilio)
	VALUES('A233', '22345345', 'Perez Mariana', 'Colon 234');
INSERT INTO alumnos(legajo, documento, nombre, domicilio)
	VALUES('A567', '23545345', 'Morales Marcos', 'Avellaneda 348');

SELECT * FROM alumnos ORDER BY nombre;
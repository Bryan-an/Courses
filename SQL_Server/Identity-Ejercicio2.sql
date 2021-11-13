-- Un videoclub almacena informaci�n sobre sus pel�culas en una tabla llamada "peliculas".
-- Elimine la tabla si existe:
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

-- Cr�ela definiendo un campo "codigo" autoincrementable y como clave primaria:
CREATE TABLE peliculas(
	codigo INT IDENTITY PRIMARY KEY,
	titulo VARCHAR(40),
	actor VARCHAR(20),
	duracion INT
);

-- Ejecute el procedimiento almacenado para visualizar la estructura de la tabla:
EXEC sp_columns peliculas;

GO

-- Ingrese los siguientes registros:
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('Mision imposible', 'Tom Cruise', 120);
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('Harry Potter y la piedra filosofal', 'Daniel R.', 180);
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('Harry Potter y la camara secreta', 'Daniel R.', 190);
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('Mision imposible 2', 'Tom Cruise', 120);
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('La vida es bella', 'zzz', 220);

-- Seleccione todos los registros y verifique la carga autom�tica de los c�digos:
SELECT * FROM peliculas;

GO

-- Intente actualizar el codigo de una pel�cula (aparece un mensaje de error)
--UPDATE peliculas SET codigo = 21 WHERE duracion = 220;

-- Elimine la pel�cula "La vida es bella".
DELETE FROM peliculas WHERE titulo = 'La vida es bella';

-- Ingrese un nuevo registro.
INSERT INTO peliculas(titulo, actor, duracion)
	VALUES('En busca de la felicidad', 'Will Smith', 127);

-- Visualice los registros para ver el valor almacenado en codigo (valor 6):
SELECT * FROM peliculas;
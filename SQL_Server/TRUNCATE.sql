IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,
	titulo VARCHAR(30),
	autor VARCHAR(20),
	editorial VARCHAR(15),
	precio FLOAT
);

GO

INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('El aleph','Borges','Emece',25.60);
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('Uno','Richard Bach','Planeta',18);

SELECT * FROM libros;

-- Truncamos la tabla:
TRUNCATE TABLE libros;

-- Ingresamos nuevamente algunos registros:
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('El aleph','Borges','Emece',25.60);
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('Uno','Richard Bach','Planeta',18);

-- Si seleccionamos todos los registros vemos que la secuencia se reinició en 1:
SELECT * FROM libros;

-- Eliminemos todos los registros con "delete":
DELETE FROM libros;

-- Ingresamos nuevamente algunos registros:
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('El aleph','Borges','Emece',25.60);
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES('Uno','Richard Bach','Planeta',18);

-- Seleccionamos todos los registros y vemos que la secuencia continuó:
SELECT * FROM libros;
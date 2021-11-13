IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,	
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(30),
	editorial VARCHAR(15)
);

GO

-- Si ingresamos valores para todos los campos, podemos omitir la lista de campos:
INSERT INTO libros
	VALUES('Uno', 'Richard Bach', 'Planeta');

-- Podemos ingresar valores para algunos de los campos:
INSERT INTO libros (titulo, autor)
	VALUES ('El aleph', 'Borges');

-- No podemos omitir el valor para un campo declarado "not null",
-- como el campo "titulo" (genera error):
--INSERT INTO libros (autor, editorial)
--	VALUES ('Lewis Carrol', 'Planeta');

SELECT * FROM libros;
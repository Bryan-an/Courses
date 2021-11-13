IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20),
	editorial VARCHAR(15),
	PRIMARY KEY(codigo)
);

GO

INSERT INTO libros(codigo, titulo, autor, editorial)
	VALUES(1, 'El aleph', 'Borges', 'Emece');
INSERT INTO libros(codigo, titulo, autor, editorial)
	VALUES(2, 'Martin Fierro', 'Jose Hernandez', 'Planeta');
INSERT INTO libros(codigo, titulo, autor, editorial)
	VALUES(3, 'Aprenda PHP', 'Mario Molina', 'Nuevo Siglo');

--INSERT INTO libros(codigo, titulo, autor, editorial)
--	VALUES(1, 'El poder del ahora', 'Eckhart Tolle', 'Sirio');
--INSERT INTO libros(codigo, titulo, autor, editorial)
--	VALUES(NULL, 'Hola', 'Esto', 'es');
--UPDATE libros SET codigo = 1 WHERE titulo = 'Martin Fierro';
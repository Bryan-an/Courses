IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	titulo VARCHAR(30), 
	autor VARCHAR(20),
	editorial VARCHAR(15),
	precio FLOAT
);

GO

INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('El aleph', 'Borges', 'Emece', 25.00);
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Martin Fierro', 'Jose Hernandez', 'Planeta', 35.50);
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Aprenda PHP', 'Mario Molina', 'Emece', 45.50);
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Cervantes y el quijote', 'Borges', 'Emece', 25);
INSERT INTO libros(titulo, autor, editorial, precio)
	VALUES('Matematica estas ahi', 'Paenza', 'Siglo XXI', 15);

GO	

SELECT * FROM libros;

GO

UPDATE libros SET autor = 'Adrian Paenza'
	WHERE autor = 'Paenza';
SELECT * FROM libros;

GO

UPDATE libros SET autor = 'Adrian Paenza'
	WHERE autor = 'Paenza';
SELECT * FROM libros;

GO

UPDATE libros SET precio = 27
	WHERE autor = 'Mario Molina';
SELECT * FROM libros;

GO

UPDATE libros SET editorial = 'Emece S.A.'
	WHERE editorial = 'Emece';
SELECT * FROM libros;
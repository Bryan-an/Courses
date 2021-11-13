IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido',
	editorial VARCHAR(20),
	precio DECIMAL(6,2)
);

GO

INSERT INTO libros
	VALUES ('El aleph','Borges','Emece',15.90);
INSERT INTO libros
	VALUES ('Cervantes y el quijote','Borges','Paidos',NULL);
INSERT INTO libros
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll',NULL,19.90);
INSERT INTO libros
	VALUES ('Martin Fierro','Jose Hernandez','Emece',25.90);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Antología poética','Borges',25.50);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Java en 10 minutos','Mario Molina',45.80);
INSERT INTO libros (titulo, autor)
	VALUES ('Martin Fierro','Jose Hernandez');
INSERT INTO libros (titulo, autor)
	VALUES ('Aprenda PHP','Mario Molina');

SELECT * FROM libros
	WHERE editorial IS NULL;

SELECT * FROM libros
	WHERE editorial IS NOT NULL;
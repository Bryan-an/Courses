IF OBJECT_ID ('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20),
	editorial VARCHAR(20),
	precio DECIMAL(6,2)
);

GO

INSERT INTO libros
	VALUES ('El aleph','Borges','Emece',15.90);
INSERT INTO libros
	VALUES ('Cervantes y el quijote','Borges','Paidos',null);
INSERT INTO libros 
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
INSERT INTO libros
	VALUES ('Matematica estas ahi','Paenza','Siglo XXI',15);
INSERT INTO libros (titulo, precio)
	VALUES ('Antología poética',32);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Martin Fierro','Jose Hernandez',40);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Aprenda PHP','Mario Molina',56.50);

SELECT * FROM libros
	WHERE autor IN ('Borges', 'Paenza');

SELECT * FROM libros
	WHERE autor NOT IN ('Borges', 'Paenza');
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
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll', NULL, 19.90);
INSERT INTO libros
	VALUES ('Martin Fierro','Jose Hernandez','Emece',25.90);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Antología poética','Borges',32);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Java en 10 minutos','Mario Molina',45.80);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Martin Fierro','Jose Hernandez',40);
INSERT INTO libros (titulo, autor, precio)
	VALUES ('Aprenda PHP','Mario Molina',56.50);

-- Recuperamos los registros cuyo precio esté entre 20 y 40 empleando "between":
SELECT * FROM libros
	WHERE precio BETWEEN 20 AND 40;

-- Para seleccionar los libros cuyo precio NO esté entre un intervalo de valores
-- antecedemos "not" al "between":
SELECT * FROM libros
	WHERE precio NOT BETWEEN 20 AND 35;
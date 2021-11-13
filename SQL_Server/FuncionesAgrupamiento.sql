IF OBJECT_ID ('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros (
	codigo INT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(30) DEFAULT 'Desconocido',
	editorial VARCHAR(15),
	precio DECIMAL(5,2),
	cantidad TINYINT,
	PRIMARY KEY (codigo)
);

GO

INSERT INTO libros VALUES 
	('El aleph', 'Borges', 'Planeta', 15, NULL),
	('Martin Fierro','Jose Hernandez','Emece',22.20,200),
	('Antologia poetica','J.L. Borges','Planeta',NULL, 150),
	('Aprenda PHP','Mario Molina','Emece',18.20,NULL),
	('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',NULL,100),
	('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120),
	('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90),
	('Harry Potter y la camara secreta','J.K. Rowling','Emece',46.00,100);
INSERT INTO libros (titulo, autor, cantidad) VALUES
	('Alicia en el pais de las maravillas','Lewis Carroll',220),
	('PHP de la A a la Z', DEFAULT, 0);

-- Cantidad total de libros, sumamos las cantidades de cada uno:
--SELECT SUM(cantidad) FROM libros;

-- Para conocer cuántos libros tenemos de la editorial "Emece":
--SELECT SUM(cantidad) FROM libros WHERE editorial = 'Emece';

-- Queremos saber cuál es el libro más costoso:
--SELECT MAX(precio) FROM libros;

-- Para conocer el precio mínimo de los libros de "Rowling":
--SELECT MIN(precio) FROM libros WHERE autor LIKE '%Rowling%';

-- Queremos saber el promedio del precio de los libros referentes a "PHP":
SELECT AVG(precio) FROM libros WHERE titulo LIKE '%PHP%';
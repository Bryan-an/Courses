IF OBJECT_ID ('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros (
	codigo INT IDENTITY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido',
	editorial VARCHAR(20),
	precio DECIMAL(6,2),
	PRIMARY KEY(codigo)
);

GO

INSERT INTO libros VALUES
	('El aleph','Borges','Emece',15.90),
	('Antología poética','J. L. Borges','Planeta',null),
	('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90),
	('Matematica estas ahi','Paenza','Siglo XXI',15),
	('Martin Fierro','Jose Hernandez',default,40),
	('Aprenda PHP','Mario Molina','Nuevo siglo',null),
	('Uno','Richard Bach','Planeta',20);

GO

-- Averiguemos la cantidad de libros usando la función "count()":
--SELECT COUNT(*) FROM libros;

-- Contamos los libros de editorial "Planeta":
--SELECT COUNT(*) FROM libros WHERE editorial = 'Planeta';

-- Contamos los registros que tienen precio (sin tener en cuenta 
-- los que tienen valor nulo),
SELECT COUNT(precio) AS Amount FROM libros;
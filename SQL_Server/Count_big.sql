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
	('Antología poética','Borges','Planeta',null),
	('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90),
	('Matematica estas ahi','Paenza','Siglo XXI',15),
	('Martin Fierro','Jose Hernandez',default,40),
	('Aprenda PHP','Mario Molina','Nuevo siglo',null),
	('Uno','Richard Bach','Planeta',20);

GO

SELECT COUNT_BIG(*) FROM libros;

SELECT COUNT_BIG(*) FROM libros WHERE editorial = 'Planeta';

SELECT COUNT_BIG(precio) FROM libros;

-- Contamos las editoriales (sin repetir):
SELECT COUNT_BIG(DISTINCT editorial) FROM libros;
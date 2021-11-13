IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY PRIMARY KEY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido',
	editorial VARCHAR(20),
	precio DECIMAL(6,2)
);

GO

INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES ('El aleph', 'Borges', 'Emece', 25.33);
INSERT INTO libros
	VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);
INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',15);

GO

-- Recuperamos los registros ordenados por el título:
SELECT * FROM libros ORDER BY titulo;

-- Ordenamos los registros por el campo "precio", referenciando el campo
-- por su posición en la lista de selección:
SELECT titulo, autor, precio FROM libros ORDER BY 3;

-- Los ordenamos por "editorial", de mayor a menor empleando "desc":
SELECT * FROM libros ORDER BY editorial DESC;

-- Ordenamos por dos campos:
SELECT * FROM libros ORDER BY titulo, editorial;

-- Ordenamos en distintos sentidos:
SELECT * FROM libros ORDER BY titulo ASC, editorial DESC;

-- Ordenamos por un campo que no se lista en la selección:
SELECT titulo, autor FROM libros ORDER BY precio;

-- Ordenamos por un valor calculado:
SELECT titulo, autor, editorial, precio * 1.1 AS 'precio con descuento'
	FROM libros ORDER BY 4;
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY PRIMARY KEY,
	titulo VARCHAR(40) NOT NULL,
	autor VARCHAR(20) DEFAULT 'Desconocido',
	editorial VARCHAR(20),
	precio DECIMAL(6,2),
	cantidad TINYINT DEFAULT 0
);

GO

INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES ('El aleph', 'Borges', 'Emece', 25);
INSERT INTO libros 
	VALUES ('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
	VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

-- Mostramos sólo los 12 primeros caracteres de los títulos de los libros y
-- sus autores, empleando la función "substring()":
SELECT SUBSTRING(titulo, 1, 12) AS titulo, autor
	FROM libros;

-- Mostramos sólo los 12 primeros caracteres de los títulos de los libros y
-- sus autores, ahora empleando la función "left()":
SELECT LEFT(titulo, 12) AS titulo, autor
	FROM libros;

-- Mostramos los títulos de los libros y sus precios convirtiendo este último a cadena
-- de caracteres con un solo decimal, empleando la función "str":
SELECT titulo, STR(precio, 6, 1) AS precio
	FROM libros;

-- Mostramos los títulos de los libros y sus precios convirtiendo este último a cadena
-- de caracteres especificando un solo argumento:
SELECT titulo, STR(precio) AS precio
	FROM libros;

-- Mostramos los títulos, autores y editoriales de todos libros, al último
-- campo lo queremos en mayúsculas:
SELECT titulo, autor, UPPER(editorial) AS editorial
	FROM libros;
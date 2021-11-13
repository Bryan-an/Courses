IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

CREATE TABLE libros(
	codigo INT IDENTITY,
	titulo VARCHAR(40),
	autor VARCHAR(30) NOT NULL DEFAULT 'Desconocido', 
	editorial VARCHAR(20),
	precio DECIMAL(5, 2), 
	cantidad TINYINT DEFAULT 0
);

GO 

-- Ingresamos un registro omitiendo los valores para el campo "autor" y "cantidad":
INSERT INTO libros (titulo, editorial, precio)
	VALUES ('Java en 10 minutos', 'Paidos', 50.40);

SELECT * FROM libros;

-- Si ingresamos un registro sin valor para el campo "precio", 
-- que admite valores nulos, se ingresará "null" en ese campo:
INSERT INTO libros (titulo, editorial)
	VALUES ('Aprenda PHP','Siglo XXI');

SELECT * FROM libros;

-- Visualicemos la estructura de la tabla:
EXEC sp_columns libros;

-- Podemos emplear "default" para dar el valor por defecto a algunos campos:
INSERT INTO libros (titulo, autor, precio, cantidad)
	VALUES ('El gao con botas', DEFAULT, DEFAULT, 100);

SELECT * FROM libros;

-- Como todos los campos de "libros" tienen valores predeterminados, podemos tipear:
INSERT INTO libros DEFAULT VALUES;

SELECT * FROM libros;

-- Podemos ingresar el valor "null" en el campo "cantidad":
INSERT INTO libros (titulo, autor, cantidad)
	VALUES ('Alicia en el pais de las maravillas', 'Lewis Carroll', NULL);

SELECT * FROM libros;